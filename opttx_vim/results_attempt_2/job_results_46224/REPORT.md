---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen      n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           29     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm           128     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        84     241
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            73     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        76     183
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm           25     203
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm           104     203
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        74     203
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm           38     168
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            64     168
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     168
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           34     279
Birth       ki0047075b-MAL-ED          PERU                           <48 cm           134     279
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm       111     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           46     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm           109     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm       103     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            52     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           12      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            32      84
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      84
Birth       ki1000108-IRC              INDIA                          >=50 cm          120     343
Birth       ki1000108-IRC              INDIA                          <48 cm            87     343
Birth       ki1000108-IRC              INDIA                          [48-50) cm       136     343
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            0       1
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1       1
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0       1
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            3       6
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             1       6
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         2       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            2      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm            33      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm        26      61
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm            11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm            10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm        10      23
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          715    1423
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           251    1423
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       457    1423
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2       8
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             4       8
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         2       8
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm           63     111
Birth       ki1114097-CMIN             BRAZIL                         <48 cm            12     111
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm        36     111
Birth       ki1114097-CMIN             PERU                           >=50 cm           10      10
Birth       ki1114097-CMIN             PERU                           <48 cm             0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm         6162    6739
Birth       ki1119695-PROBIT           BELARUS                        <48 cm            69    6739
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm       508    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         3996   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          3641   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5279   12916
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          202     375
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm            67     375
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       106     375
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1404    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2354    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2435    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1110    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           651    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1138    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          454    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5216    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      2017    7687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm            8     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           122     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm        55     185
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           29     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm           122     234
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        83     234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm           30     173
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm            69     173
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        74     173
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm           24     193
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm           101     193
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm        68     193
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm           38     171
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm            67     171
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     171
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm           30     261
6 months    ki0047075b-MAL-ED          PERU                           <48 cm           132     261
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm        99     261
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           39     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            86     214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        89     214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           14     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            54     119
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           15     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            48     103
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     103
6 months    ki1000108-IRC              INDIA                          >=50 cm          141     389
6 months    ki1000108-IRC              INDIA                          <48 cm           110     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           22      90
6 months    ki1000109-EE               PAKISTAN                       <48 cm            43      90
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        25      90
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            4      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm           49     409
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           222     409
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       138     409
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           25     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm            83     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        70     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          140     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       236     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           270     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       281     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm          677    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm           234    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm       436    1347
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
6 months    ki1114097-CMIN             BRAZIL                         >=50 cm           58     104
6 months    ki1114097-CMIN             BRAZIL                         <48 cm            13     104
6 months    ki1114097-CMIN             BRAZIL                         [48-50) cm        33     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >=50 cm            0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  <48 cm             1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  [48-50) cm         1       2
6 months    ki1114097-CMIN             PERU                           >=50 cm           12      14
6 months    ki1114097-CMIN             PERU                           <48 cm             1      14
6 months    ki1114097-CMIN             PERU                           [48-50) cm         1      14
6 months    ki1114097-CONTENT          PERU                           >=50 cm            1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm             1       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm         0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm         6990    7664
6 months    ki1119695-PROBIT           BELARUS                        <48 cm            83    7664
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm       591    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2392    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2582    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3201    8175
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          174     329
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm            61     329
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm        94     329
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1329    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2527    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2271    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          989    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1033    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1165    8156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5225    8156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1766    8156
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          302    1046
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           477    1046
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       267    1046
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           28     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm           102     207
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        77     207
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm           21     139
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm            57     139
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        61     139
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm           23     184
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm            95     184
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm        66     184
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm           36     165
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm            65     165
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm        64     165
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm           23     191
24 months   ki0047075b-MAL-ED          PERU                           <48 cm           100     191
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm        68     191
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           35     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm            83     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm        83     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           12     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            49     103
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        42     103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           15     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            49     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     104
24 months   ki1000108-IRC              INDIA                          >=50 cm          142     390
24 months   ki1000108-IRC              INDIA                          <48 cm           110     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm       138     390
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           20     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm            62     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        54     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       233     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1066
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           197    1066
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1066
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm            3       4
24 months   ki1114097-CMIN             PERU                           <48 cm             1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         1476    1589
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            15    1589
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm        98    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           42     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           250     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       125     417
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          126     264
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm            55     264
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm        83     264
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1035    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1928    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1759    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          895    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           609    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       942    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          577    4190
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          2678    4190
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm       935    4190
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm          297    1051
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           497    1051
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       257    1051


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1c1f6ac1-0761-402d-8c7c-7caf15c38e78/20c0c240-ce8b-4ef9-a1b1-408308fc48c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8878406   -1.0856071   -0.6900741
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6911764    0.4255755    0.9567772
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2297042   -1.5033088   -0.9560997
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8047094   -1.0455760   -0.5638428
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0113082   -0.1833658    0.1607495
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1873665   -0.0486938    0.4234269
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3216195    1.0339078    1.6093312
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6994152   -1.2026793   -0.1961511
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0684932   -0.4220789    0.2850925
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4225901   -1.6801162   -1.1650640
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.9553616    1.7823349    2.1283883
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.0814044   -0.4858250    0.6486337
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0645894   -0.0164375    0.1456162
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0587660    0.0094366    0.1080953
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.6996202   -1.0351983   -0.3640422
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7717488   -0.8223396   -0.7211580
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3733531   -0.4787104   -0.2679959
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7299956   -0.7603978   -0.6995933
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2081937   -0.3946553   -0.0217322
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0032451   -0.2415533    0.2350631
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0093228    0.6172311    1.4014145
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7889828   -1.0059426   -0.5720230
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0992561   -0.1157520    0.3142642
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1803515    0.8964015    1.4643015
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6860539    0.3668562    1.0052516
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0843359    0.7586120    1.4100597
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2308342   -1.1623986    1.6240669
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4976908   -0.7725661   -0.2228155
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.9936640   -1.4007886   -0.5865394
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7379860   -1.0298783   -0.4460937
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0569102   -0.4758307    0.3620104
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1497264   -0.0281494    0.3276023
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1511269   -0.0129572    0.3152109
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1425905   -0.2466627   -0.0385183
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed           0.6984048   -0.1322338    1.5290433
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5364389    0.4386159    0.6342620
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3991925    0.3513685    0.4470165
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2171481    0.0389939    0.3953022
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4731269   -0.5320111   -0.4142427
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2519099   -0.3182764   -0.1855433
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4418158   -0.5061402   -0.3774913
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2046511   -0.3294716   -0.0798307
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9052034   -1.2235187   -0.5868880
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8865604    0.4715787    1.3015422
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4716568   -0.8152150   -0.1280986
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2637544   -0.5294847    0.0019759
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.5556030    0.2714257    0.8397802
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6577038    0.3606967    0.9547109
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1626841   -0.2115795    0.5369478
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0046388   -0.4564236    0.4471459
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7364165   -0.8867721   -0.5860609
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5205688   -0.9924425   -0.0486951
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6261880   -0.8052370   -0.4471390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3817448   -0.5657163   -0.1977733
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6645773   -0.7477958   -0.5813587
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8925451    0.7871500    0.9979401
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0676234   -1.1920948   -0.9431520
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2806690   -0.4109668   -0.1503712
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2803155   -0.3428321   -0.2177989
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4426728   -0.5002264   -0.3851192
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0460476   -1.1390565   -0.9530387
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0464275   -1.1696569   -0.9231981


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4259524   -0.7275464   -0.1243584
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2627733   -1.4008778   -1.1246688
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7667165   -0.7936151   -0.7398180
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.2903784   -0.4497929   -0.1309639
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1381446   -0.2698274   -0.0064617
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9172158    0.7408430    1.0935886
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6539378   -0.7880250   -0.5198506
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0863255   -0.0667534    0.2394044
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0566794    0.9305522    1.1828067
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5253505    0.3664313    0.6842696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5403221    0.3393901    0.7412542
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5067476   -0.8037126   -0.2097826
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.6409340   -0.7788045   -0.5030635
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7767222   -0.9717281   -0.5817164
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7955012   -0.9969465   -0.5940559
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1974883   -0.2592505   -0.1357261
6 months    ki1114097-CMIN             BRAZIL                         observed             observed           0.5720192    0.3533308    0.7907076
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3029352    0.2767363    0.3291340
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0831915   -0.0479690    0.2143520
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6983940   -0.7275858   -0.6692022
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2943461   -0.3357404   -0.2529517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5904696   -0.6181243   -0.5628149
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3496224   -0.4302398   -0.2690049
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8089372   -0.9318210   -0.6860534
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3865827    0.1742997    0.5988658
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9355163   -1.0663799   -0.8046527
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4439697   -0.5820767   -0.3058627
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1284293    0.0027575    0.2541011
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3791791    0.2503298    0.5080284
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1162621   -0.0590516    0.2915759
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4481571   -0.6325044   -0.2638097
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7536624   -0.8467166   -0.6606082
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.8657047   -1.0392127   -0.6921966
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7949018   -0.8551887   -0.7346150
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1795683   -1.2807691   -1.0783676
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.4895076   -0.5922153   -0.3867999
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945743   -0.6244188   -0.5647299
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6103189   -0.6471371   -0.5735006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2920263   -1.3243461   -1.2597064
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2352617   -1.3011948   -1.1693285


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0752300   -0.2312443    0.0807844
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2872966   -0.5005621   -0.0740311
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1605909   -0.0819613    0.4031432
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0997549   -0.2815578    0.0820480
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0622761   -0.1826592    0.0581070
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2436456   -0.4344154   -0.0528759
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5283992   -0.7728200   -0.2839783
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2734628   -0.2067861    0.7537117
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9420899   -1.2541791   -0.6300006
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0013385   -0.3913571    0.3886802
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2517424   -0.4032796   -0.1002053
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.2146476   -0.7262230    0.2969278
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2523160   -1.6055964   -0.8990357
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5739084   -0.6155505   -0.5322663
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5631531   -0.8674987   -0.2588075
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2129969   -0.2520113   -0.1739825
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3693719   -0.4602273   -0.2785166
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0367210   -0.0529101   -0.0205318
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0821847   -0.2077689    0.0433996
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1348995   -0.3202262    0.0504273
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0921070   -0.4373814    0.2531674
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1350450   -0.0753933    0.3454832
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0129305   -0.2120151    0.1861541
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1236721   -0.3685430    0.1211989
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1607034   -0.4628672    0.1414604
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5440137   -0.8291739   -0.2588536
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7375817   -1.9822700    0.5071065
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1432432   -0.3682788    0.0817924
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.2169418   -0.0949030    0.5287865
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0575152   -0.3101127    0.1950822
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4265683   -0.8184117   -0.0347248
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3580970   -0.5122425   -0.2039515
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1213646   -0.2554303    0.0127011
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0548978   -0.1431061    0.0333105
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1263855   -0.8848239    0.6320528
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0445677   -0.0619579    0.1510933
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0962573   -0.1368790   -0.0556356
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1339566   -0.2764337    0.0085205
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2252671   -0.2785405   -0.1719937
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0424362   -0.0961207    0.0112484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1486538   -0.2061120   -0.0911957
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1449712   -0.2538089   -0.0361336
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0962662   -0.1952452    0.3877775
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.4999777   -0.8768004   -0.1231550
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4638595   -0.7905329   -0.1371861
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1802153   -0.4223506    0.0619200
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4271737   -0.7081633   -0.1461840
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2785247   -0.5537197   -0.0033297
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0464220   -0.4153062    0.3224622
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4435182   -0.8689817   -0.0180547
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0172459   -0.1397337    0.1052419
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3451359   -0.7839224    0.0936506
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2617532   -0.4161938   -0.1073125
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2286054   -0.3867612   -0.0704496
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1303245   -0.1910708   -0.0695783
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0863850   -0.1662801   -0.0064899
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1119449   -0.1974392   -0.0264507
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2088386   -0.3209871   -0.0966901
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3142588   -0.3696621   -0.2588556
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1676461   -0.2150675   -0.1202248
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2459786   -0.3334117   -0.1585456
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1888342   -0.2863820   -0.0912863
