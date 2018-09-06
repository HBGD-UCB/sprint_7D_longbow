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
![](/tmp/fe71a4bf-c22c-4690-bb95-80f9021fc762/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fe71a4bf-c22c-4690-bb95-80f9021fc762/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0071102   -0.0640881    0.0783085
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0496963   -0.0909483   -0.0084443
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0071965   -0.0677975    0.0534044
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1870367    0.1222134    0.2518600
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1790008    0.0794097    0.2785918
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1750131    0.0568778    0.2931484
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0037275   -0.0730018    0.0804569
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0440123   -0.1031016    0.0150770
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                 0.0211695   -0.0473713    0.0897103
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.1018234    0.0348828    0.1687640
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0398717   -0.0053590    0.0851024
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.1002329    0.0278378    0.1726281
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1805558   -0.2410302   -0.1200815
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.1461156   -0.1861417   -0.1060895
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.1628096   -0.2234500   -0.1021691
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0901409   -0.1412702   -0.0390116
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.1389126   -0.2692681   -0.0085572
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.1151793   -0.1862716   -0.0440870
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0650562   -0.1163704   -0.0137420
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0288670   -0.1044298    0.0466957
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0061292   -0.0915858    0.0793274
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0355647    0.0137331    0.0573963
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                 0.0056532   -0.0302914    0.0415979
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                 0.0078332   -0.0135546    0.0292210
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0940234   -0.1616702   -0.0263766
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.1453857   -0.1794603   -0.1113111
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0786047   -0.1292100   -0.0279995
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0259895   -0.0052778    0.0572568
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0675741   -0.0918668   -0.0432814
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0394842   -0.0733025   -0.0056658
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0997079   -0.1397081   -0.0597077
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.1260434   -0.1494967   -0.1025901
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.1179848   -0.1523097   -0.0836600
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2910250   -0.3170349   -0.2650150
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.4909956   -0.6085249   -0.3734663
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.2926617   -0.3678938   -0.2174296
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.4355767   -0.4957744   -0.3753790
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.5138249   -0.5707448   -0.4569050
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.4340328   -0.4927196   -0.3753461
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1347521   -0.1471828   -0.1223215
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.2361137   -0.2786633   -0.1935642
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.2015113   -0.2287317   -0.1742910
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.4553347   -0.5041656   -0.4065039
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.5398277   -0.5657715   -0.5138838
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.5355793   -0.5823234   -0.4888351
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0372129   -0.0615031   -0.0129228
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0742919   -0.0959554   -0.0526284
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0552767   -0.0803783   -0.0301751
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0998073    0.0889610    0.1106536
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                 0.0599306    0.0540820    0.0657793
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                 0.0807446    0.0723501    0.0891390
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0285654   -0.0235167    0.0806475
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0132799   -0.0414842    0.0149245
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0620424   -0.1055877   -0.0184971
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0474475    0.0033182    0.0915767
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0738906    0.0225210    0.1252602
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1623459    0.0969280    0.2277638
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0369601   -0.0968656    0.0229455
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0591940   -0.1000610   -0.0183270
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0176895   -0.0651655    0.0297866
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0464356   -0.1093993    0.0165280
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0235235   -0.0580674    0.0110204
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0005948   -0.0549253    0.0537356
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0257045   -0.0445634    0.0959723
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0122713   -0.0230648    0.0476074
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.0733121    0.0186367    0.1279875
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0127925   -0.0580999    0.0325150
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.0136040   -0.0713549    0.0985628
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.0258694   -0.0873420    0.1390809
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0618524   -0.1033107   -0.0203941
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1008040   -0.1845456   -0.0170624
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0674547   -0.1277256   -0.0071838
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0004677   -0.0261812    0.0271165
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.0156512   -0.0467462    0.0154439
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0135015   -0.0438873    0.0168842
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0464974   -0.0938609    0.0008662
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0587227   -0.0868908   -0.0305547
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0329328   -0.0775604    0.0116948
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0254238   -0.0612811    0.0104334
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0209270   -0.0426198    0.0007658
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0438621   -0.0771188   -0.0106054
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0083704   -0.0450569    0.0283162
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0252076    0.0033337    0.0470814
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0239468   -0.0092644    0.0571580
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0799700   -0.1008908   -0.0590493
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0721169   -0.1166837   -0.0275502
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0896041   -0.1219277   -0.0572806
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0183386   -0.0392938    0.0026166
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                 0.0530631   -0.0226477    0.1287739
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0390417   -0.0890986    0.0110152
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0468356    0.0281053    0.0655659
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.0269699   -0.0342382    0.0881781
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.0400231   -0.0066340    0.0866802
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0023244   -0.0085528    0.0132017
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0167821   -0.0512698    0.0177056
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0055661   -0.0193249    0.0304571
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0388602   -0.0795381    0.0018178
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.1013241   -0.1183552   -0.0842931
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1108633   -0.1408033   -0.0809234
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0402438   -0.0604389   -0.0200487
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0538276   -0.0707819   -0.0368733
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0592465   -0.0783433   -0.0401496
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0078567   -0.0027821    0.0184955
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.0068254   -0.0130651   -0.0005857
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.0051352   -0.0145789    0.0043085
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0863248   -0.1164598   -0.0561897
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0846863   -0.0969721   -0.0724004
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0679096   -0.0910491   -0.0447701
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0015070   -0.0215926    0.0246066
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0056989   -0.0294425    0.0408402
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0645328   -0.1039481   -0.0251175
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0911434   -0.1135618   -0.0687250
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0641310   -0.0810661   -0.0471958
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.1052665   -0.1280485   -0.0824845
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0403650   -0.0629083   -0.0178216
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0562225   -0.0695128   -0.0429322
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0437136   -0.0599760   -0.0274512
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0319945   -0.0590354   -0.0049536
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0403244   -0.0580066   -0.0226423
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0303264   -0.0606967    0.0000439
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0457904   -0.0626712   -0.0289096
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.0556834   -0.1077951   -0.0035718
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.1133509   -0.1619755   -0.0647264
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1309405   -0.1507997   -0.1110813
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1039506   -0.1413553   -0.0665460
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1232860   -0.1541914   -0.0923806
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0776449   -0.0894923   -0.0657975
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.1026806   -0.1113759   -0.0939853
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.0741177   -0.0983044   -0.0499309
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1523479   -0.1991350   -0.1055608
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.0806269   -0.1290090   -0.0322448
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -0.1308563   -0.1818480   -0.0798645
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0355432   -0.0556432   -0.0154432
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0635488   -0.0761216   -0.0509759
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0417112   -0.0599023   -0.0235200
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0531997   -0.0675080   -0.0388914
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0674832   -0.0770773   -0.0578891
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0598703   -0.0730630   -0.0466776
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0073708   -0.0227735    0.0080319
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0364218   -0.0456799   -0.0271636
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0372886   -0.0509905   -0.0235868
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0570535   -0.0684702   -0.0456369
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0707232   -0.0926438   -0.0488026
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0602150   -0.0790938   -0.0413361
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0630712   -0.0716320   -0.0545104
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0581695   -0.0794885   -0.0368505
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0480974   -0.0714608   -0.0247340
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0420111   -0.0723903   -0.0116318
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0962901   -0.1106785   -0.0819017
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0891967   -0.1204007   -0.0579927
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0429072    0.0264457    0.0593687
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.0605817    0.0096443    0.1115191
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.0372045    0.0013369    0.0730722
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0471537   -0.0526777   -0.0416297
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0484835   -0.0655518   -0.0314153
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0598659   -0.0716234   -0.0481084
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1011542   -0.1188929   -0.0834156
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.1074069   -0.1160677   -0.0987460
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1199411   -0.1344058   -0.1054764
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0709058   -0.0819661   -0.0598455
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0983274   -0.1078800   -0.0887749
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.1008446   -0.1126444   -0.0890448
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0890293   -0.1000929   -0.0779658
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.1054094   -0.1123652   -0.0984535
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.0950513   -0.1042459   -0.0858567
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0012307   -0.0145622    0.0121007
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.0043445   -0.0191594    0.0278484
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0149654   -0.0350599    0.0051291
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0711207   -0.0775260   -0.0647153
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.0762077   -0.0797901   -0.0726252
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.0749896   -0.0800815   -0.0698977
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0070845   -0.0055945    0.0197636
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.0207021   -0.0274864   -0.0139179
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0133966   -0.0229364   -0.0038568
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0003866   -0.0131867    0.0139599
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0142969   -0.0029539    0.0315477
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0014247   -0.0169814    0.0141320
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0031904   -0.0136417    0.0072609
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.0186467   -0.0257895   -0.0115039
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.0107648   -0.0194825   -0.0020471
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0316597   -0.0425839   -0.0207355
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.0321008   -0.0390924   -0.0251092
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0227808   -0.0322054   -0.0133561
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0064324   -0.0072929    0.0201576
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0127907   -0.0224639   -0.0031174
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.0172863   -0.0302687   -0.0043039
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0184605   -0.0267927   -0.0101284
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.0070634   -0.0285790    0.0144522
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.0081302   -0.0172581    0.0335184
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0339109   -0.0444328   -0.0233890
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0497614   -0.0672216   -0.0323011
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0449500   -0.0594153   -0.0304846
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0374344   -0.0474666   -0.0274023
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0419620   -0.0483022   -0.0356217
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0439695   -0.0524208   -0.0355181
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0088316   -0.0173308   -0.0003324
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.0074231   -0.0125074   -0.0023387
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0094651   -0.0171472   -0.0017830
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0010122   -0.0079145    0.0099388
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0064120   -0.0115058   -0.0013182
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.0106017   -0.0188999   -0.0023034
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0214477   -0.0258052   -0.0170901
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.0402235   -0.0538212   -0.0266257
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0158565   -0.0246162   -0.0070968
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0427399   -0.0605277   -0.0249521
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.0925436   -0.1075984   -0.0774887
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.0451287   -0.0799889   -0.0102685
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0575662   -0.0687915   -0.0463408
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0507518   -0.0778137   -0.0236899
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0327029   -0.0477550   -0.0176509
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0244272   -0.0341783   -0.0146761
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0296317   -0.0340361   -0.0252273
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0362137   -0.0439803   -0.0284472
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0339964   -0.0389473   -0.0290456
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.0334929   -0.0374034   -0.0295823
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.0312217   -0.0362732   -0.0261702
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0589917   -0.0643419   -0.0536414
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.0573870   -0.0609256   -0.0538483
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.0569881   -0.0614044   -0.0525718
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0145542   -0.0217301   -0.0073784
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0249301   -0.0407324   -0.0091279
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0252807   -0.0364746   -0.0140868
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0191710   -0.0234163   -0.0149256
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.0179158   -0.0202194   -0.0156122
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.0213632   -0.0245917   -0.0181347


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0568065   -0.1389921    0.0253791
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0143067   -0.1075629    0.0789495
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0080360   -0.1259625    0.1098906
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0120236   -0.1459225    0.1218753
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0477399   -0.1445799    0.0491002
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0174420   -0.0854453    0.1203292
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0619517   -0.1427321    0.0188287
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0015905   -0.1003028    0.0971219
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0344402   -0.0354782    0.1043586
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0177463   -0.0652091    0.1007016
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0487718   -0.1883970    0.0908535
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0250384   -0.1129596    0.0628828
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0361892   -0.0551501    0.1275285
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0589270   -0.0407524    0.1586065
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0299114   -0.0714533    0.0116304
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0277314   -0.0603788    0.0049160
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0513623   -0.1271132    0.0243886
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0154187   -0.0685403    0.0993777
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0935636   -0.1327915   -0.0543357
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0654737   -0.1111594   -0.0197881
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0263355   -0.0726389    0.0199678
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0182770   -0.0708269    0.0342730
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1999707   -0.3203513   -0.0795900
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0016367   -0.0812402    0.0779667
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0782482   -0.1323050   -0.0241913
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0015439   -0.0414077    0.0444955
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1013616   -0.1456823   -0.0570409
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0667592   -0.0966459   -0.0368725
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0844929   -0.1393251   -0.0296608
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0802446   -0.1471700   -0.0133191
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0370790   -0.0695169   -0.0046410
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0180638   -0.0527970    0.0166695
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0398766   -0.0513318   -0.0284215
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0190627   -0.0320066   -0.0061189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0418452   -0.1007939    0.0171035
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0906077   -0.1580070   -0.0232085
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0264431   -0.0369307    0.0898169
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1148984    0.0367242    0.1930726
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0222339   -0.0939598    0.0494919
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0192706   -0.0564444    0.0949856
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0229121   -0.0489028    0.0947271
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0458408   -0.0373229    0.1290045
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0134331   -0.0903597    0.0634934
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0476076   -0.0386611    0.1338763
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0263964   -0.0696085    0.1224014
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0386619   -0.0831771    0.1605009
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0389516   -0.1323938    0.0544906
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0056024   -0.0787555    0.0675507
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0161188   -0.0495480    0.0173104
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0139692   -0.0490275    0.0210892
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0122254   -0.0672075    0.0427567
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0135646   -0.0512657    0.0783948
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0044968   -0.0372269    0.0462206
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0184383   -0.0672186    0.0303420
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm           0.0335780   -0.0091367    0.0762926
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0323172   -0.0170938    0.0817281
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0078531   -0.0413794    0.0570857
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0096341   -0.0480170    0.0287488
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0714018   -0.0071296    0.1499331
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0207031   -0.0749162    0.0335100
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0198657   -0.0794338    0.0397025
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0068125   -0.0444404    0.0308154
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0191065   -0.0552557    0.0170428
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0032416   -0.0238930    0.0303763
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0624640   -0.1061313   -0.0187966
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0720031   -0.1220487   -0.0219575
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0135838   -0.0397452    0.0125776
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0190027   -0.0467068    0.0087015
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0146821   -0.0265285   -0.0028357
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0129919   -0.0273103    0.0013265
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0016385   -0.0309057    0.0341827
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0184152   -0.0195648    0.0563952
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0041918   -0.0380171    0.0464008
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0660398   -0.1116833   -0.0203963
6-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0270125   -0.0008527    0.0548777
6-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0141231   -0.0459634    0.0177173
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0158575   -0.0419023    0.0101873
6-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0033487   -0.0308467    0.0241494
6-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0083299   -0.0402015    0.0235417
6-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0016681   -0.0385940    0.0419302
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0098930   -0.0638963    0.0441103
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0675605   -0.1186956   -0.0164254
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0269899   -0.0152501    0.0692298
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0076545   -0.0287977    0.0441067
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0250357   -0.0408392   -0.0092322
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm           0.0035272   -0.0296711    0.0367255
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0717210    0.0046116    0.1388305
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0214917   -0.0477524    0.0907357
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0280055   -0.0517140   -0.0042971
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0061680   -0.0332773    0.0209414
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0142835   -0.0314432    0.0028763
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0066706   -0.0260627    0.0127215
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0290510   -0.0468930   -0.0112089
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0299178   -0.0504106   -0.0094251
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0136697   -0.0382878    0.0109485
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0031614   -0.0251600    0.0188371
6-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0049018   -0.0180177    0.0278212
6-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0149738   -0.0098969    0.0398445
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0542791   -0.0878975   -0.0206607
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0471857   -0.0903839   -0.0039874
6-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0176745   -0.0281063    0.0634552
6-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0057027   -0.0365272    0.0251218
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0013298   -0.0192535    0.0165939
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0127122   -0.0256824    0.0002580
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0062527   -0.0259149    0.0134096
6-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0187868   -0.0414864    0.0039127
6-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0274216   -0.0419823   -0.0128609
6-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0299388   -0.0460439   -0.0138336
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0163800   -0.0294176   -0.0033424
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0060220   -0.0203686    0.0083246
6-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0055752   -0.0212971    0.0324475
6-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0137347   -0.0375456    0.0100763
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0050870   -0.0122555    0.0020815
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0038690   -0.0119374    0.0041994
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0277867   -0.0421874   -0.0133860
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0204811   -0.0362863   -0.0046760
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0139103   -0.0072795    0.0351001
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0018113   -0.0223589    0.0187363
12-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0154563   -0.0280204   -0.0028923
12-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0075744   -0.0211513    0.0060024
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0004411   -0.0133900    0.0125077
12-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0088789   -0.0055418    0.0232996
12-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0192230   -0.0359494   -0.0024967
12-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0237186   -0.0425586   -0.0048787
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0113972   -0.0116616    0.0344559
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0265907   -0.0001393    0.0533208
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0158504   -0.0361696    0.0044688
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0110390   -0.0288401    0.0067620
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0045275   -0.0164075    0.0073524
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0065350   -0.0196500    0.0065800
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0014085   -0.0084559    0.0112729
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0006335   -0.0120316    0.0107646
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0074242   -0.0177018    0.0028534
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0116139   -0.0237941    0.0005664
12-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0187758   -0.0330325   -0.0045192
12-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0055911   -0.0041750    0.0153572
12-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0498036   -0.0728617   -0.0267456
12-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0023888   -0.0372693    0.0324918
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0068144   -0.0222151    0.0358439
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0248633    0.0061040    0.0436226
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0052045   -0.0158344    0.0054254
12-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0117865   -0.0241270    0.0005540
12-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm           0.0005036   -0.0057721    0.0067793
12-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm           0.0027747   -0.0042454    0.0097948
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0016047   -0.0047820    0.0079914
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0020035   -0.0049189    0.0089259
12-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0103759   -0.0277011    0.0069493
12-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0107265   -0.0240088    0.0025558
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm           0.0012552   -0.0035329    0.0060432
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0021923   -0.0074633    0.0030787
