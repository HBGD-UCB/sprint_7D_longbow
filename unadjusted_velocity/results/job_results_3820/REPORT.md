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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mhtcm           n_cell       n
-------------  -------------------------  -----------------------------  -------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            158     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        63     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           103     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             49     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        28     180
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            47     201
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm             96     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        58     201
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            100     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        48     175
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm            56     270
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm            157     270
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        57     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           170     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        25     223
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           139     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             43     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     229
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           437    1075
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            380    1075
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       258    1075
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           103     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            327     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       136     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           137     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            344     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       152     633
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            420     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       166     720
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm           984    1184
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm             44    1184
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       156    1184
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm         12116   12599
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm            115   12599
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       368   12599
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5489    6922
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            402    6922
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1031    6922
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            99     724
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            469     724
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       156     724
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm           514    1721
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm            747    1721
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm       460    1721
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          5976   39926
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          23874   39926
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm     10076   39926
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            149     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        59     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             50     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     208
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            53     228
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm            108     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        67     228
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            130     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     233
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm            57     266
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm            154     266
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           178     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        28     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           142     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             46     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     239
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           423    1037
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            366    1037
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       248    1037
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            93     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            302     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       128     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           126     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            310     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       137     573
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           129     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            405     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       161     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1024    1634
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            253    1634
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       357    1634
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1085    1285
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm             46    1285
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       154    1285
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm         10636   11063
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm            105   11063
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       322   11063
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4271    5388
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            321    5388
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       796    5388
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm           100     796
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            532     796
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm       164     796
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm           516    1747
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm            765    1747
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm       466    1747
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          3950   25094
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          14706   25094
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      6438   25094
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            143     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        54     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           110     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             47     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     194
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            52     223
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm            108     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            39     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            129     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62     230
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm            52     236
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm            136     236
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        48     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           171     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             30     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     228
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           128     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             44     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     223
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           445    1043
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            349    1043
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       249    1043
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            66     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            177     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        89     332
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            90     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            276     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       116     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           117     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            301     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       127     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           125     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            390     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       161     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           677    1067
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            159    1067
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       231    1067
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1026    1215
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm             44    1215
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       145    1215
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            28     158
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             94     158
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        36     158
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm         10394   10808
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm            104   10808
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       310   10808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          3263    4144
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            266    4144
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       615    4144
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           111     850
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            563     850
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       176     850
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm           447    1509
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm            662    1509
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm       400    1509
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           498    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1222    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       699    2419
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           268     433
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm             71     433
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm        94     433
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          3003   19605
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          11579   19605
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      5023   19605
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            133     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            91     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     165
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            52     224
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     224
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            127     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     226
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            44     191
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm            109     191
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        38     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           173     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             26     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     226
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           122     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             38     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     207
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            76     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            247     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm        98     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm            97     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            258     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       103     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm            94     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            278     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       123     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1       2
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm           948    1125
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm             32    1125
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       145    1125
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          2418    2520
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm             23    2520
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm        79    2520
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           197     269
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             25     269
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        47     269
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           111     839
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            550     839
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       178     839
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm           435    1458
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm            640    1458
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       383    1458
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           469    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1143    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       648    2260
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           191     309
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             51     309
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        67     309
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1388    9261
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5460    9261
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2413    9261


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6d0ecd2d-abd4-4552-a3eb-7584552737f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6d0ecd2d-abd4-4552-a3eb-7584552737f8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                3.6693863   3.5205825   3.8181901
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                3.5190402   3.4381023   3.5999781
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                3.6361313   3.5171972   3.7550655
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                4.0781556   3.9463231   4.2099881
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                3.9733998   3.7752921   4.1715074
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                4.0867227   3.8216096   4.3518358
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                3.6332174   3.4849380   3.7814967
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                3.5177005   3.3943849   3.6410162
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                3.6276936   3.4949169   3.7604702
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                3.9856089   3.8147619   4.1564559
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                3.7286084   3.6292031   3.8280137
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                3.9190434   3.7728571   4.0652297
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                3.3006721   3.1651257   3.4362186
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                3.3324899   3.2495248   3.4154550
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                3.2903689   3.1483978   3.4323400
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                3.4852624   3.3807118   3.5898130
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                3.2820775   2.9909503   3.5732047
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                3.4325142   3.2321737   3.6328547
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                3.4543535   3.3509302   3.5577767
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                3.4737560   3.3196994   3.6278126
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                3.5697969   3.4047782   3.7348157
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                3.6679065   3.6161424   3.7196705
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                3.5349092   3.4773412   3.5924772
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                3.5901844   3.5287351   3.6516337
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                3.4182375   3.2708147   3.5656602
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                3.2417987   3.1734522   3.3101452
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                3.4041851   3.2959489   3.5124213
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                3.6453720   3.5621898   3.7285543
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                3.4191403   3.3654225   3.4728582
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                3.4863439   3.4134712   3.5592166
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                3.3729907   3.2843015   3.4616799
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                3.2749653   3.2238121   3.3261186
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                3.3168496   3.2431912   3.3905080
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                3.1470743   3.0952896   3.1988591
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.8450567   2.5131912   3.1769222
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                3.1222482   2.9660818   3.2784147
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.8412193   2.7259443   2.9564943
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                2.6166018   2.4941453   2.7390583
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.7906325   2.6653794   2.9158857
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                3.3915134   3.3664992   3.4165275
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                3.1467118   3.0567245   3.2366991
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                3.2225956   3.1667770   3.2784143
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                2.7427383   2.6282694   2.8572072
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                2.5899865   2.5380860   2.6418870
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                2.6010364   2.4943063   2.7077665
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                3.6140379   3.5627844   3.6652913
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                3.4916544   3.4469119   3.5363969
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                3.5367128   3.4833101   3.5901155
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                3.8016897   3.7786183   3.8247611
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                3.6857390   3.6736535   3.6978244
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                3.7469918   3.7289432   3.7650404
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                2.0453692   1.9207186   2.1700199
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.9413471   1.8803711   2.0023231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.8487196   1.7468254   1.9506138
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                2.1326261   2.0266997   2.2385524
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                2.0839243   1.9368069   2.2310417
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                2.2838289   2.0940280   2.4736298
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.9077383   1.7766472   2.0388293
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.8415308   1.7491139   1.9339477
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.9216784   1.8207470   2.0226097
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.9454994   1.8162643   2.0747345
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.9485755   1.8759479   2.0212031
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                2.0239821   1.9072200   2.1407442
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                2.0061855   1.8331977   2.1791733
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.9792116   1.9001976   2.0582256
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                2.1384494   1.9991709   2.2777280
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.9649911   1.8697276   2.0602546
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.9834059   1.7971303   2.1696816
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                2.0051618   1.7522701   2.2580534
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8561149   1.7689174   1.9433124
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7366617   1.5600168   1.9133066
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.8418982   1.7153581   1.9684382
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.9850878   1.9289386   2.0412371
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.9249113   1.8463366   2.0034861
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.9483345   1.8684918   2.0281772
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.8560859   1.7471261   1.9650457
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.8036514   1.7416747   1.8656281
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.8842105   1.7808008   1.9876202
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.9830696   1.9048071   2.0613322
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.9699536   1.9230243   2.0168828
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.9388734   1.8674723   2.0102745
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.9988685   1.9145626   2.0831744
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.9956349   1.9478969   2.0433728
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                2.0369127   1.9613948   2.1124306
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8113101   1.7656628   1.8569574
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7860791   1.6862687   1.8858894
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.7668182   1.6954839   1.8381525
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.9942983   1.9495115   2.0390851
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.0712970   1.8817553   2.2608386
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.9152134   1.8042386   2.0261881
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.0922764   2.0523028   2.1322499
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                2.0301285   1.8911030   2.1691541
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.0627725   1.9600744   2.1654707
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.9856895   1.9624066   2.0089725
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.9231475   1.8437801   2.0025150
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.9763674   1.9217123   2.0310225
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.9033357   1.8088071   1.9978642
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.7397331   1.7030154   1.7764508
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                1.7537324   1.6855729   1.8218919
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.9258400   1.8806119   1.9710680
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                1.8589280   1.8212459   1.8966101
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.8584042   1.8157727   1.9010356
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                1.9682868   1.9441672   1.9924064
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                1.9049243   1.8914490   1.9183997
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                1.9247056   1.9045018   1.9449093
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                1.1123628   1.0444952   1.1802304
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.0987779   1.0690803   1.1284756
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.1566079   1.1018354   1.2113804
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.3961389   1.3386207   1.4536572
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.4335398   1.3303102   1.5367693
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.2972852   1.1903645   1.4042058
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.1150282   1.0595274   1.1705291
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.1470265   1.1064362   1.1876169
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.0754292   1.0213144   1.1295439
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.2716530   1.2112237   1.3320822
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.1974632   1.1624848   1.2324417
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                1.2434714   1.1964191   1.2905237
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.2340949   1.1647622   1.3034276
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.1973607   1.1546000   1.2401214
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                1.2272584   1.1530681   1.3014486
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.2135082   1.1727342   1.2542823
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.1734692   1.0195106   1.3274278
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                1.0336932   0.8893427   1.1780437
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9965559   0.9484423   1.0446695
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.0202324   0.9307151   1.1097497
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.9997254   0.9239915   1.0754593
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.1333589   1.1038821   1.1628356
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.0418374   1.0210479   1.0626269
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.1298622   1.0787202   1.1810041
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.9206983   0.8104769   1.0309198
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                1.0726891   0.9517935   1.1935847
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.9631357   0.8393378   1.0869336
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.2294594   1.1817365   1.2771823
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.1313426   1.1010398   1.1616454
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.2072627   1.1640075   1.2505179
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.2141681   1.1781993   1.2501370
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.1512454   1.1275709   1.1749199
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.1873897   1.1529893   1.2217901
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.2887795   1.2481419   1.3294171
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.2119422   1.1893332   1.2345512
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                1.2202599   1.1843961   1.2561236
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.2110829   1.1840779   1.2380879
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.1493614   1.0937510   1.2049717
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.1831861   1.1361880   1.2301843
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.1795687   1.1592732   1.1998641
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                1.1071177   1.0380934   1.1761420
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.1745526   1.1149671   1.2341382
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.2247741   1.1436962   1.3058520
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                1.0586782   1.0221672   1.0951893
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.0968423   1.0173608   1.1763237
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                1.4731160   1.4349162   1.5113157
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.4924417   1.3594272   1.6254563
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                1.4423714   1.3557538   1.5289889
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.2075282   1.1945546   1.2205018
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.1678228   1.1251200   1.2105257
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.1613434   1.1329182   1.1897685
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.0626921   1.0155893   1.1097949
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.0155021   0.9941308   1.0368735
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.9957486   0.9581950   1.0333022
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.1734997   1.1464922   1.2005073
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                1.0673766   1.0443154   1.0904379
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.0748209   1.0452672   1.1043746
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                1.1092161   1.0816029   1.1368292
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                1.0412001   1.0243024   1.0580977
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                1.0835743   1.0610284   1.1061201
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                1.2984325   1.2661633   1.3307018
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                1.2524479   1.1833928   1.3215029
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.2433787   1.1874159   1.2993414
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                1.1428646   1.1276985   1.1580306
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                1.0932910   1.0847934   1.1017885
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                1.1164377   1.1044512   1.1284243
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.9139570   0.8718469   0.9560670
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8248713   0.8062189   0.8435236
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.8716903   0.8371304   0.9062503
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.9844634   0.9426702   1.0262566
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.9954576   0.9320123   1.0589028
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.9541031   0.8919918   1.0162144
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9341696   0.8999271   0.9684121
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8493043   0.8240059   0.8746027
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8903604   0.8611124   0.9196085
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.8861235   0.8513326   0.9209143
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.8390755   0.8190505   0.8591005
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8936196   0.8640565   0.9231826
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.9061965   0.8643541   0.9480389
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8270573   0.7995330   0.8545816
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.8323698   0.7912011   0.8735386
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.8660966   0.8413366   0.8908567
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8806147   0.8082534   0.9529759
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.9131651   0.8412865   0.9850436
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7906586   0.7598429   0.8214742
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7152102   0.6618574   0.7685630
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7444270   0.6989709   0.7898832
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8036635   0.7703605   0.8369664
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7307008   0.7115798   0.7498217
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7626155   0.7340742   0.7911567
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8829253   0.8569123   0.9089382
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8452891   0.8294573   0.8611209
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8643732   0.8392181   0.8895284
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9185535   0.8931723   0.9439348
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8650899   0.8495595   0.8806202
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.8664193   0.8421876   0.8906511
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.8463737   0.8341968   0.8585506
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7743338   0.7248192   0.8238484
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8453253   0.8194684   0.8711823
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.8619844   0.8071351   0.9168338
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.6481249   0.6014598   0.6947901
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.8457930   0.7563728   0.9352132
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.7025398   0.6707303   0.7343492
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6738316   0.5693477   0.7783154
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7442984   0.6893571   0.7992396
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.8320737   0.8005849   0.8635625
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7694839   0.7564752   0.7824926
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7664867   0.7406340   0.7923395
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.8654269   0.8498584   0.8809953
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.8162542   0.8044779   0.8280304
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.8386953   0.8227483   0.8546422
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.7325849   0.7167537   0.7484162
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.6918810   0.6814345   0.7023275
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7142787   0.7009198   0.7276376
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.8583905   0.8381558   0.8786252
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8042309   0.7525922   0.8558697
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.8178086   0.7858204   0.8497968
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.8287068   0.8160594   0.8413541
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.7862270   0.7794070   0.7930469
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.8021251   0.7928125   0.8114376


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4538369   3.3628913   3.5447825
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6022402   3.5794697   3.6250107
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1325797   3.0832008   3.1819586
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8376915   2.7234792   2.9519038
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3521368   3.3299261   3.3743476
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6132548   2.5694549   2.6570546
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5402494   3.5115937   3.5689050
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7185523   3.7082032   3.7289014
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8804733   1.8192508   1.9416958
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0179168   1.9519428   2.0838909
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9721457   1.8908533   2.0534381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9550595   1.9132701   1.9968488
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654067   1.9302800   2.0005334
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7976828   1.7616152   1.8337503
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9875768   1.9468863   2.0282674
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0908278   2.0500747   2.1315808
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9805863   1.9598899   2.0012827
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7631705   1.7322799   1.7940611
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8785516   1.8544247   1.9026785
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9199731   1.9095005   1.9304457
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2115356   1.1787814   1.2442898
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1869461   1.1457857   1.2281065
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.1018999   1.0898767   1.1139231
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1958459   1.1742218   1.2174700
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1763463   1.1576082   1.1950844
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0968085   1.0636663   1.1299508
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4724201   1.4337465   1.5110937
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1981254   1.1867249   1.2095258
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0175745   1.0002443   1.0349046
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.1007860   1.0855079   1.1160641
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2789407   1.2528587   1.3050227
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1068148   1.1000721   1.1135576
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8733901   0.8508889   0.8958912
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8441894   0.8332867   0.8550921
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8595250   0.8059960   0.9130539
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7071678   0.6800703   0.7342653
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7771287   0.7660708   0.7881866
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8368201   0.8286359   0.8450042
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406522   0.8238073   0.8574972
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967360   0.7914282   0.8020438


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1503461   -0.3197377    0.0190455
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0332550   -0.2237488    0.1572389
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1047558   -0.3427190    0.1332073
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0085671   -0.2875152    0.3046495
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1155169   -0.3083731    0.0773393
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0055238   -0.2045625    0.1935149
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2570005   -0.4546621   -0.0593389
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0665655   -0.2914190    0.1582881
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0318178   -0.1271038    0.1907393
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0103032   -0.2065904    0.1859839
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.2031849   -0.5125163    0.1061464
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0527482   -0.2787287    0.1732322
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0194025   -0.1661502    0.2049552
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.1154435   -0.0793065    0.3101935
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1329973   -0.2282741   -0.0377205
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0777221   -0.1572190    0.0017748
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1764388   -0.3389341   -0.0139435
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0140524   -0.1969418    0.1688371
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2262317   -0.3252514   -0.1272120
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1590281   -0.2696162   -0.0484400
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0980254   -0.2004091    0.0043584
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0561411   -0.1714292    0.0591470
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.3020177   -0.6378992    0.0338638
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0248261   -0.1893546    0.1397024
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.2246175   -0.3313150   -0.1179201
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0505867   -0.1423163    0.0411428
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2448016   -0.3382008   -0.1514023
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1689177   -0.2300850   -0.1077505
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1527518   -0.2784371   -0.0270665
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1417019   -0.2982090    0.0148051
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1223835   -0.1904188   -0.0543481
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0773251   -0.1513437   -0.0033064
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1159508   -0.1399926   -0.0919090
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0546980   -0.0824547   -0.0269412
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1040221   -0.2427876    0.0347433
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.1966496   -0.3576472   -0.0356520
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0487018   -0.2299859    0.1325823
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1512029   -0.0661558    0.3685615
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0662074   -0.2265999    0.0941850
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0139401   -0.1515047    0.1793850
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0030761   -0.1451686    0.1513207
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0784827   -0.0956871    0.2526524
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0269739   -0.2171528    0.1632049
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.1322639   -0.0898246    0.3543524
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0184148   -0.1908069    0.2276366
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0401706   -0.2300687    0.3104100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1194532   -0.3164476    0.0775413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0142167   -0.1678910    0.1394576
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0601765   -0.1377251    0.0173721
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0367533   -0.1170732    0.0435665
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0524345   -0.1777874    0.0729184
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0281246   -0.1220946    0.1783438
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0131161   -0.1043705    0.0781384
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0441962   -0.1501355    0.0617432
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0032337   -0.1001171    0.0936497
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0380442   -0.0751390    0.1512274
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0252311   -0.1349843    0.0845222
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0444919   -0.1291811    0.0401973
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0769987   -0.1177625    0.2717598
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0790850   -0.1987564    0.0405865
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0621479   -0.1969367    0.0726410
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0295038   -0.1124510    0.0534434
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0625420   -0.1452541    0.0201700
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0093221   -0.0687298    0.0500856
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1636026   -0.2650119   -0.0621933
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1496033   -0.2661424   -0.0330641
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0669120   -0.1257806   -0.0080434
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0674358   -0.1295889   -0.0052826
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0633625   -0.0901011   -0.0366239
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0435813   -0.0753025   -0.0118600
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0135849   -0.0876657    0.0604959
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0442451   -0.0429675    0.1314577
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0374008   -0.0807715    0.1555732
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0988538   -0.2202637    0.0225562
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0319983   -0.0367616    0.1007582
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0395991   -0.1171152    0.0379171
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0741897   -0.1440122   -0.0043672
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0281816   -0.1047689    0.0484057
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0367342   -0.1181928    0.0447244
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0068366   -0.1083808    0.0947076
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0400391   -0.1993054    0.1192273
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.1798151   -0.3298137   -0.0298164
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0236765   -0.0779516    0.1253046
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0031695   -0.0865553    0.0928943
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0915215   -0.1290184   -0.0540246
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0034967   -0.0776799    0.0706865
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.1519908   -0.0116078    0.3155893
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0424373   -0.1233175    0.2081922
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0981168   -0.1546477   -0.0415860
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0221967   -0.0866055    0.0422120
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0629227   -0.1059836   -0.0198618
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0267784   -0.0765494    0.0229925
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0768373   -0.1233409   -0.0303337
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0685196   -0.1227195   -0.0143198
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0617215   -0.1235421    0.0000991
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0278967   -0.0821009    0.0263074
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0724509   -0.1443972   -0.0005047
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0050160   -0.0679632    0.0579311
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1660958   -0.2550154   -0.0771763
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1279318   -0.2414700   -0.0143936
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0193258   -0.1018433    0.1404949
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0307446   -0.1044725    0.0429833
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0397054   -0.0843355    0.0049248
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0461848   -0.0774307   -0.0149390
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0471900   -0.0989143    0.0045344
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0669435   -0.1271843   -0.0067028
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1061231   -0.1416369   -0.0706093
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0986788   -0.1387142   -0.0586435
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0680160   -0.1003891   -0.0356430
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0256418   -0.0612901    0.0100065
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0459847   -0.1222074    0.0302380
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0550539   -0.1196537    0.0095459
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0495736   -0.0663583   -0.0327889
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0264268   -0.0451767   -0.0076770
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0890857   -0.1351419   -0.0430296
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0422667   -0.0967428    0.0122095
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0109942   -0.0649793    0.0869677
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0303603   -0.1052233    0.0445028
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0848653   -0.1274395   -0.0422912
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0438092   -0.0888425    0.0012241
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0470480   -0.0871903   -0.0069056
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0074961   -0.0381589    0.0531511
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0791392   -0.1292228   -0.0290555
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0738267   -0.1325263   -0.0151270
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0145180   -0.0619621    0.0909982
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0470685   -0.0289551    0.1230921
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0754484   -0.1370611   -0.0138357
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0462315   -0.1011485    0.0086854
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0729627   -0.1113645   -0.0345609
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0410480   -0.0849079    0.0028119
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0376362   -0.0680881   -0.0071843
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0185520   -0.0547384    0.0176344
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0534637   -0.0832193   -0.0237080
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0521342   -0.0872253   -0.0170431
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0720399   -0.1230298   -0.0210499
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0010484   -0.0296291    0.0275324
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.2138595   -0.2880620   -0.1396570
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0161915   -0.1064632    0.0740803
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0287082   -0.1379269    0.0805104
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0417586   -0.0217267    0.1052439
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0625898   -0.0966598   -0.0285197
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0655869   -0.1063289   -0.0248449
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0491727   -0.0686934   -0.0296520
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0267316   -0.0490179   -0.0044452
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0407039   -0.0596712   -0.0217367
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0183062   -0.0390207    0.0024082
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0541595   -0.1096213    0.0013022
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0405819   -0.0784327   -0.0027310
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0424798   -0.0568161   -0.0281435
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0265817   -0.0421159   -0.0110475
