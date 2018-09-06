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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
![](/tmp/13beb27e-3b35-4be7-810f-53a2c4c649a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/13beb27e-3b35-4be7-810f-53a2c4c649a3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                3.6263654   3.5097987   3.7429321
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                3.5198482   3.4410466   3.5986498
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                3.6175946   3.5115475   3.7236416
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                4.0779883   3.9485395   4.2074371
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                3.9833585   3.7926535   4.1740635
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                4.0789683   3.8240153   4.3339214
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                3.7205137   3.5746774   3.8663500
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                3.5469212   3.4251098   3.6687325
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                3.6977158   3.5662138   3.8292178
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                3.9389794   3.7855764   4.0923824
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                3.7212341   3.6242269   3.8182413
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                3.8978123   3.7586204   4.0370042
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                3.3006721   3.1651257   3.4362186
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                3.3324899   3.2495248   3.4154550
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                3.2903689   3.1483978   3.4323400
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                3.4852563   3.3807062   3.5898065
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                3.2821116   2.9909876   3.5732355
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                3.4325173   3.2321859   3.6328486
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                3.4438289   3.3434811   3.5441767
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                3.4174310   3.2738085   3.5610536
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                3.5046809   3.3526804   3.6566814
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                3.6666525   3.6154606   3.7178444
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                3.5496361   3.4951724   3.6040997
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                3.5968465   3.5408335   3.6528596
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                3.4213929   3.2791923   3.5635934
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                3.2396724   3.1718788   3.3074660
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                3.4045094   3.2998269   3.5091920
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                3.6148002   3.5346986   3.6949018
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                3.4124967   3.3589392   3.4660542
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                3.4629144   3.3906800   3.5351489
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                3.4007641   3.3157293   3.4857988
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                3.2765241   3.2259056   3.3271426
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                3.3301073   3.2576150   3.4025996
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                3.1425951   3.0909877   3.1942025
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.6746107   2.4288508   2.9203706
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                3.1076711   2.9575352   3.2578071
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.8412111   2.7258773   2.9565449
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                2.6463143   2.5410469   2.7515817
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.8014790   2.6842601   2.9186978
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                3.3923768   3.3674049   3.4173487
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                3.1643862   3.0801980   3.2485744
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                3.2339931   3.1796756   3.2883106
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                2.8155271   2.7132290   2.9178252
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                2.5989090   2.5481125   2.6497055
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                2.6650067   2.5689301   2.7610833
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                3.6092023   3.5592769   3.6591277
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                3.4978343   3.4542371   3.5414315
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                3.5365021   3.4847110   3.5882931
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                3.8039839   3.7816148   3.8263530
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                3.6866789   3.6746421   3.6987157
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                3.7478600   3.7300078   3.7657123
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                2.0842767   1.9901742   2.1783791
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.9483916   1.8892394   2.0075438
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.8769339   1.7906774   1.9631904
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                2.1405823   2.0360399   2.2451247
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                2.1323463   1.9906536   2.2740390
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                2.3433585   2.1617047   2.5250123
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.8524548   1.7301932   1.9747163
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.8235568   1.7332313   1.9138823
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.8909587   1.7943975   1.9875199
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.9455276   1.8162968   2.0747583
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.9485633   1.8759427   2.0211838
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                2.0239894   1.9072420   2.1407368
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                2.0231454   1.8785352   2.1677555
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.9748877   1.9005973   2.0491782
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                2.1269196   2.0146699   2.2391693
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.9654006   1.8702168   2.0605845
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.9803873   1.7951163   2.1656582
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                2.0058954   1.7535708   2.2582200
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8561199   1.7689240   1.9433158
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7366492   1.5600066   1.9132917
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.8418954   1.7153601   1.9684307
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.9890520   1.9317139   2.0463901
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.9252306   1.8484356   2.0020257
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.9509055   1.8714205   2.0303904
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.8728064   1.7721090   1.9735039
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.8031291   1.7418139   1.8644444
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.8777370   1.7805904   1.9748836
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.9724044   1.8949088   2.0498999
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.9674955   1.9207297   2.0142613
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.9292788   1.8584225   2.0001352
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.9569961   1.8788075   2.0351847
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.9915863   1.9447442   2.0384283
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                2.0028467   1.9323228   2.0733707
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8131468   1.7677947   1.8584990
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.8054422   1.7099876   1.9008968
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.7723859   1.7035423   1.8412295
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.9945223   1.9497965   2.0392481
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.1088572   1.9417966   2.2759178
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.9299037   1.8232256   2.0365817
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.0922711   2.0522916   2.1322506
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                2.0224452   1.8870179   2.1578725
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.0605678   1.9605091   2.1606264
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.9860297   1.9627801   2.0092792
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.9151233   1.8408833   1.9893634
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.9744556   1.9215603   2.0273510
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.9049240   1.8212955   1.9885525
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.7402222   1.7045183   1.7759262
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                1.7483982   1.6875040   1.8092924
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.9209650   1.8772847   1.9646453
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                1.8632405   1.8265438   1.8999373
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.8604271   1.8189498   1.9019045
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                1.9663441   1.9430215   1.9896667
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                1.9038892   1.8904615   1.9173169
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                1.9240319   1.9039041   1.9441596
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                1.1140095   1.0458628   1.1821561
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.0986995   1.0690416   1.1283574
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.1561110   1.1015633   1.2106586
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.3791622   1.3237612   1.4345632
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.3734800   1.2830581   1.4639019
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.2171252   1.1229219   1.3113285
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.1159769   1.0610252   1.1709285
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.1471428   1.1068725   1.1874131
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.0744317   1.0204394   1.1284240
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.2704748   1.2120997   1.3288499
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.1974475   1.1632246   1.2316704
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                1.2415076   1.1968718   1.2861435
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.2327792   1.1634169   1.3021415
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.1975578   1.1548908   1.2402247
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                1.2281253   1.1540014   1.3022493
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.2133364   1.1729936   1.2536793
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.1697651   1.0261327   1.3133974
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                1.0289817   0.8968689   1.1610944
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9963369   0.9538083   1.0388655
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.0586452   0.9972093   1.1200811
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.0326974   0.9741838   1.0912110
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.1318106   1.1043392   1.1592819
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.0451209   1.0238189   1.0664228
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.1270071   1.0743404   1.1796738
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.9240201   0.8148374   1.0332028
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                1.0692034   0.9501180   1.1882888
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.9602139   0.8379070   1.0825207
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.2318591   1.1861813   1.2775368
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.1314799   1.1017067   1.1612532
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.2046394   1.1622145   1.2470642
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.2141681   1.1781993   1.2501370
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.1512454   1.1275709   1.1749199
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.1873897   1.1529893   1.2217901
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.3024162   1.2652002   1.3396321
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.2098049   1.1878031   1.2318067
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                1.2194343   1.1857548   1.2531138
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.2108820   1.1841849   1.2375792
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.1507502   1.0990684   1.2024321
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.1821027   1.1378849   1.2263206
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.1797204   1.1594758   1.1999651
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                1.1643740   1.1145476   1.2142004
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.1958790   1.1401989   1.2515590
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.1994565   1.1283298   1.2705832
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                1.0497273   1.0141800   1.0852746
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.0675915   0.9988190   1.1363639
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                1.4731559   1.4348877   1.5114240
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.4923574   1.3892541   1.5954607
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                1.4514630   1.3648716   1.5380543
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.2073036   1.1943633   1.2202439
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.1696828   1.1299528   1.2094129
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.1640240   1.1365078   1.1915402
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.0649554   1.0219687   1.1079422
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.0153428   0.9943735   1.0363121
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.9999307   0.9656772   1.0341841
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.1703782   1.1440455   1.1967109
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                1.0693302   1.0466931   1.0919674
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.0757549   1.0471313   1.1043784
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                1.1126084   1.0862968   1.1389200
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                1.0440133   1.0274299   1.0605966
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                1.0855262   1.0635711   1.1074814
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                1.2993034   1.2677971   1.3308096
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                1.2665717   1.2069840   1.3261593
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.2520333   1.1995686   1.3044980
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                1.1415808   1.1268507   1.1563109
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                1.0929398   1.0844602   1.1014193
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                1.1156330   1.1038764   1.1273897
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.9139570   0.8718469   0.9560670
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8248713   0.8062189   0.8435236
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.8716903   0.8371304   0.9062503
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.9857285   0.9448715   1.0265855
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0020362   0.9446011   1.0594714
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.9517265   0.8981858   1.0052672
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9200750   0.8900130   0.9501370
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8420222   0.8175315   0.8665129
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8757202   0.8489404   0.9025000
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.8861244   0.8513344   0.9209144
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.8390753   0.8190505   0.8591001
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8936195   0.8640562   0.9231827
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.9059640   0.8642489   0.9476791
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8270328   0.7995231   0.8545425
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.8327067   0.7915461   0.8738672
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.8653601   0.8413711   0.8893492
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8761322   0.8226917   0.9295727
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.9123848   0.8525135   0.9722562
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7915295   0.7637024   0.8193565
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7396305   0.7001084   0.7791527
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7542587   0.7203947   0.7881226
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7953535   0.7642512   0.8264557
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7289975   0.7101010   0.7478939
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7536639   0.7265404   0.7807874
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8817799   0.8561790   0.9073809
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8456137   0.8298167   0.8614107
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8646295   0.8398952   0.8893639
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9171071   0.8928980   0.9413162
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8643896   0.8490804   0.8796988
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.8641929   0.8406226   0.8877632
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.8466562   0.8344905   0.8588218
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7717702   0.7315858   0.8119545
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8421820   0.8172904   0.8670737
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.8620957   0.8072760   0.9169154
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.6535546   0.6119484   0.6951607
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.8450026   0.7557580   0.9342472
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.7013464   0.6701337   0.7325591
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6867639   0.6093364   0.7641915
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7526419   0.7067996   0.7984842
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.8311634   0.8042686   0.8580583
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7697048   0.7569693   0.7824404
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7736550   0.7504879   0.7968220
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.8630598   0.8482381   0.8778815
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.8169601   0.8054394   0.8284808
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.8396401   0.8243059   0.8549743
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.7303461   0.7153949   0.7452974
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.6938779   0.6836657   0.7040901
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7138807   0.7008871   0.7268743
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.8583905   0.8381558   0.8786252
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8042309   0.7525922   0.8558697
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.8178086   0.7858204   0.8497968
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.8264575   0.8142744   0.8386406
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.7862826   0.7795483   0.7930170
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.8010210   0.7920069   0.8100351


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1065172   -0.2453592    0.0323248
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0087709   -0.1637943    0.1462526
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0946298   -0.3236196    0.1343599
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0009800   -0.2837239    0.2856839
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1735925   -0.3635112    0.0163261
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0227979   -0.2190025    0.1734067
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2177453   -0.3992323   -0.0362582
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0411671   -0.2487464    0.1664122
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0318178   -0.1271038    0.1907393
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0103032   -0.2065904    0.1859839
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.2031448   -0.5124719    0.1061823
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0527391   -0.2787094    0.1732312
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0263979   -0.1994085    0.1466128
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0608520   -0.1184452    0.2401492
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1170164   -0.2085385   -0.0254943
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0698059   -0.1452492    0.0056373
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1817204   -0.3392203   -0.0242206
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0168835   -0.1921981    0.1584312
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2023034   -0.2985453   -0.1060616
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1518857   -0.2596744   -0.0440971
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1242399   -0.2231844   -0.0252954
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0706567   -0.1822814    0.0409679
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.4679845   -0.7191153   -0.2168536
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0349240   -0.1936434    0.1237954
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1948968   -0.2960068   -0.0937867
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0397321   -0.1271033    0.0476390
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2279906   -0.3157809   -0.1402003
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1583837   -0.2180996   -0.0986679
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.2166181   -0.3301897   -0.1030465
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1505204   -0.2894979   -0.0115429
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1113680   -0.1773607   -0.0453752
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0727002   -0.1443871   -0.0010133
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1173050   -0.1406409   -0.0939691
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0561239   -0.0831399   -0.0291078
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1358851   -0.2451432   -0.0266269
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.2073428   -0.3343993   -0.0802863
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0082360   -0.1843660    0.1678940
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.2027762   -0.0065881    0.4121405
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0288980   -0.1807631    0.1229672
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0385039   -0.1171403    0.1941482
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0030357   -0.1451966    0.1512680
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0784618   -0.0956906    0.2526142
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0482576   -0.2073075    0.1107922
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.1037742   -0.0731340    0.2806824
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0149866   -0.1930585    0.2230317
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0404948   -0.2290310    0.3100206
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1194707   -0.3164609    0.0775195
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0142245   -0.1678916    0.1394426
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0638213   -0.1374239    0.0097812
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0381465   -0.1229733    0.0466802
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0696773   -0.1872832    0.0479285
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0049305   -0.1347024    0.1445635
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0049089   -0.0953027    0.0854849
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0431256   -0.1480679    0.0618168
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm           0.0345902   -0.0565930    0.1257734
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0458506   -0.0592973    0.1509985
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0077046   -0.1133326    0.0979234
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0407609   -0.1229585    0.0414367
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.1143349   -0.0585341    0.2872039
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0646187   -0.1801771    0.0509398
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0698259   -0.2009571    0.0613052
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0317033   -0.1128146    0.0494079
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0709063   -0.1486662    0.0068535
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0115740   -0.0692817    0.0461336
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1647017   -0.2547746   -0.0746289
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1565258   -0.2591005   -0.0539510
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0577245   -0.1143739   -0.0010751
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0605379   -0.1205993   -0.0004765
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0624549   -0.0884178   -0.0364919
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0423122   -0.0732450   -0.0113795
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0153099   -0.0896300    0.0590101
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0421015   -0.0451703    0.1293733
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0056822   -0.1121714    0.1008070
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.1620369   -0.2712545   -0.0528194
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0311659   -0.0366495    0.0989814
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0415451   -0.1184271    0.0353368
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0730273   -0.1406133   -0.0054413
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0289671   -0.1021865    0.0442523
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0352215   -0.1165936    0.0461506
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0046539   -0.1061608    0.0968530
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0435714   -0.1923012    0.1051584
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.1843548   -0.3221470   -0.0465625
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0623083   -0.0091775    0.1337941
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0363605   -0.0289142    0.1016353
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0866897   -0.1230679   -0.0503115
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0048035   -0.0780551    0.0684482
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.1451833   -0.0157674    0.3061341
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0361938   -0.1278635    0.2002511
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1003792   -0.1547798   -0.0459786
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0272197   -0.0895501    0.0351107
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0629227   -0.1059836   -0.0198618
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0267784   -0.0765494    0.0229925
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0926112   -0.1356734   -0.0495490
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0829819   -0.1328017   -0.0331620
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0601318   -0.1180895   -0.0021742
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0287793   -0.0802274    0.0226688
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0153464   -0.0690015    0.0383087
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0161586   -0.0430659    0.0753830
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1497292   -0.2296211   -0.0698374
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1318650   -0.2302792   -0.0334509
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0192015   -0.0714678    0.1098709
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0216929   -0.0968102    0.0534244
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0376208   -0.0793632    0.0041216
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0432796   -0.0736398   -0.0129195
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0496126   -0.0972274   -0.0019978
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0650248   -0.1195816   -0.0104679
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1010480   -0.1356192   -0.0664767
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0946233   -0.1332997   -0.0559470
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0685952   -0.0996478   -0.0375426
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0270822   -0.0612564    0.0070920
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0327317   -0.0996965    0.0342331
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0472700   -0.1079097    0.0133696
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0486410   -0.0650881   -0.0321939
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0259477   -0.0443246   -0.0075709
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0890857   -0.1351419   -0.0430296
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0422667   -0.0967428    0.0122095
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0163077   -0.0540718    0.0866872
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0340020   -0.1011569    0.0331528
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0780528   -0.1167885   -0.0393170
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0443548   -0.0845892   -0.0041204
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0470491   -0.0871903   -0.0069079
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0074951   -0.0381594    0.0531495
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0789312   -0.1288582   -0.0290042
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0732574   -0.1318324   -0.0146823
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0107721   -0.0463730    0.0679172
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0470247   -0.0163253    0.1103747
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0518989   -0.0973113   -0.0064866
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0372708   -0.0786237    0.0040821
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0663560   -0.1027612   -0.0299509
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0416896   -0.0829390   -0.0004402
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0361662   -0.0661299   -0.0062026
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0171504   -0.0525892    0.0182884
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0527175   -0.0813629   -0.0240720
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0529142   -0.0867074   -0.0191210
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0748860   -0.1168511   -0.0329209
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0044741   -0.0321532    0.0232049
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.2085411   -0.2759632   -0.1411191
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0170931   -0.1076050    0.0734188
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0145825   -0.0975577    0.0683927
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0512955   -0.0036937    0.1062847
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0614586   -0.0910142   -0.0319030
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0575085   -0.0924931   -0.0225239
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0460997   -0.0647030   -0.0274964
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0234197   -0.0444820   -0.0023574
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0364682   -0.0544999   -0.0184366
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0164654   -0.0362258    0.0032949
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0541595   -0.1096213    0.0013022
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0405819   -0.0784327   -0.0027310
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0401749   -0.0540475   -0.0263023
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0254365   -0.0404316   -0.0104414
