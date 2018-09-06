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
![](/tmp/68b31c53-8792-4355-8eae-0af1c16eb55c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/68b31c53-8792-4355-8eae-0af1c16eb55c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0125557   -0.0584395    0.0835508
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0504462   -0.0919826   -0.0089097
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0093874   -0.0708713    0.0520964
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1917828    0.1249467    0.2586189
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1860868    0.0802215    0.2919520
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.2086672    0.0792795    0.3380548
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0077694   -0.0852770    0.0697382
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0471536   -0.1064493    0.0121422
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                 0.0133703   -0.0552551    0.0819957
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.1217394    0.0500524    0.1934264
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0433375   -0.0022135    0.0888884
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.1132881    0.0401228    0.1864534
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1739801   -0.2446793   -0.1032808
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.1484562   -0.1912947   -0.1056178
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.1649732   -0.2360739   -0.0938724
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0894658   -0.1409306   -0.0380010
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.1584133   -0.3058078   -0.0110188
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.0969045   -0.1893692   -0.0044399
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0650562   -0.1163704   -0.0137420
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0288670   -0.1044298    0.0466957
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0061292   -0.0915858    0.0793274
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0358301    0.0137685    0.0578917
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.0023895   -0.0403270    0.0355480
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                 0.0052864   -0.0185441    0.0291168
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0938538   -0.1640938   -0.0236139
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.1441046   -0.1784209   -0.1097884
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0781676   -0.1314536   -0.0248816
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0292535   -0.0067395    0.0652465
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0679511   -0.0928065   -0.0430956
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0425873   -0.0792656   -0.0059091
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.1108215   -0.1546315   -0.0670116
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.1258174   -0.1497745   -0.1018603
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.1217212   -0.1577684   -0.0856740
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2885991   -0.3147211   -0.2624770
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.3978054   -0.5740527   -0.2215581
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.2831561   -0.3619276   -0.2043846
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.4355886   -0.4957612   -0.3754160
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.5307038   -0.5995161   -0.4618916
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.4405998   -0.5031251   -0.3780746
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1352042   -0.1476564   -0.1227520
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.2439092   -0.2894110   -0.1984073
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.2062440   -0.2341163   -0.1783717
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.4913828   -0.5474360   -0.4353296
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.5442791   -0.5708656   -0.5176926
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.5698262   -0.6226235   -0.5170289
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0349010   -0.0598213   -0.0099806
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0773832   -0.0996347   -0.0551317
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0558227   -0.0816142   -0.0300313
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0981547    0.0869498    0.1093597
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                 0.0596305    0.0537528    0.0655082
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                 0.0801892    0.0717011    0.0886774
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0263291   -0.0354267    0.0880849
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0139667   -0.0426141    0.0146808
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0631677   -0.1100432   -0.0162923
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0488560   -0.0001658    0.0978778
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0449027   -0.0222568    0.1120622
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1196026    0.0314671    0.2077382
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0392955   -0.0991194    0.0205284
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0543295   -0.0972637   -0.0113952
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0232624   -0.0706752    0.0241504
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0464258   -0.1093862    0.0165345
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0235178   -0.0580664    0.0110308
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0006136   -0.0549469    0.0537196
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0191801   -0.0620144    0.1003746
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0108577   -0.0263252    0.0480406
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.0816288    0.0146376    0.1486199
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0117809   -0.0571040    0.0335423
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.0167057   -0.0681918    0.1016032
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.0203277   -0.0939873    0.1346426
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0618524   -0.1033107   -0.0203941
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1008040   -0.1845456   -0.0170624
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0674547   -0.1277256   -0.0071838
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0016636   -0.0275430    0.0242159
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.0159649   -0.0486896    0.0167599
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0147264   -0.0450306    0.0155778
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0529167   -0.1040667   -0.0017668
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0589297   -0.0873758   -0.0304836
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0304925   -0.0780092    0.0170241
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0256222   -0.0622848    0.0110405
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0212383   -0.0431520    0.0006754
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0432665   -0.0770751   -0.0094579
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0119071   -0.0266169    0.0504312
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0267905    0.0046530    0.0489281
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0386445    0.0039086    0.0733804
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0808345   -0.1019025   -0.0597666
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0818237   -0.1286097   -0.0350377
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0930309   -0.1264405   -0.0596212
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0184773   -0.0394622    0.0025077
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                 0.0380829   -0.0502454    0.1264112
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0445714   -0.0968332    0.0076905
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0468245    0.0280974    0.0655515
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.0289991   -0.0351968    0.0931950
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.0413153   -0.0070535    0.0896842
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0020999   -0.0087933    0.0129932
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0135910   -0.0502826    0.0231006
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0059954   -0.0196939    0.0316846
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0410402   -0.0858333    0.0037528
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.1018107   -0.1192973   -0.0843240
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1096888   -0.1425229   -0.0768548
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0378222   -0.0587681   -0.0168764
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0558331   -0.0732519   -0.0384143
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0594542   -0.0790628   -0.0398455
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0086151   -0.0024292    0.0196594
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.0061858   -0.0124486    0.0000770
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.0049568   -0.0144350    0.0045213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0872826   -0.1172672   -0.0572980
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0845618   -0.0968684   -0.0722552
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0678300   -0.0911162   -0.0445438
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0089540   -0.0154460    0.0333540
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0312977   -0.0100125    0.0726079
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0319576   -0.0786660    0.0147508
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0853716   -0.1084670   -0.0622761
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0623810   -0.0796892   -0.0450728
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.1005151   -0.1237702   -0.0772600
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0382638   -0.0644832   -0.0120444
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0552303   -0.0695146   -0.0409461
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0420950   -0.0619323   -0.0222578
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0320387   -0.0612674   -0.0028100
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0404436   -0.0586690   -0.0222182
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0314857   -0.0647522    0.0017809
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0455999   -0.0628996   -0.0283002
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.0545488   -0.1192457    0.0101481
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.1121863   -0.1742613   -0.0501112
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1308214   -0.1509759   -0.1106670
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1048373   -0.1430853   -0.0665893
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1234744   -0.1551937   -0.0917551
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0767585   -0.0892352   -0.0642817
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.1041352   -0.1125461   -0.0957244
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0725167   -0.0960733   -0.0489601
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1532674   -0.2002323   -0.1063025
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.0799097   -0.1286662   -0.0311532
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -0.1303378   -0.1814548   -0.0792209
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0356689   -0.0558895   -0.0154483
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0635512   -0.0761311   -0.0509714
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0417473   -0.0599742   -0.0235203
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0528259   -0.0674121   -0.0382396
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0675213   -0.0771867   -0.0578558
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0600057   -0.0733316   -0.0466797
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0127244   -0.0297209    0.0042721
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0354092   -0.0449778   -0.0258406
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0368840   -0.0516602   -0.0221079
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0570652   -0.0686158   -0.0455147
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0714930   -0.0948190   -0.0481671
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0603738   -0.0805510   -0.0401965
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0631106   -0.0716922   -0.0545289
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0825960   -0.1118230   -0.0533690
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0568316   -0.0817822   -0.0318810
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0313656   -0.0656679    0.0029367
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0936533   -0.1084748   -0.0788318
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0808027   -0.1161166   -0.0454889
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0428895    0.0264377    0.0593413
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.0628717    0.0071839    0.1185596
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.0363801   -0.0003814    0.0731416
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0470930   -0.0526295   -0.0415565
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0492888   -0.0675414   -0.0310363
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0609581   -0.0730943   -0.0488218
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1013820   -0.1205103   -0.0822537
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.1072221   -0.1160296   -0.0984147
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1219717   -0.1376399   -0.1063035
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0697213   -0.0810732   -0.0583694
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0989949   -0.1087043   -0.0892855
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.1016829   -0.1138624   -0.0895033
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0901844   -0.1017983   -0.0785705
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.1064220   -0.1135217   -0.0993223
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.0955554   -0.1050228   -0.0860880
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0019022   -0.0156543    0.0118500
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0070167   -0.0360081    0.0219747
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0204947   -0.0432166    0.0022271
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0709320   -0.0775432   -0.0643209
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.0759568   -0.0795416   -0.0723719
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.0747869   -0.0799555   -0.0696183
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0003467   -0.0148215    0.0141281
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0211388   -0.0280027   -0.0142748
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0168198   -0.0270209   -0.0066188
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0017477   -0.0163053    0.0128098
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0033928   -0.0187921    0.0255777
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0065034   -0.0266536    0.0136469
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0026996   -0.0082686    0.0136677
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0171179   -0.0244097   -0.0098261
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0076422   -0.0166622    0.0013777
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0319204   -0.0429310   -0.0209098
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0319000   -0.0389012   -0.0248988
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0230373   -0.0324332   -0.0136415
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0068167   -0.0071330    0.0207664
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0126722   -0.0223592   -0.0029853
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0180672   -0.0310739   -0.0050604
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0184935   -0.0268284   -0.0101586
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.0068781   -0.0284961    0.0147398
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.0081717   -0.0171463    0.0334897
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0339670   -0.0445535   -0.0233804
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0494780   -0.0670352   -0.0319209
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0450310   -0.0596269   -0.0304350
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0349913   -0.0455118   -0.0244707
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0415221   -0.0478951   -0.0351490
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0418860   -0.0505730   -0.0331990
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0084814   -0.0171649    0.0002021
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0074941   -0.0125970   -0.0023913
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0095774   -0.0174126   -0.0017423
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0023493   -0.0068618    0.0115605
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0066106   -0.0117421   -0.0014791
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0099245   -0.0184127   -0.0014363
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0215256   -0.0258872   -0.0171640
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0322254   -0.0492007   -0.0152500
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0123172   -0.0216220   -0.0030123
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0427714   -0.0605702   -0.0249726
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.0933344   -0.1113005   -0.0753684
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.0450009   -0.0805498   -0.0094520
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0573118   -0.0687306   -0.0458930
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0550469   -0.0922104   -0.0178835
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0351349   -0.0539657   -0.0163042
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0229132   -0.0334192   -0.0124072
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0295263   -0.0340046   -0.0250479
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0374052   -0.0459038   -0.0289065
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0332690   -0.0384079   -0.0281302
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0331670   -0.0371507   -0.0291832
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0311527   -0.0364102   -0.0258952
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0580409   -0.0636314   -0.0524504
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.0579486   -0.0615589   -0.0543384
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.0568473   -0.0613836   -0.0523111
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0133794   -0.0206080   -0.0061507
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0184293   -0.0346268   -0.0022318
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0217125   -0.0331425   -0.0102825
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0184568   -0.0228877   -0.0140258
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.0178829   -0.0202118   -0.0155541
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.0209679   -0.0243181   -0.0176177


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1572370   -0.1898325   -0.1246414
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0989568   -0.1436567   -0.0542569
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0149894    0.0006456    0.0293332
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0408226   -0.0589776   -0.0226676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2919403   -0.3169070   -0.2669736
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4366032   -0.4962016   -0.3770047
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1520983   -0.1631600   -0.1410367
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5425507   -0.5646311   -0.5204702
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0589325   -0.0729654   -0.0448996
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705850    0.0656385    0.0755316
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0417054   -0.0700621   -0.0133486
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0272742   -0.0038596    0.0584080
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0042614   -0.0425659    0.0340432
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0098351   -0.0281172    0.0084471
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0274690   -0.0439444   -0.0109937
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0836524   -0.1003896   -0.0669152
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0195798   -0.0386524   -0.0005072
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0464949    0.0273999    0.0655900
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0017406   -0.0079422    0.0114234
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0957993   -0.1105012   -0.0810975
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0514792   -0.0626143   -0.0403442
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0035407   -0.0084128    0.0013313
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0785153   -0.0906466   -0.0663840
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0367697   -0.0508361   -0.0227032
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0546626   -0.0720558   -0.0372694
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0849064   -0.0896428   -0.0801700
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0599315   -0.0691491   -0.0507139
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0630669   -0.0709764   -0.0551574
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0796870   -0.0935585   -0.0658154
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0428951    0.0262668    0.0595234
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492916   -0.0541541   -0.0444291
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1095135   -0.1166547   -0.1023724
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0910359   -0.0973892   -0.0846826
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0067771   -0.0177257    0.0041716
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748874   -0.0777298   -0.0720449
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098524   -0.0150104   -0.0046944
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0139716   -0.0215484   -0.0063947
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0206431   -0.0245451   -0.0167411
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0433028   -0.0606990   -0.0259066
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0532266   -0.0629056   -0.0435475
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0303229   -0.0340493   -0.0265966
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0326683   -0.0353735   -0.0299631
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0160197   -0.0217996   -0.0102398
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187727   -0.0206184   -0.0169271


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0630019   -0.1452550    0.0192513
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0219431   -0.1158610    0.0719748
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0056961   -0.1308940    0.1195019
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0168844   -0.1287461    0.1625148
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0393842   -0.1369722    0.0582038
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0211397   -0.0823827    0.1246620
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0784019   -0.1633367    0.0065328
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0084512   -0.1108826    0.0939801
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0255238   -0.0571412    0.1081889
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0090069   -0.0912612    0.1092750
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0689475   -0.2250686    0.0871735
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0074388   -0.1132610    0.0983834
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0361892   -0.0551501    0.1275285
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0589270   -0.0407524    0.1586065
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0382196   -0.0826791    0.0062399
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0305437   -0.0639268    0.0028394
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0502508   -0.1284253    0.0279237
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0156863   -0.0724787    0.1038512
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0972046   -0.1409458   -0.0534634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0718409   -0.1232295   -0.0204522
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0149959   -0.0649284    0.0349367
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0108997   -0.0676334    0.0458340
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1092063   -0.2873789    0.0689663
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0054429   -0.0775469    0.0884328
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0951152   -0.1548658   -0.0353646
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0050112   -0.0499174    0.0398950
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1087050   -0.1558800   -0.0615300
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0710398   -0.1015672   -0.0405124
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0528963   -0.1149350    0.0091425
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0784434   -0.1554467   -0.0014400
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0424822   -0.0758912   -0.0090733
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0209218   -0.0567857    0.0149422
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0385242   -0.0503152   -0.0267333
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0179655   -0.0312528   -0.0046782
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0402958   -0.1083726    0.0277811
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0894968   -0.1670280   -0.0119656
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0039533   -0.0871010    0.0791944
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0707466   -0.0301048    0.1715981
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0150340   -0.0886699    0.0586019
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0160331   -0.0603008    0.0923670
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0229080   -0.0489085    0.0947245
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0458122   -0.0373509    0.1289753
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0083224   -0.0976259    0.0809811
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0624487   -0.0428146    0.1677120
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0284866   -0.0677515    0.1247247
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0321085   -0.0908634    0.1550805
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0389516   -0.1323938    0.0544906
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0056024   -0.0787555    0.0675507
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0143013   -0.0498152    0.0212125
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0130629   -0.0458008    0.0196751
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0060130   -0.0645408    0.0525148
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0224242   -0.0473909    0.0922393
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0043839   -0.0383286    0.0470964
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0176443   -0.0675158    0.0322272
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm           0.0148834   -0.0295483    0.0593151
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0267374   -0.0251345    0.0786092
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0009892   -0.0522999    0.0503215
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0121963   -0.0516940    0.0273013
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0565602   -0.0342267    0.1473471
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0260941   -0.0824117    0.0302234
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0178254   -0.0803577    0.0447069
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0055091   -0.0444775    0.0334592
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0156909   -0.0539654    0.0225836
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0038954   -0.0240080    0.0317988
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0607704   -0.1088558   -0.0126851
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0686486   -0.1241868   -0.0131104
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0180108   -0.0452532    0.0092315
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0216319   -0.0503239    0.0070600
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0148009   -0.0270454   -0.0025564
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0135719   -0.0282590    0.0011152
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0027208   -0.0296910    0.0351327
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0194526   -0.0185122    0.0574173
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0223437   -0.0256343    0.0703218
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0409116   -0.0936092    0.0117860
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0229906   -0.0058706    0.0518519
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0151435   -0.0479185    0.0176315
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0169666   -0.0468245    0.0128914
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0038312   -0.0367094    0.0290470
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0084049   -0.0428502    0.0260404
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0005530   -0.0437300    0.0448359
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0089489   -0.0759188    0.0580210
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0665864   -0.1310270   -0.0021458
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0259841   -0.0172491    0.0692174
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0073470   -0.0302338    0.0449278
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0273768   -0.0433336   -0.0114199
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm           0.0042418   -0.0292039    0.0376875
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0733576    0.0056605    0.1410547
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0229295   -0.0464869    0.0923460
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0278823   -0.0516967   -0.0040679
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0060783   -0.0333014    0.0211447
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0146954   -0.0321934    0.0028026
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0071798   -0.0269368    0.0125772
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0226848   -0.0421897   -0.0031800
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0241597   -0.0466811   -0.0016383
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0144278   -0.0404569    0.0116013
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0033086   -0.0265580    0.0199409
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0194854   -0.0499462    0.0109754
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0062790   -0.0201062    0.0326641
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0622877   -0.0996552   -0.0249202
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0494371   -0.0986684   -0.0002058
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0199822   -0.0304124    0.0703768
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0065094   -0.0381205    0.0251017
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0021958   -0.0212696    0.0168779
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0138651   -0.0272046   -0.0005256
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0058402   -0.0268987    0.0152184
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0205897   -0.0453159    0.0041365
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0292736   -0.0442114   -0.0143358
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0319616   -0.0486111   -0.0153120
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0162376   -0.0298496   -0.0026256
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0053710   -0.0203548    0.0096128
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0051145   -0.0372023    0.0269732
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0185926   -0.0451520    0.0079669
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0050247   -0.0123579    0.0023084
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0038549   -0.0120870    0.0043773
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0207921   -0.0368119   -0.0047723
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0164732   -0.0341814    0.0012350
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0051406   -0.0213942    0.0316753
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0047556   -0.0296143    0.0201031
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0198175   -0.0329883   -0.0066466
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0103418   -0.0245425    0.0038589
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0000204   -0.0130276    0.0130684
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0088831   -0.0055915    0.0233577
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0194890   -0.0364722   -0.0025057
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0248839   -0.0439566   -0.0058112
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0116154   -0.0115537    0.0347845
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0266652    0.0000105    0.0533198
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0155111   -0.0360130    0.0049908
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0110640   -0.0290950    0.0069670
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0065308   -0.0188311    0.0057695
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0068948   -0.0205383    0.0067487
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0009873   -0.0090846    0.0110591
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0010960   -0.0127918    0.0105998
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0089599   -0.0195041    0.0015842
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0122738   -0.0247996    0.0002520
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0106998   -0.0282265    0.0068270
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0092084   -0.0010680    0.0194848
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0505630   -0.0770537   -0.0240723
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0022295   -0.0375721    0.0331131
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0022649   -0.0366132    0.0411431
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0221769    0.0001545    0.0441993
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0066131   -0.0180338    0.0048076
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0144920   -0.0280051   -0.0009789
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm           0.0001021   -0.0064001    0.0066042
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm           0.0021163   -0.0052355    0.0094681
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0000923   -0.0065626    0.0067472
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0011935   -0.0060058    0.0083929
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0050499   -0.0227872    0.0126874
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0083331   -0.0218571    0.0051909
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm           0.0005738   -0.0043880    0.0055356
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0025111   -0.0079812    0.0029589
