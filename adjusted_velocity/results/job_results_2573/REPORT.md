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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mhtcm        n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=160             3     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <145             56     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [145-150)        87     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [150-155)        78     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [155-160)        20     244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160            22     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145             96     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)       191     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)       176     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)        81     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160            33     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145             80     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)       219     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)       197     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)       104     633
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160            21     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145            108     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)       236     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)       242     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)       113     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160           489   19963
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145           3537   19963
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)      6833   19963
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)      6605   19963
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)      2499   19963
0-3 months     ki1119695-PROBIT           BELARUS                        >=160         10223   12599
0-3 months     ki1119695-PROBIT           BELARUS                        <145              4   12599
0-3 months     ki1119695-PROBIT           BELARUS                        [145-150)        22   12599
0-3 months     ki1119695-PROBIT           BELARUS                        [150-155)       457   12599
0-3 months     ki1119695-PROBIT           BELARUS                        [155-160)      1893   12599
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160            55     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145              7     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)        30     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)        40     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)        48     180
0-3 months     ki1101329-Keneba           GAMBIA                         >=160           594    1184
0-3 months     ki1101329-Keneba           GAMBIA                         <145              3    1184
0-3 months     ki1101329-Keneba           GAMBIA                         [145-150)        16    1184
0-3 months     ki1101329-Keneba           GAMBIA                         [150-155)       181    1184
0-3 months     ki1101329-Keneba           GAMBIA                         [155-160)       390    1184
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160            26     724
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145            149     724
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)       255     724
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)       221     724
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)        73     724
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160            13     201
0-3 months     ki0047075b-MAL-ED          INDIA                          <145             23     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)        59     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)        72     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)        34     201
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160           147    1075
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145             90    1075
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)       218    1075
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)       330    1075
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)       290    1075
0-3 months     ki1135781-COHORTS          INDIA                          >=160           138    1721
0-3 months     ki1135781-COHORTS          INDIA                          <145            158    1721
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)       462    1721
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)       587    1721
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)       376    1721
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=160             2     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          <145             26     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [145-150)        67     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [150-155)        55     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [155-160)        25     175
0-3 months     ki0047075b-MAL-ED          PERU                           >=160            11     270
0-3 months     ki0047075b-MAL-ED          PERU                           <145             39     270
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)       100     270
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)        75     270
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)        45     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160           104     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145              8     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)        11     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)        34     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)        66     223
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160            59     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145              8     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)        22     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)        60     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)        80     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160          3430    6922
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145             46    6922
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)       226    6922
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)      1161    6922
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)      2059    6922
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=160             3     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <145             49     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [145-150)        84     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [150-155)        75     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [155-160)        20     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160            19     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145             89     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)       177     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)       164     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)        74     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160            30     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145             74     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)       195     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)       178     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)        96     573
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160            21     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145            106     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)       225     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)       235     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)       108     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160           334   12547
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145           2122   12547
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)      4221   12547
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)      4229   12547
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)      1641   12547
3-6 months     ki1119695-PROBIT           BELARUS                        >=160          8967   11063
3-6 months     ki1119695-PROBIT           BELARUS                        <145              4   11063
3-6 months     ki1119695-PROBIT           BELARUS                        [145-150)        22   11063
3-6 months     ki1119695-PROBIT           BELARUS                        [150-155)       401   11063
3-6 months     ki1119695-PROBIT           BELARUS                        [155-160)      1669   11063
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160            65     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145              7     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)        32     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)        48     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)        56     208
3-6 months     ki1101329-Keneba           GAMBIA                         >=160           648    1285
3-6 months     ki1101329-Keneba           GAMBIA                         <145              4    1285
3-6 months     ki1101329-Keneba           GAMBIA                         [145-150)        20    1285
3-6 months     ki1101329-Keneba           GAMBIA                         [150-155)       176    1285
3-6 months     ki1101329-Keneba           GAMBIA                         [155-160)       437    1285
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160            21     796
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145            176     796
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)       289     796
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)       231     796
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)        79     796
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160            12     228
3-6 months     ki0047075b-MAL-ED          INDIA                          <145             25     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)        68     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)        82     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)        41     228
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160           142    1037
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145             90    1037
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)       206    1037
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)       318    1037
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)       281    1037
3-6 months     ki1135781-COHORTS          INDIA                          >=160           139    1747
3-6 months     ki1135781-COHORTS          INDIA                          <145            160    1747
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)       478    1747
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)       593    1747
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)       377    1747
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160             5     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145             37     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)        83     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)        72     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)        36     233
3-6 months     ki0047075b-MAL-ED          PERU                           >=160            11     266
3-6 months     ki0047075b-MAL-ED          PERU                           <145             36     266
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)       101     266
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)        72     266
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)        46     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160           107     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145              9     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)        13     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)        37     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)        71     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160            60     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145              9     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)        23     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)        65     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)        82     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160           471    1634
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145             24    1634
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)       127    1634
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)       459    1634
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)       553    1634
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160          2647    5388
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145             36    5388
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)       178    5388
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)       903    5388
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)      1624    5388
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=160             4     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <145             48     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)        81     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)        68     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)        19     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160            18     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145             79     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)       163     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)       150     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)        72     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160            27     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145             69     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)       192     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)       167     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)        90     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160            20     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145            101     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)       220     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)       230     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)       105     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160           241    9809
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145           1657    9809
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)      3316    9809
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)      3332    9809
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)      1263    9809
6-12 months    ki1119695-PROBIT           BELARUS                        >=160          8768   10808
6-12 months    ki1119695-PROBIT           BELARUS                        <145              3   10808
6-12 months    ki1119695-PROBIT           BELARUS                        [145-150)        22   10808
6-12 months    ki1119695-PROBIT           BELARUS                        [150-155)       389   10808
6-12 months    ki1119695-PROBIT           BELARUS                        [155-160)      1626   10808
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160            58     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145              7     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)        29     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)        48     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)        52     194
6-12 months    ki1101329-Keneba           GAMBIA                         >=160           626    1215
6-12 months    ki1101329-Keneba           GAMBIA                         <145              3    1215
6-12 months    ki1101329-Keneba           GAMBIA                         [145-150)        17    1215
6-12 months    ki1101329-Keneba           GAMBIA                         [150-155)       169    1215
6-12 months    ki1101329-Keneba           GAMBIA                         [155-160)       400    1215
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160             9     158
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145             31     158
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)        54     158
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)        45     158
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)        19     158
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160            25     850
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145            191     850
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)       301     850
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)       247     850
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)        86     850
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160            11     223
6-12 months    ki0047075b-MAL-ED          INDIA                          <145             25     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)        68     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)        78     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)        41     223
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160           155    1043
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145             84    1043
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)       195    1043
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)       319    1043
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)       290    1043
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160            16     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145             47     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       108     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       111     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)        50     332
6-12 months    ki1135781-COHORTS          INDIA                          >=160           122    1509
6-12 months    ki1135781-COHORTS          INDIA                          <145            133    1509
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)       419    1509
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)       510    1509
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)       325    1509
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160           114     433
6-12 months    ki1148112-LCNI-5           MALAWI                         <145              6     433
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)        52     433
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)       107     433
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)       154     433
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=160             4     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          <145             36     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [145-150)        83     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [150-155)        72     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [155-160)        35     230
6-12 months    ki0047075b-MAL-ED          PERU                           >=160            11     236
6-12 months    ki0047075b-MAL-ED          PERU                           <145             33     236
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)        90     236
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)        61     236
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)        41     236
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160            99    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145            258    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)       759    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)       904    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)       399    2419
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160           100     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145              8     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)        13     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)        36     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)        71     228
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160            55     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145              8     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)        23     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)        64     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)        73     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160           317    1067
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145             18    1067
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)        78    1067
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)       294    1067
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)       360    1067
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160          1996    4144
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145             24    4144
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)       147    4144
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)       710    4144
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)      1267    4144
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160             4     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <145             43     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)        78     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)        63     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)        18     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160            16     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145             74     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)       144     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)       127     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)        60     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160            27     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145             58     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)       165     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)       138     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)        70     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160            13     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145             71     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)       161     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)       169     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)        81     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160           126    4636
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145            788    4636
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)      1548    4636
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)      1604    4636
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)       570    4636
12-24 months   ki1119695-PROBIT           BELARUS                        >=160          2042    2520
12-24 months   ki1119695-PROBIT           BELARUS                        <145              1    2520
12-24 months   ki1119695-PROBIT           BELARUS                        [145-150)         3    2520
12-24 months   ki1119695-PROBIT           BELARUS                        [150-155)        98    2520
12-24 months   ki1119695-PROBIT           BELARUS                        [155-160)       376    2520
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160            45     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145              7     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)        26     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)        41     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)        46     165
12-24 months   ki1101329-Keneba           GAMBIA                         >=160           580    1125
12-24 months   ki1101329-Keneba           GAMBIA                         <145              2    1125
12-24 months   ki1101329-Keneba           GAMBIA                         [145-150)        12    1125
12-24 months   ki1101329-Keneba           GAMBIA                         [150-155)       163    1125
12-24 months   ki1101329-Keneba           GAMBIA                         [155-160)       368    1125
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160            28     839
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145            184     839
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)       298     839
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)       246     839
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)        83     839
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160            12     224
12-24 months   ki0047075b-MAL-ED          INDIA                          <145             26     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)        68     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)        78     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)        40     224
12-24 months   ki1135781-COHORTS          INDIA                          >=160           120    1458
12-24 months   ki1135781-COHORTS          INDIA                          <145            131    1458
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)       404    1458
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)       488    1458
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)       315    1458
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160            85     309
12-24 months   ki1148112-LCNI-5           MALAWI                         <145              5     309
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)        37     309
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)        76     309
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)       106     309
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=160             4     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          <145             35     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)        83     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)        70     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)        34     226
12-24 months   ki0047075b-MAL-ED          PERU                           >=160             9     191
12-24 months   ki0047075b-MAL-ED          PERU                           <145             25     191
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)        73     191
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)        49     191
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)        35     191
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160            95    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145            234    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)       717    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)       840    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)       374    2260
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160           102     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145              7     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)        12     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)        34     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)        71     226
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160            51     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145              7     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)        21     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)        57     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)        71     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)         1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)         1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160           119     269
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145              4     269
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)        15     269
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)        53     269
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)        78     269


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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
![](/tmp/1248cc8d-e632-4de5-aa46-5415107f4dbd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1248cc8d-e632-4de5-aa46-5415107f4dbd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                4.1256604   3.9684384   4.2828823
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                4.2049612   3.6061732   4.8037491
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                4.0291409   3.7812512   4.2770306
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                4.0592003   3.8427061   4.2756946
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                4.0912917   3.8740125   4.3085709
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                3.7701545   3.5659956   3.9743134
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                3.4633615   3.2692988   3.6574243
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                3.5039183   3.3808549   3.6269817
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                3.6371148   3.5246210   3.7496087
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                3.5652863   3.4245364   3.7060361
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                NA                3.6309575   3.4388413   3.8230738
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 NA                3.2864966   3.1236546   3.4493386
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                3.3678209   3.2684788   3.4671631
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                3.2675590   3.1467701   3.3883478
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                3.2347438   3.0907254   3.3787621
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                3.5590456   3.4257198   3.6923713
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                3.1088125   2.7681537   3.4494713
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                3.2939946   2.7259002   3.8620890
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                3.4415856   3.2587982   3.6243730
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                3.3647277   3.2047487   3.5247067
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                3.4568973   3.3026658   3.6111288
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                3.5357309   3.3202249   3.7512370
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                3.4800048   3.2776586   3.6823510
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                3.5358008   3.3965560   3.6750457
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                3.4574925   3.3296165   3.5853684
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                3.6651024   3.5838677   3.7463371
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                3.5336291   3.4624818   3.6047765
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                3.5447082   3.4797238   3.6096926
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                3.5794681   3.5152304   3.6437057
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                3.6609569   3.6086045   3.7133093
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                3.5673984   3.2475176   3.8872793
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                3.1660651   3.0571507   3.2749795
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                3.2610240   3.1681450   3.3539029
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                3.3790146   3.2891034   3.4689258
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                3.3748192   3.2218290   3.5278094
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                3.6416721   3.4745527   3.8087915
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                3.2457955   3.1451999   3.3463911
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                3.4494665   3.3825254   3.5164077
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                3.4814131   3.4189215   3.5439047
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                3.6346898   3.5478970   3.7214827
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                3.4263360   3.2426424   3.6100296
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                3.1884778   3.0936666   3.2832889
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                3.2501081   3.1848652   3.3153510
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                3.3591455   3.2960560   3.4222349
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                3.3549854   3.2661632   3.4438076
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                3.4478839   3.4163741   3.4793936
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                3.1165662   2.9303177   3.3028147
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                3.1679811   3.0502234   3.2857387
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                3.2247756   3.1733724   3.2761788
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                3.3044972   3.2643157   3.3446788
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                2.6964415   2.4765966   2.9162864
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                2.5709480   2.4851297   2.6567662
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                2.6006772   2.5325324   2.6688221
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                2.6243127   2.5439736   2.7046518
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                2.7868578   2.6698808   2.9038347
0-3 months     ki1135781-COHORTS          INDIA                          >=160                NA                3.6340642   3.5412233   3.7269051
0-3 months     ki1135781-COHORTS          INDIA                          <145                 NA                3.4854649   3.3958719   3.5750580
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                3.4820403   3.4306897   3.5333909
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                3.5545981   3.5050977   3.6040985
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                3.6131741   3.5548694   3.6714788
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                3.8664837   3.8219232   3.9110442
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                3.6292522   3.6092777   3.6492267
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                3.7015537   3.6863755   3.7167319
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                3.7457984   3.7301257   3.7614711
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                3.7916080   3.7662919   3.8169241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                2.1388310   2.0030643   2.2745977
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                1.9506695   1.3593465   2.5419925
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                2.0639493   1.9052728   2.2226258
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                2.2707819   2.1104812   2.4310826
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                2.1254121   1.9594501   2.2913741
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                1.6546965   1.4710207   1.8383723
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                1.8008783   1.5819956   2.0197610
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                1.8435317   1.7331266   1.9539368
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                1.8987562   1.8091260   1.9883864
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                1.9497433   1.7950656   2.1044209
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                NA                2.1198536   1.7638750   2.4758322
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 NA                2.0319087   1.9231798   2.1406376
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            NA                1.9110777   1.8267776   1.9953777
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            NA                2.0377560   1.9407276   2.1347845
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            NA                1.9229563   1.8078744   2.0380382
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                NA                1.7043634   1.4523137   1.9564130
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 NA                2.0155070   1.8495390   2.1814750
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                1.9615575   1.8658763   2.0572388
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                2.1049918   1.9839574   2.2260261
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                2.0821055   1.8833266   2.2808843
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                1.9354223   1.8154678   2.0553768
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                1.7537480   1.3741355   2.1333604
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                2.0233722   1.7458102   2.3009342
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                2.0396824   1.8385045   2.2408604
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                2.0107400   1.8568535   2.1646265
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.9015893   1.7594775   2.0437011
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.5915613   1.2634921   1.9196304
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                1.6680900   1.4014881   1.9346918
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.8635865   1.7460694   1.9811036
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                1.8228409   1.7139135   1.9317683
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                2.0460912   1.9408848   2.1512977
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                1.9741408   1.8197358   2.1285458
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                1.9063604   1.8314860   1.9812348
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                1.9391424   1.8868869   1.9913978
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                1.9584610   1.8942618   2.0226603
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                1.8797019   1.6737656   2.0856381
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                1.8083778   1.7117690   1.9049866
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                1.8207074   1.7375920   1.9038227
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                1.8508301   1.7650862   1.9365740
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                1.8755803   1.7627843   1.9883763
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                1.9334381   1.8011730   2.0657031
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                1.8880555   1.7954730   1.9806381
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                1.9951873   1.9376934   2.0526813
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                1.9166854   1.8578194   1.9755515
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                1.9523835   1.8696350   2.0351320
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                1.9449117   1.7854041   2.1044193
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                1.9933676   1.9028585   2.0838767
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                2.0071721   1.9440487   2.0702956
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                2.0273756   1.9668059   2.0879454
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                2.0033578   1.9148434   2.0918723
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.8355821   1.7733630   1.8978011
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.6157139   1.3765271   1.8549007
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                1.8205868   1.6966219   1.9445517
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.7738318   1.7081548   1.8395088
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                1.7942306   1.7302582   1.8582031
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                2.0043965   1.9747450   2.0340479
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                1.9344062   1.7353667   2.1334457
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                1.8583706   1.7555430   1.9611982
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                1.9711941   1.9219484   2.0204397
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                1.9523868   1.9155741   1.9891995
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                1.6732759   1.5512644   1.7952874
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                1.7521972   1.6902395   1.8141549
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                1.7165196   1.6720101   1.7610291
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                1.7390653   1.6869479   1.7911827
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                1.9089539   1.8218623   1.9960455
3-6 months     ki1135781-COHORTS          INDIA                          >=160                NA                1.9510013   1.8680512   2.0339513
3-6 months     ki1135781-COHORTS          INDIA                          <145                 NA                1.8365111   1.7563709   1.9166513
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                1.8602348   1.8171070   1.9033626
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                1.8694302   1.8296779   1.9091824
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                1.9067064   1.8561659   1.9572469
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                2.0092131   1.9621294   2.0562968
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                1.8726989   1.8479872   1.8974106
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                1.9123784   1.8946732   1.9300837
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                1.9271393   1.9100803   1.9441982
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                1.9604408   1.9339862   1.9868955
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                NA                1.3781656   1.3011077   1.4552236
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 NA                1.3235067   1.0702051   1.5768082
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                1.4673293   1.3230110   1.6116476
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                1.3226147   1.2345800   1.4106494
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                1.4180020   1.3324131   1.5035908
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                NA                1.2715711   1.1781577   1.3649844
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 NA                1.1163269   1.0755943   1.1570595
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            NA                1.1360141   1.0885353   1.1834929
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            NA                1.0870498   1.0442826   1.1298169
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            NA                1.0970660   1.0544842   1.1396478
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                NA                1.2840381   1.1320699   1.4360064
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 NA                1.1445008   1.0640378   1.2249639
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            NA                1.2004910   1.1493530   1.2516291
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            NA                1.2449606   1.1768254   1.3130958
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            NA                1.2211791   1.1439427   1.2984156
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                1.2204666   1.1743230   1.2666103
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                1.2966257   1.0876935   1.5055579
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                1.0656262   0.9400498   1.1912027
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                1.0722393   0.9594702   1.1850083
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                1.2009602   1.1354195   1.2665009
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.0167577   0.9390688   1.0944466
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.1569273   1.0408032   1.2730514
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.9461741   0.8164143   1.0759339
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.0285335   0.9607176   1.0963493
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.9908422   0.9322953   1.0493891
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                1.1239374   1.0929416   1.1549332
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                1.0076081   0.9247718   1.0904445
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                1.0539701   0.9891838   1.1187564
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                1.1167419   1.0767944   1.1566895
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                1.1362186   1.1078122   1.1646249
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                0.9268480   0.8410582   1.0126378
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 NA                1.2552984   1.0036155   1.5069813
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            NA                1.0510580   0.9093378   1.1927782
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            NA                0.9433638   0.8449218   1.0418057
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            NA                0.9239709   0.7862732   1.0616686
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                1.2718002   1.1862862   1.3573143
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                1.0911189   1.0369669   1.1452709
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                1.1384606   1.1059279   1.1709934
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                1.2053804   1.1623661   1.2483947
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                1.2219340   1.1693756   1.2744924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                1.2243241   1.1509298   1.2977184
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                1.1036742   1.0538143   1.1535341
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                1.1639497   1.1357646   1.1921347
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                1.1730141   1.1440220   1.2020061
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                1.2065109   1.1710659   1.2419559
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                1.3576804   1.2767000   1.4386608
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                1.2071616   1.1645045   1.2498187
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                1.1949062   1.1658608   1.2239516
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                1.2313695   1.2018049   1.2609341
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                1.2735594   1.2319390   1.3151798
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                1.2475664   1.2117462   1.2833866
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                1.0538465   0.9600465   1.1476464
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                1.1410350   1.0644228   1.2176473
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                1.1872003   1.1478723   1.2265284
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                1.1808245   1.1431936   1.2184553
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                NA                1.2517441   1.0986920   1.4047962
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 NA                1.0262997   0.9629957   1.0896038
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            NA                1.0733452   1.0246528   1.1220377
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            NA                1.0939458   1.0273733   1.1605184
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            NA                1.2119052   1.1176976   1.3061129
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                1.2095150   1.1931406   1.2258893
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                1.2169641   1.0306941   1.4032341
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                1.1684588   1.1180716   1.2188461
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                1.1614047   1.1356606   1.1871488
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                1.2034387   1.1825846   1.2242927
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                NA                1.1186652   1.0430760   1.1942544
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.9776886   0.9462133   1.0091639
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                1.0377822   1.0090441   1.0665202
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                1.0098608   0.9793021   1.0404195
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                1.0553274   1.0076168   1.1030380
6-12 months    ki1135781-COHORTS          INDIA                          >=160                NA                1.1958433   1.1439623   1.2477243
6-12 months    ki1135781-COHORTS          INDIA                          <145                 NA                1.0417013   0.9986134   1.0847893
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                1.0681495   1.0398582   1.0964407
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                1.0781762   1.0518143   1.1045381
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                1.1644850   1.1345250   1.1944449
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                1.1628097   1.1076637   1.2179557
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                1.0017627   0.9658304   1.0376950
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                1.0534929   1.0328060   1.0741798
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                1.0783619   1.0589685   1.0977554
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                1.1004025   1.0711523   1.1296528
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                NA                1.3120646   1.2723307   1.3517986
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 NA                1.2852577   1.1818359   1.3886795
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            NA                1.2798000   1.2136837   1.3459163
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            NA                1.2441638   1.1977279   1.2905997
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            NA                1.3021354   1.2598919   1.3443790
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                1.1596983   1.1267535   1.1926430
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                1.0778392   1.0619938   1.0936845
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                1.0988318   1.0885473   1.1091164
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                1.1111267   1.1004482   1.1218051
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                1.1408883   1.1242133   1.1575632
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                NA                1.0051180   0.9405593   1.0696768
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 NA                1.0666364   0.9008622   1.2324107
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                1.0040791   0.9184972   1.0896611
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                0.9462884   0.8951338   0.9974430
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                0.9645084   0.9118353   1.0171815
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                NA                1.0332071   0.9675565   1.0988576
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 NA                0.7889575   0.7424153   0.8354998
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            NA                0.8611379   0.8297895   0.8924863
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            NA                0.8813283   0.8575464   0.9051102
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            NA                0.9037083   0.8736699   0.9337466
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                0.8481541   0.7644252   0.9318831
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 NA                0.7649990   0.7248785   0.8051194
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            NA                0.8390725   0.8024976   0.8756473
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            NA                0.8255202   0.7899817   0.8610587
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            NA                0.8947356   0.8491455   0.9403257
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                0.8824654   0.8502960   0.9146347
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                0.8942208   0.8519448   0.9364968
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                0.8527538   0.7618143   0.9436933
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                0.9140589   0.8425407   0.9855772
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                0.8423167   0.8041991   0.8804344
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.8183577   0.7745913   0.8621241
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.7547575   0.6957282   0.8137867
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.7182768   0.6393288   0.7972248
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.7330756   0.6913182   0.7748329
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.7709496   0.7296308   0.8122683
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                0.8644713   0.8048097   0.9241330
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                0.7380986   0.7061394   0.7700577
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                0.7285800   0.7029133   0.7542468
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                0.7521002   0.7284070   0.7757935
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                0.7851364   0.7499569   0.8203158
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.8803441   0.8379872   0.9227010
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.8126493   0.7817596   0.8435391
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.8533725   0.8338618   0.8728833
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.8629158   0.8419234   0.8839082
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.8816440   0.8537695   0.9095185
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                0.8900479   0.8185672   0.9615286
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                0.8318083   0.8025243   0.8610924
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                0.8593055   0.8396216   0.8789894
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                0.8756359   0.8548424   0.8964293
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                0.9103230   0.8836590   0.9369870
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.8354826   0.7782234   0.8927418
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.7425527   0.7224862   0.7626191
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.7822993   0.7655682   0.7990304
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.7742572   0.7533948   0.7951196
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.8245070   0.7929784   0.8560357
12-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.8841768   0.8579958   0.9103579
12-24 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.8105893   0.7871817   0.8339970
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.8174507   0.8032678   0.8316336
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.8329686   0.8190609   0.8468763
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.8563224   0.8387342   0.8739107
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.7703662   0.7378531   0.8028793
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.6642840   0.6431417   0.6854263
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6963084   0.6830795   0.7095374
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.7115056   0.7000295   0.7229817
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.7203685   0.7035152   0.7372217
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                NA                0.8410635   0.8107212   0.8714058
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 NA                0.6320363   0.5431281   0.7209445
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            NA                0.7789622   0.7154042   0.8425201
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            NA                0.8207059   0.7901268   0.8512850
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            NA                0.8632837   0.8364050   0.8901624
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.8465887   0.8178169   0.8753605
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.7703700   0.7561604   0.7845796
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.7911818   0.7831417   0.7992218
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.8013960   0.7928391   0.8099529
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.8254754   0.8113655   0.8395852


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4538369   3.3628913   3.5447825
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6022402   3.5794697   3.6250107
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3521368   3.3299261   3.3743476
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6132548   2.5694549   2.6570546
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5402494   3.5115937   3.5689050
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7185523   3.7082032   3.7289014
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
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9805863   1.9598899   2.0012827
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7631705   1.7322799   1.7940611
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8785516   1.8544247   1.9026785
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9199731   1.9095005   1.9304457
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2115356   1.1787814   1.2442898
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1869461   1.1457857   1.2281065
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.1018999   1.0898767   1.1139231
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1958459   1.1742218   1.2174700
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0968085   1.0636663   1.1299508
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1981254   1.1867249   1.2095258
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0175745   1.0002443   1.0349046
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.1007860   1.0855079   1.1160641
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2789407   1.2528587   1.3050227
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1068702   1.1001217   1.1136187
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8733901   0.8508889   0.8958912
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7771287   0.7660708   0.7881866
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8368201   0.8286359   0.8450042
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406522   0.8238073   0.8574972
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7968513   0.7915360   0.8021667


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0793008   -0.5393924    0.6979940
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0965195   -0.3887103    0.1956713
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0664600   -0.3343667    0.2014466
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0343687   -0.3021474    0.2334100
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.3067930   -0.5870713   -0.0265146
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.2662362   -0.5008179   -0.0316545
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.1330397   -0.3685300    0.1024506
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.2048682   -0.4533190    0.0435826
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.3444609   -0.5963431   -0.0925787
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.2631366   -0.4793889   -0.0468843
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.3633986   -0.5904009   -0.1363962
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.3962138   -0.6364978   -0.1559297
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.4502331   -0.8155017   -0.0849645
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.2650509   -0.8480333    0.3179314
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.1174600   -0.3433875    0.1084676
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.1943178   -0.4019447    0.0133090
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.0788336   -0.1846256    0.3422929
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              0.0231075   -0.2294355    0.2756505
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0789035   -0.1266998    0.2845069
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160              0.0005951   -0.1969763    0.1981666
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.1314733   -0.2700445    0.0070980
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.1203942   -0.2466124    0.0058239
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0856343   -0.1953480    0.0240794
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0041455   -0.0792396    0.0709486
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.4013333   -0.7391613   -0.0635053
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.3063744   -0.6389022    0.0261533
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.1883839   -0.5199329    0.1431652
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.1925792   -0.5472309    0.1620725
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.3958766   -0.5906582   -0.2010950
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.1922055   -0.3721606   -0.0122505
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.1602590   -0.3385785    0.0180604
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0069822   -0.1952361    0.1812716
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.2378583   -0.4446068   -0.0311097
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.1762279   -0.3710546    0.0185989
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0671906   -0.2615171    0.1271360
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0713506   -0.2755433    0.1328421
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             -0.3313177   -0.5202201   -0.1424153
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.2799028   -0.4017680   -0.1580376
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.2231083   -0.2833419   -0.1628746
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.1433866   -0.1943784   -0.0923949
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.1254935   -0.3605652    0.1095781
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0957642   -0.3257673    0.1342389
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0721288   -0.3055413    0.1612837
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.0904163   -0.1577391    0.3385716
0-3 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.1485993   -0.2775117   -0.0196869
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.1520239   -0.2579694   -0.0460784
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0794661   -0.1845326    0.0256004
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0208901   -0.1304804    0.0887001
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.2372315   -0.2849794   -0.1894836
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.1649300   -0.2115807   -0.1182792
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.1206853   -0.1667994   -0.0745711
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0748757   -0.1260868   -0.0236645
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.1881615   -0.7948666    0.4185435
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0748817   -0.2837065    0.1339431
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160              0.1319509   -0.0781151    0.3420169
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0134189   -0.2278384    0.2010006
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160              0.1461818   -0.1392626    0.4316262
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160              0.1888352   -0.0250923    0.4027627
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160              0.2440597    0.0398649    0.4482544
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160              0.2950468    0.0554065    0.5346870
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 >=160             -0.0879449   -0.4609719    0.2850821
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            >=160             -0.2087759   -0.5737403    0.1561884
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            >=160             -0.0820976   -0.4488575    0.2846623
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            >=160             -0.1968973   -0.5701449    0.1763503
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 >=160              0.3111437    0.0095882    0.6126991
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160              0.2571942   -0.0120242    0.5264126
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160              0.4006284    0.1214576    0.6797993
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160              0.3777421    0.0570335    0.6984507
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.1816743   -0.5797319    0.2163832
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160              0.0879499   -0.2137448    0.3896446
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.1042602   -0.1299488    0.3384691
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160              0.0753177   -0.1193079    0.2699434
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.3100280   -0.6675545    0.0474984
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.2334993   -0.5356124    0.0686138
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0380028   -0.2224100    0.1464045
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0787484   -0.2578041    0.1003073
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0719504   -0.2658868    0.1219859
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.1397308   -0.2730790   -0.0063827
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.1069489   -0.1988171   -0.0150807
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0876302   -0.2025261    0.0272657
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.0713241   -0.2976002    0.1549521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.0589945   -0.2811109    0.1631219
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0288718   -0.2515655    0.1938219
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0041216   -0.2384083    0.2301651
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0453825   -0.2067181    0.1159531
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              0.0617493   -0.0824462    0.2059447
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0167526   -0.1615058    0.1280005
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160              0.0189454   -0.1370742    0.1749650
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160              0.0484559   -0.1348739    0.2317857
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160              0.0622604   -0.1092703    0.2337911
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160              0.0824639   -0.0881779    0.2531057
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160              0.0584461   -0.1238221    0.2407144
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.2198682   -0.4668962    0.0271598
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0149953   -0.1534338    0.1234432
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0617503   -0.1519982    0.0284977
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0413514   -0.1304421    0.0477393
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             -0.0699902   -0.2712244    0.1312440
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.1460258   -0.2530105   -0.0390411
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0332024   -0.0906232    0.0242184
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0520096   -0.0992383   -0.0047810
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160              0.0789213   -0.0575468    0.2153893
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160              0.0432437   -0.0861859    0.1726732
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160              0.0657894   -0.0665706    0.1981494
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.2356780    0.0858005    0.3855555
3-6 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.1144902   -0.2296604    0.0006800
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0907665   -0.1840902    0.0025572
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0815711   -0.1734350    0.0102927
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0442949   -0.1411678    0.0525780
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.1365142   -0.1887673   -0.0842611
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0968347   -0.1466583   -0.0470110
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0820738   -0.1326376   -0.0315100
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0487723   -0.1020624    0.0045179
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.0546590   -0.3194000    0.2100821
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160              0.0891637   -0.0743205    0.2526479
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0555509   -0.1724148    0.0613130
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160              0.0398363   -0.0753548    0.1550275
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.1552442   -0.2562048   -0.0542835
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.1355570   -0.2392019   -0.0319121
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.1845213   -0.2863316   -0.0827110
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.1745050   -0.2760243   -0.0729858
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.1395373   -0.3115173    0.0324427
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0835471   -0.2438974    0.0768032
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.0390775   -0.2056457    0.1274907
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.0628590   -0.2333411    0.1076232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0761590   -0.1371226    0.2894406
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.1548404   -0.2875881   -0.0220927
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.1482274   -0.2696603   -0.0267944
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0195065   -0.0977351    0.0587222
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.1401696    0.0004060    0.2799333
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0705836   -0.2218158    0.0806487
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0117758   -0.0912128    0.1147644
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0259155   -0.1230358    0.0712049
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.1163293   -0.2107082   -0.0219504
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0699673   -0.1361064   -0.0038282
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0071955   -0.0703892    0.0559982
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160              0.0122812   -0.0119811    0.0365435
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 >=160              0.3284504    0.0633423    0.5935586
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            >=160              0.1242100   -0.0405527    0.2889728
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            >=160              0.0165158   -0.1136416    0.1466732
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            >=160             -0.0028771   -0.1649530    0.1591988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.1806813   -0.2816833   -0.0796794
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.1333396   -0.2248977   -0.0417816
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0664199   -0.1620555    0.0292158
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0498662   -0.1499686    0.0502362
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.1206499   -0.2092472   -0.0320527
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.0603744   -0.1389421    0.0181932
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0513100   -0.1301811    0.0275610
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0178132   -0.0992623    0.0636358
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.1505188   -0.2420637   -0.0589739
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.1627742   -0.2487561   -0.0767923
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.1263109   -0.2123773   -0.0402444
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0841210   -0.1752129    0.0069709
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.1937200   -0.2938676   -0.0935723
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.1065314   -0.1909560   -0.0221068
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0603661   -0.1133204   -0.0074117
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0667419   -0.1184349   -0.0150490
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 >=160             -0.2254444   -0.3910671   -0.0598216
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            >=160             -0.1783989   -0.3390019   -0.0177959
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            >=160             -0.1577983   -0.3246890    0.0090925
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            >=160             -0.0398389   -0.2195427    0.1398650
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              0.0074492   -0.1795243    0.1944226
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.0410561   -0.0939975    0.0118852
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0481103   -0.0785828   -0.0176378
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0060763   -0.0325331    0.0203805
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.1409766   -0.2228624   -0.0590908
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0808830   -0.1615234   -0.0002426
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.1088044   -0.1901897   -0.0274190
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             -0.0633378   -0.1524451    0.0257695
6-12 months    ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <145                 >=160             -0.1541420   -0.2215127   -0.0867712
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.1276939   -0.1867199   -0.0686678
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.1176671   -0.1758085   -0.0595257
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0313583   -0.0912125    0.0284958
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.1610470   -0.2268522   -0.0952419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.1093168   -0.1681922   -0.0504414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0844477   -0.1428560   -0.0260394
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0624071   -0.1247474   -0.0000669
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 >=160             -0.0268070   -0.1370448    0.0834308
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            >=160             -0.0322646   -0.1096112    0.0450819
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            >=160             -0.0679009   -0.1287043   -0.0070975
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            >=160             -0.0099292   -0.0674984    0.0476399
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0818591   -0.1186537   -0.0450645
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0608664   -0.0947660   -0.0269669
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0485716   -0.0825888   -0.0145544
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0188100   -0.0563184    0.0186984
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0615184   -0.1163170    0.2393538
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0010389   -0.1081318    0.1060539
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0588296   -0.1411181    0.0234588
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0406097   -0.1239064    0.0426871
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.2442495   -0.3247440   -0.1637550
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.1720691   -0.2447546   -0.0993837
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.1518787   -0.2216703   -0.0820872
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.1294988   -0.2016524   -0.0573451
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.0831552   -0.1757088    0.0093985
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0090817   -0.1003162    0.0821528
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.0226339   -0.1135452    0.0682773
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            >=160              0.0465815   -0.0485088    0.1416718
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0117554   -0.0413520    0.0648628
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.0297116   -0.1261790    0.0667559
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.0315936   -0.0467874    0.1099746
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0401486   -0.0900419    0.0097446
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.0636003   -0.1369782    0.0097777
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.1000809   -0.1902790   -0.0098828
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0852821   -0.1454798   -0.0250845
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0474082   -0.1073226    0.0125062
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.1263728   -0.1940750   -0.0586705
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.1358913   -0.2008098   -0.0709728
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.1123711   -0.1766201   -0.0481221
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0793349   -0.1484980   -0.0101719
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0676948   -0.1200763   -0.0153132
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.0269716   -0.0734731    0.0195300
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0174283   -0.0646032    0.0297466
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160              0.0012999   -0.0493014    0.0519012
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0582396   -0.1355125    0.0190334
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0307424   -0.1047759    0.0432911
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0144120   -0.0889586    0.0601346
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160              0.0202751   -0.0561367    0.0966869
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0929299   -0.1534392   -0.0324206
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0531833   -0.1126405    0.0062740
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0612254   -0.1218736   -0.0005772
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             -0.0109755   -0.0759916    0.0540405
12-24 months   ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0735875   -0.1086857   -0.0384893
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0667261   -0.0964459   -0.0370063
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0512082   -0.0807987   -0.0216178
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0278544   -0.0593470    0.0036383
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.1060822   -0.1448585   -0.0673058
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.0740578   -0.1091546   -0.0389609
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0588606   -0.0933353   -0.0243858
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0499977   -0.0866172   -0.0133782
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 >=160             -0.2090272   -0.3029199   -0.1151346
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            >=160             -0.0621013   -0.1326485    0.0084459
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            >=160             -0.0203576   -0.0634563    0.0227411
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            >=160              0.0222202   -0.0182673    0.0627076
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0762187   -0.1081434   -0.0442940
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0554070   -0.0852257   -0.0255882
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0451927   -0.0756012   -0.0147842
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0211134   -0.0538458    0.0116191
