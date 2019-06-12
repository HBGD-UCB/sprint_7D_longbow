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

**Outcome Variable:** haz

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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen      n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm           29     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm           144     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm        84     257
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm           34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm            80     191
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm        77     191
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm           25     206
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm           107     206
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm        74     206
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm           38     173
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm            69     173
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm        66     173
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm           34     287
Birth       ki0047075b-MAL-ED          PERU                           <48 cm           142     287
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm       111     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm           47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm           112     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm       103     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm           15     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm            57     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm        51     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            37      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40      90
Birth       ki1000108-IRC              INDIA                          >=50 cm          142     388
Birth       ki1000108-IRC              INDIA                          <48 cm           108     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm       138     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm            1       2
Birth       ki1000109-EE               PAKISTAN                       <48 cm             1       2
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm         0       2
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm            3       7
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm             2       7
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm         2       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           124     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm        54     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm            7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm            11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm            3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm            14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm        10      27
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm          763    1541
Birth       ki1101329-Keneba           GAMBIA                         <48 cm           283    1541
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm       495    1541
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm            2      13
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm             9      13
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm         2      13
Birth       ki1114097-CMIN             BRAZIL                         >=50 cm           63     115
Birth       ki1114097-CMIN             BRAZIL                         <48 cm            16     115
Birth       ki1114097-CMIN             BRAZIL                         [48-50) cm        36     115
Birth       ki1114097-CMIN             PERU                           >=50 cm           10      10
Birth       ki1114097-CMIN             PERU                           <48 cm             0      10
Birth       ki1114097-CMIN             PERU                           [48-50) cm         0      10
Birth       ki1114097-CONTENT          PERU                           >=50 cm            1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm             1       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm         0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12617   13884
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           147   13884
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         4107   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          4396   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5327   13830
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          437     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           163     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       252     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1426    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2774    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2440    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           762    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1159    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          957   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         14305   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4351   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm           36     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           599     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       187     822
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm           15     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm            47     102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm        40     102
6 months    ki1000108-IRC              INDIA                          >=50 cm          142     389
6 months    ki1000108-IRC              INDIA                          <48 cm           109     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm       138     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm           22      89
6 months    ki1000109-EE               PAKISTAN                       <48 cm            42      89
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm        25      89
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm            4      17
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm             6      17
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm         7      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           709    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       419    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           25     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm            83     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        70     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          140     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       237     583
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
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14296   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2405    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2583    8206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3218    8206
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           133     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1330    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2530    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2275    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          990    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1034    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2426   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10293   16508
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3789   16508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1923    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4020
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm           20     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm            62     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm        55     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm          139     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm           206     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm       232     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm          128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm           200     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm       186     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm          535    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm           196    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm       334    1065
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm            0       1
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm             1       1
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm         0       1
24 months   ki1114097-CMIN             PERU                           >=50 cm            3       4
24 months   ki1114097-CMIN             PERU                           <48 cm             1       4
24 months   ki1114097-CMIN             PERU                           [48-50) cm         0       4
24 months   ki1114097-CONTENT          PERU                           >=50 cm            1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm             1       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm         0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3683    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       308    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           52     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           260     449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       137     449
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          264     562
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           121     562
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       177     562
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1047    4761
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1937    4761
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1777    4761
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          897    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           604    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       941    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1171    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5293    8444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1980    8444
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1077    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1944    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       966    3987


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/3f627a3a-51a2-471a-bc3e-58b600c28e9c/ac539501-163e-4cc3-a9a0-e7c7c3baf0a5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.4788166    0.3802546    0.5773787
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7768263    0.6117676    0.9418850
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.4526250    0.3124621    0.5927879
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.5617219    0.4650157    0.6584282
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2927714    0.1160672    0.4694756
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7256513    0.5593550    0.8919475
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6102009    0.2485483    0.9718534
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2644545    0.0165947    0.5123144
Birth       ki1000108-IRC              INDIA                          optimal              observed           1.2579745    1.0777647    1.4381842
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.5555376    0.4256700    0.6854053
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.8202067    0.5704413    1.0699722
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.9766094    0.9224228    1.0307960
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.8352399    0.6880107    0.9824691
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.5130958    1.3808848    1.6453068
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.8270182    0.8041243    0.8499121
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           1.0492453    0.9825160    1.1159747
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.8372180    0.8007026    0.8737335
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.7910097    0.7566009    0.8254185
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.6539775    0.5935715    0.7143835
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.4491936    0.2452880    0.6530992
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2429724   -0.4442814   -0.0416634
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6559992    0.2974848    1.0145136
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2979808   -0.5186549   -0.0773066
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2062078    0.0087870    0.4036286
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7783903   -1.0541157   -0.5026649
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4732284   -0.7939663   -0.1524906
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2494830   -0.7937392    0.2947732
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0269975   -1.4542517   -0.5997433
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7526566   -0.9631885   -0.5421247
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.3973022   -1.7726084   -1.0219961
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5828597   -0.7654615   -0.4002580
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3693572   -0.7446860    0.0059716
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3191327   -0.4560880   -0.1821773
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4108763   -0.5198313   -0.3019212
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.5422231   -0.6206821   -0.4637641
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.4134501   -0.6861544   -0.1407458
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2097684    0.1027603    0.3167766
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4843637   -0.5292437   -0.4394836
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2362094   -1.3270976   -1.1453212
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1363044   -0.1902207   -0.0823882
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6230616   -0.6856294   -0.5604939
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5779327   -0.6267787   -0.5290867
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.9376544   -1.0086857   -0.8666232
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2957065   -1.4985285   -1.0928846
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5425553   -0.1154045    1.2005151
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1960345   -1.4439239   -0.9481450
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6933990   -0.9564416   -0.4303564
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6062297   -1.8916792   -1.3207802
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.3434561   -1.6643927   -1.0225195
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.7306990   -2.0532067   -1.4081914
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2472333   -2.7238902   -1.7705765
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.5913671   -1.7534694   -1.4292647
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1624757   -1.6345329   -0.6904184
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0031000   -1.1514015   -0.8547985
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9296214   -1.0534093   -0.8058335
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2801670   -1.3663404   -1.1939936
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0831873   -0.3877863    0.2214116
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.8746428   -2.2314337   -1.5178520
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.4468950   -2.5639076   -2.3298823
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.1598427   -1.2285465   -1.0911390
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9346982   -2.0042221   -1.8651744
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4548442   -1.5239214   -1.3857671
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4690503   -1.5354565   -1.4026441


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747407   -1.5944667   -1.5550147
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2022650   -1.3221143   -1.0824156
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0285067   -0.1269738    0.1839873
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2237306   -1.3563024   -1.0911587
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5539669   -0.6835584   -0.4243753
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3183014   -1.4284232   -1.2081796
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0867445   -1.2250027   -0.9484864
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2464426   -1.4177169   -1.0751682
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.2850327   -1.5453313   -1.0247341
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2263582   -1.3620220   -1.0906944
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2224719   -2.4728598   -1.9720840
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4030363   -1.4821426   -1.3239299
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4277434   -1.5827644   -1.2727225
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9034101   -0.9602836   -0.8465366
6 months    ki1114097-CMIN             BRAZIL                         observed             observed          -0.6919231   -0.9005727   -0.4832735
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8901030   -0.9161931   -0.8640129
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.7553052   -1.8330182   -1.6775923
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9973610   -1.0266429   -0.9680792
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1429137   -1.1848624   -1.1009651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3106391   -1.3337645   -1.2875137
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3464316   -1.3887462   -1.3041170
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9335507   -2.0606304   -1.8064710
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.0454676   -0.2306672    0.1397320
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8062772   -1.9488106   -1.6637437
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2952424   -1.4309104   -1.1595745
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7348953   -1.8589497   -1.6108409
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6101741   -1.7576350   -1.4627133
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.4650971   -2.6626390   -2.2675551
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.4847115   -2.6420148   -2.3274082
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7718205   -1.8683675   -1.6752735
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2364903   -2.4267511   -2.0462295
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5419019   -1.6041979   -1.4796059
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4044989   -2.5203692   -2.2886286
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8321530   -2.9208502   -2.7434558
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9065763   -1.9410803   -1.8720724
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3915397   -2.4363201   -2.3467593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0116189   -2.0393361   -1.9839017
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7492977   -1.7876816   -1.7109138


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.5632135   -1.7178041   -1.4086230
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -1.5377687   -1.7477005   -1.3278369
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4632561   -1.6477860   -1.2787262
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2706237   -1.4433250   -1.0979223
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2250014   -1.4237359   -1.0262669
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4522543   -1.6377050   -1.2668036
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5440220   -1.9309746   -1.1570694
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2298990   -1.5269863   -0.9328117
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.5660157   -1.7516225   -1.3804089
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.9501900   -2.2171916   -1.6831885
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3494924   -1.7430203   -0.9559646
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9424627   -1.0070368   -0.8778887
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.7775877   -0.9809724   -0.5742031
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1876183   -0.2308287   -0.1444078
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3279842   -1.3534751   -1.3024934
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9195153   -1.0071286   -0.8319020
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.5071141   -1.5480934   -1.4661348
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0400589   -1.0828693   -0.9972484
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.2287182   -2.2932373   -2.1641992
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.9468578   -2.1587883   -1.7349273
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9592926   -1.1695773   -0.7490078
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6274925   -0.9638978   -0.2910872
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9257498   -1.1591909   -0.6923087
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7601746   -0.9584670   -0.5618823
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5399111   -0.8033986   -0.2764237
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6135161   -0.9072025   -0.3198297
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9969596   -1.5150663   -0.4788529
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2580352   -0.5931592    0.0770889
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4737016   -0.6481089   -0.2992942
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8251697   -1.1948842   -0.4554552
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8201765   -0.9989393   -0.6414137
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0583863   -1.4092847   -0.7074878
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7679714   -0.8933714   -0.6425713
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7878021   -0.8958655   -0.6797386
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3611870   -0.4183582   -0.3040158
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.2784730   -0.4607206   -0.0962254
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1027698   -0.1410088   -0.0645309
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4057393   -0.4447523   -0.3667263
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5190958   -0.5952298   -0.4429619
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8610566   -0.9117538   -0.8103594
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5198521   -0.5728160   -0.4668882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7327064   -0.7758542   -0.6895586
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4087772   -0.4704475   -0.3471068
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6378442   -0.8540733   -0.4216151
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5880229   -1.1910743    0.0150285
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6102427   -0.8693551   -0.3511303
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6018434   -0.8428323   -0.3608546
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1286656   -0.3966577    0.1393265
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2667180   -0.5572127    0.0237766
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7343981   -1.0828675   -0.3859286
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2374782   -0.6772863    0.2023299
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1804535   -0.3090179   -0.0518890
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0740146   -1.5177063   -0.6303229
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5830179   -0.7186149   -0.4474208
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4999117   -0.6214566   -0.3783667
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2617349   -0.3231844   -0.2002854
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0482175   -0.0909055   -0.0055294
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5298561   -0.8638513   -0.1958608
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3852580   -0.4780754   -0.2924407
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.7467336   -0.8091696   -0.6842976
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4568415   -0.5141817   -0.3995013
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5567747   -0.6200794   -0.4934699
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2802474   -0.3376533   -0.2228414
