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
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm            9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm           103     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm        54     166
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
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm        12564   13824
Birth       ki1119695-PROBIT           BELARUS                        <48 cm           140   13824
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm      1120   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         3996   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          3641   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      5279   12916
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm          396     756
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm           132     756
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm       228     756
Birth       ki1135781-COHORTS          INDIA                          >=50 cm         1404    6193
Birth       ki1135781-COHORTS          INDIA                          <48 cm          2354    6193
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm      2435    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm         1110    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm           651    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1138    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm          946   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10421   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      4342   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm           36     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm           460     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       187     683
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm          196    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm           708    1322
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm       418    1322
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
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm        14292   15757
6 months    ki1119695-PROBIT           BELARUS                        <48 cm           172   15757
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm      1293   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm         2392    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm          2582    8175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm      3201    8175
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm          351     689
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm           134     689
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm       204     689
6 months    ki1135781-COHORTS          INDIA                          >=50 cm         1329    6127
6 months    ki1135781-COHORTS          INDIA                          <48 cm          2527    6127
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm      2271    6127
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm          989    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm           677    2699
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm      1033    2699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         2423   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm         10282   16480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      3775   16480
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1101    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1927    4024
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       996    4024
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
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm         3623    3971
24 months   ki1119695-PROBIT           BELARUS                        <48 cm            44    3971
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm       304    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm           42     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm           250     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm       125     417
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm          264     564
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm           122     564
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm       178     564
24 months   ki1135781-COHORTS          INDIA                          >=50 cm         1035    4722
24 months   ki1135781-COHORTS          INDIA                          <48 cm          1928    4722
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm      1759    4722
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm          895    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm           609    2446
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm       942    2446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm         1166    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm          5277    8415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm      1972    8415
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm         1074    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm          1937    3974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm       963    3974


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
![](/tmp/f1ec3d6b-6f1f-4fe6-824b-3e09dbcaa1f7/6bd8f453-d52b-4fac-a08b-7bd5ccf8c056/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9133817   -1.1071612   -0.7196023
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7234494    0.4598308    0.9870679
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2354522   -1.5305596   -0.9403449
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6463407   -0.8893560   -0.4033253
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0105772   -0.1803562    0.1592018
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1547267   -0.0762552    0.3857086
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3133951    1.0365611    1.5902291
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0584245   -0.8433845    0.7265356
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1335397   -0.4899492    0.2228698
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0805602   -0.5013385    0.3402180
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0693097   -1.4937191   -0.6449002
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.9936613    1.8233380    2.1639847
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.0308762   -0.4644790    0.5262313
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0943450    0.0089461    0.1797439
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0472975   -0.0023397    0.0969346
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2435768   -0.5038999    0.0167463
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7757369   -0.8266306   -0.7248431
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3528550   -0.4570530   -0.2486569
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6908940   -0.7198152   -0.6619727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3675058   -0.4792694   -0.2557422
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0315677   -0.2039102    0.2670456
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0918118    0.7116602    1.4719634
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7894793   -1.0337298   -0.5452287
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0519418   -0.1983999    0.3022835
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0939754    0.8184023    1.3695486
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4940047    0.1847836    0.8032257
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1288685    0.8149718    1.4427651
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0134915   -1.1492576    1.1222746
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4555216   -0.7263773   -0.1846659
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.9094629   -1.2598128   -0.5591130
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6073841   -0.7732246   -0.4415437
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0947831   -0.4972731    0.3077070
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1485155   -0.0308833    0.3279143
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1747988    0.0104609    0.3391367
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1313317   -0.2421056   -0.0205577
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed           1.1958411    0.3126116    2.0790706
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5588691    0.4898992    0.6278391
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4010465    0.3529439    0.4491491
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3063970    0.1816285    0.4311655
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4727503   -0.5314574   -0.4140433
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2375239   -0.3029956   -0.1720522
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4823349   -0.5308987   -0.4337710
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3127878   -0.3848138   -0.2407617
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7905541   -1.0768714   -0.5042368
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9764589    0.5535599    1.3993580
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4868656   -0.8666254   -0.1071059
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2636253   -0.5188799   -0.0083707
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.5265220    0.2308496    0.8221943
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6297670    0.3344843    0.9250497
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3457332   -0.1089376    0.8004040
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0206058   -0.5397673    0.4985557
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6895949   -0.8500595   -0.5291304
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4532202   -0.9414769    0.0350365
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6191730   -0.7959840   -0.4423621
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4996018   -0.6908164   -0.3083873
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6633220   -0.7465080   -0.5801360
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6679487    0.5552620    0.7806354
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0649682   -1.1892934   -0.9406429
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0675710   -0.1682436    0.0331016
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2808279   -0.3430638   -0.2185920
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4396956   -0.4969929   -0.3823984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1007794   -1.1639328   -1.0376260
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1137705   -1.1792471   -1.0482939


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6674924   -0.8047012   -0.5302836
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4834785   -0.6351316   -0.3318253
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1974883   -0.2592505   -0.1357261
6 months    ki1114097-CMIN             BRAZIL                         observed             observed           0.5720192    0.3533308    0.7907076
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3029352    0.2767363    0.3291340
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.2193904    0.1338361    0.3049448
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6983940   -0.7275858   -0.6692022
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2943461   -0.3357404   -0.2529517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5925422   -0.6122363   -0.5728481
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3757033   -0.4185197   -0.3328869
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1795683   -1.2807691   -1.0783676
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2016312   -0.2740358   -0.1292266
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5945743   -0.6244188   -0.5647299
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6103189   -0.6471371   -0.5735006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2983351   -1.3215868   -1.2750834
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2411122   -1.2752162   -1.2070083


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0496888   -0.2048620    0.1054844
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3195696   -0.5353199   -0.1038192
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1663389   -0.0954566    0.4281345
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2581236   -0.4423463   -0.0739009
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0630070   -0.1813976    0.0553835
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2110058   -0.3824073   -0.0396044
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5201747   -0.7581565   -0.2821929
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3675279   -1.0795618    0.3445060
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8770434   -1.1903222   -0.5637646
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1891988   -0.4252457    0.0468481
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3546189   -0.7824687    0.0732309
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2900422   -0.4389413   -0.1411432
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.1641194   -0.6256569    0.2974181
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2406919   -1.4625730   -1.0188108
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5624399   -0.6043669   -0.5205129
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.8185660   -1.0531490   -0.5839830
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2090088   -0.2483584   -0.1696592
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3898701   -0.4796147   -0.3001255
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0332056   -0.0530591   -0.0133521
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0008104   -0.0763685    0.0747476
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1697123   -0.3545919    0.0151673
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1745960   -0.5056680    0.1564760
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1355414   -0.0997752    0.3708581
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0343837   -0.1741737    0.2429412
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0372960   -0.2765700    0.2019780
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0313458   -0.2555915    0.3182831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5885463   -0.8699449   -0.3071478
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4932561   -1.5017609    0.5152488
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1854124   -0.4117207    0.0408958
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.1327407   -0.1574024    0.4228838
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0601083   -0.1705132    0.0502966
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3886954   -0.7649141   -0.0124766
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3568860   -0.5126301   -0.2011420
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1450366   -0.2794112   -0.0106619
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0661566   -0.1611306    0.0288173
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.6238218   -1.4666851    0.2190414
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0200942   -0.0296176    0.0698060
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0981114   -0.1390273   -0.0571954
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0870066   -0.1880143    0.0140011
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2256437   -0.2787954   -0.1724919
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0568222   -0.1101541   -0.0034902
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1102073   -0.1542383   -0.0661764
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0629155   -0.1222849   -0.0035461
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0183831   -0.2558986    0.2191324
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5898762   -0.9729033   -0.2068491
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4486507   -0.8092280   -0.0880733
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1803444   -0.4200504    0.0593615
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3980926   -0.6905847   -0.1056006
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2505879   -0.5243950    0.0232192
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2294711   -0.6760523    0.2171102
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4275513   -0.9156223    0.0605198
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0640674   -0.1913545    0.0632196
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4124844   -0.8664332    0.0414643
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2687682   -0.4211883   -0.1163481
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1107484   -0.2702661    0.0487694
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1315798   -0.1921946   -0.0709651
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0183948   -0.0502847    0.0870743
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1146002   -0.1998941   -0.0293063
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1340602   -0.2121004   -0.0560201
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3137464   -0.3689505   -0.2585424
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1706233   -0.2179247   -0.1233218
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1975557   -0.2570897   -0.1380217
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1273417   -0.1836307   -0.0710527
