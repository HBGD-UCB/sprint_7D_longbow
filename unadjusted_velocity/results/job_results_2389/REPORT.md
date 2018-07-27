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







# Results Detail

## Results Plots
![](/tmp/03d163d5-9607-4996-b001-90e0246f097d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/03d163d5-9607-4996-b001-90e0246f097d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                 0.1914638    0.1094159    0.2735118
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                 0.2095571   -0.1218865    0.5410008
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.2066359    0.0716056    0.3416663
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                 0.1823738    0.0756306    0.2891170
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                 0.1921483    0.0838407    0.3004559
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                 0.1116271   -0.0600430    0.2832973
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0734555   -0.2174133    0.0705022
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0615754   -0.1306119    0.0074611
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                 0.0218217   -0.0404176    0.0840609
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0534210   -0.1328918    0.0260498
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                NA                -0.0411905   -0.1816474    0.0992663
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 NA                -0.1753237   -0.2634215   -0.0872259
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                -0.1238392   -0.1756705   -0.0720078
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                -0.1798607   -0.2429961   -0.1167254
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                -0.2064397   -0.2845569   -0.1283226
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0507873   -0.1181567    0.0165821
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                -0.2514887   -0.4754889   -0.0274884
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                -0.1663646   -0.4642065    0.1314774
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                -0.0887137   -0.1713206   -0.0061068
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                -0.1504137   -0.2275361   -0.0732913
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0773635   -0.1536133   -0.0011138
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                 0.0407854   -0.1046300    0.1862009
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0076100   -0.1036920    0.0884720
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0281370   -0.1040998    0.0478259
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0559796   -0.1250997    0.0131405
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.0397701   -0.0044110    0.0839512
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                 0.0096256   -0.0282346    0.0474857
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                -0.0029426   -0.0344233    0.0285380
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                 0.0007002   -0.0301191    0.0315195
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                 0.0338329    0.0087089    0.0589570
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0299740   -0.1853760    0.1254280
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.1683853   -0.2270743   -0.1096962
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.1399543   -0.1872292   -0.0926794
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0844133   -0.1301488   -0.0386778
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.1112039   -0.1894928   -0.0329151
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                 0.0415693   -0.0408172    0.1239559
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.1089916   -0.1606554   -0.0573278
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0537917   -0.0854586   -0.0221248
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0474555   -0.0789038   -0.0160073
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                 0.0253456   -0.0141807    0.0648719
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                -0.0650611   -0.1794922    0.0493700
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                -0.1620791   -0.2105213   -0.1136370
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                -0.1363454   -0.1674438   -0.1052470
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                -0.0965577   -0.1270304   -0.0660850
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                -0.1193257   -0.1665594   -0.0720920
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                -0.1101944   -0.1259916   -0.0943971
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                -0.2840726   -0.4075963   -0.1605490
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                -0.2406514   -0.3035365   -0.1777663
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                -0.2095043   -0.2357167   -0.1832919
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                -0.1768669   -0.1969729   -0.1567610
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.5391519   -0.6519697   -0.4263342
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.5544779   -0.6028733   -0.5060824
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.5397229   -0.5758540   -0.5035918
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.5606934   -0.6027807   -0.5186061
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.4743692   -0.5384472   -0.4102911
0-3 months     ki1135781-COHORTS          INDIA                          >=160                NA                -0.0325718   -0.0809979    0.0158542
0-3 months     ki1135781-COHORTS          INDIA                          <145                 NA                -0.0922127   -0.1399599   -0.0444654
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0886020   -0.1151392   -0.0620648
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.0476661   -0.0722526   -0.0230796
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0357558   -0.0648181   -0.0066935
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.1230385    0.0981362    0.1479408
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                 0.0405677    0.0307661    0.0503692
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                 0.0651718    0.0578413    0.0725023
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                 0.0797874    0.0723973    0.0871775
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                 0.0932855    0.0808107    0.1057603
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                 0.0503232   -0.0122752    0.1129216
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                -0.0278073   -0.2896522    0.2340376
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.0411488   -0.0300981    0.1123956
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                 0.1155900    0.0402457    0.1909343
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                 0.0471529   -0.0299172    0.1242231
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                -0.1324347   -0.2127061   -0.0521633
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0763747   -0.1826763    0.0299269
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0429874   -0.0954835    0.0095087
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                -0.0316300   -0.0735079    0.0102480
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0120352   -0.0835866    0.0595162
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                NA                 0.0470385   -0.1576612    0.2517381
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 NA                 0.0173854   -0.0430225    0.0777933
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            NA                -0.0477260   -0.0906454   -0.0048066
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            NA                 0.0030922   -0.0476287    0.0538131
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            NA                -0.0594070   -0.1241001    0.0052862
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                NA                -0.1242534   -0.2482422   -0.0002646
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 NA                 0.0231981   -0.0551216    0.1015178
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                 0.0046488   -0.0405486    0.0498462
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                 0.0674584    0.0090045    0.1259123
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                 0.0534794   -0.0399678    0.1469267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0273593   -0.0839551    0.0292366
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                -0.0838175   -0.2499932    0.0823582
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                 0.0337350   -0.0962167    0.1636867
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                 0.0379150   -0.0543451    0.1301750
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                 0.0116964   -0.0630465    0.0864394
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0447481   -0.1121195    0.0226232
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.1535902   -0.3048128   -0.0023676
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.1311189   -0.2583974   -0.0038403
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0566020   -0.1129519   -0.0002521
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0743677   -0.1263945   -0.0223409
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.0209618   -0.0266925    0.0686161
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                 0.0111515   -0.0612287    0.0835317
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                -0.0272702   -0.0593927    0.0048522
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                -0.0153499   -0.0355769    0.0048771
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                -0.0130970   -0.0421620    0.0159680
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0583167   -0.1675480    0.0509145
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.0581722   -0.1062090   -0.0101355
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.0535690   -0.0928527   -0.0142852
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0429315   -0.0835547   -0.0023084
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.0515302   -0.1093684    0.0063079
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                -0.0255386   -0.0963073    0.0452301
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.0294023   -0.0765748    0.0177702
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0080758   -0.0353767    0.0192252
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0492181   -0.0782174   -0.0202188
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                -0.0256483   -0.0683849    0.0170884
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                -0.0210898   -0.1040627    0.0618831
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                 0.0291290   -0.0147917    0.0730497
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                 0.0266615   -0.0036350    0.0569580
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                 0.0339805    0.0058968    0.0620643
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                 0.0183232   -0.0246659    0.0613123
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0755028   -0.1050010   -0.0460045
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.1934814   -0.3496892   -0.0372736
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0639252   -0.1249461   -0.0029042
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0896544   -0.1210009   -0.0583079
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0853757   -0.1152152   -0.0555363
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0080538   -0.0059198    0.0220274
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                 0.0166518   -0.0998205    0.1331240
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                -0.0343246   -0.0866569    0.0180076
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                 0.0065559   -0.0169846    0.0300963
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                -0.0076043   -0.0249718    0.0097631
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.0912305   -0.1677040   -0.0147570
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.0891858   -0.1211381   -0.0572335
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.1093085   -0.1321618   -0.0864552
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.1076424   -0.1350668   -0.0802180
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.0276985   -0.0802379    0.0248409
3-6 months     ki1135781-COHORTS          INDIA                          >=160                NA                -0.0254741   -0.0663634    0.0154151
3-6 months     ki1135781-COHORTS          INDIA                          <145                 NA                -0.0706486   -0.1108896   -0.0304075
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0554647   -0.0759501   -0.0349793
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.0549782   -0.0737270   -0.0362294
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0423750   -0.0667435   -0.0180065
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.0200336   -0.0031053    0.0431724
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                -0.0142810   -0.0258457   -0.0027163
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                -0.0039447   -0.0122592    0.0043698
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                -0.0034253   -0.0114652    0.0046146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                 0.0062910   -0.0060684    0.0186505
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                NA                -0.0012289   -0.0337277    0.0312700
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 NA                -0.0201015   -0.1253988    0.0851958
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.0443167   -0.0126344    0.1012678
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                -0.0178315   -0.0569147    0.0212516
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                 0.0203118   -0.0161851    0.0568087
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                NA                -0.0405759   -0.1045966    0.0234448
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0711708   -0.0978651   -0.0444766
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0630420   -0.0870422   -0.0390419
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            NA                -0.0897880   -0.1106651   -0.0689110
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0973899   -0.1197220   -0.0750579
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                NA                -0.0136656   -0.0787283    0.0513971
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 NA                -0.0601851   -0.0941831   -0.0261871
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            NA                -0.0395592   -0.0613130   -0.0178055
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            NA                -0.0240196   -0.0547025    0.0066633
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            NA                -0.0369680   -0.0695058   -0.0044302
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0468084   -0.0672626   -0.0263542
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                -0.0045149   -0.1254393    0.1164096
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                -0.1034809   -0.1724939   -0.0344679
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                -0.0912256   -0.1520664   -0.0303848
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                -0.0438978   -0.0739944   -0.0138012
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.1268926   -0.1597113   -0.0940739
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.0613810   -0.1156035   -0.0071585
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.1385427   -0.1955064   -0.0815790
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.1130079   -0.1419759   -0.0840399
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.1337815   -0.1590084   -0.1085546
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                -0.0822905   -0.0941393   -0.0704416
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                -0.1172855   -0.1634761   -0.0710949
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                -0.1030475   -0.1290770   -0.0770180
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                -0.0766571   -0.0940064   -0.0593078
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                -0.0738017   -0.0875632   -0.0600402
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                -0.1690695   -0.2112912   -0.1268477
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 NA                -0.0320028   -0.1484498    0.0844442
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            NA                -0.0833160   -0.1440961   -0.0225359
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            NA                -0.1373138   -0.1787664   -0.0958613
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            NA                -0.1482107   -0.2086469   -0.0877745
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0288594   -0.0677673    0.0100485
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.0729193   -0.0970831   -0.0487555
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.0634868   -0.0774837   -0.0494900
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0418257   -0.0601915   -0.0234599
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.0373713   -0.0606839   -0.0140588
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                -0.0492657   -0.0813376   -0.0171937
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.0758810   -0.0982365   -0.0535256
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0633910   -0.0751074   -0.0516745
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0631004   -0.0748836   -0.0513171
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                -0.0538939   -0.0702272   -0.0375607
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                 0.0138442   -0.0305828    0.0582712
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                -0.0331544   -0.0516010   -0.0147079
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                -0.0414434   -0.0540466   -0.0288402
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                -0.0316599   -0.0442480   -0.0190718
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                -0.0177851   -0.0360042    0.0004341
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0457093   -0.0612798   -0.0301388
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.1047057   -0.1588506   -0.0505607
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0739659   -0.1092038   -0.0387280
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0600670   -0.0776949   -0.0424391
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0670647   -0.0838443   -0.0502851
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                NA                -0.0272948   -0.0974483    0.0428588
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 NA                -0.1020108   -0.1283747   -0.0756469
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            NA                -0.0906253   -0.1100442   -0.0712063
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            NA                -0.0812491   -0.1108609   -0.0516372
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            NA                -0.0332939   -0.0713564    0.0047687
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                -0.0485536   -0.0555922   -0.0415150
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                -0.0325409   -0.1197787    0.0546968
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                -0.0461740   -0.0694908   -0.0228572
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                -0.0606077   -0.0717950   -0.0494205
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                -0.0447920   -0.0537548   -0.0358292
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.0841425   -0.1249619   -0.0433232
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.1202625   -0.1343406   -0.1061844
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.1001018   -0.1122597   -0.0879438
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.1163252   -0.1300272   -0.1026231
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.1063935   -0.1279283   -0.0848586
6-12 months    ki1135781-COHORTS          INDIA                          >=160                NA                -0.0634663   -0.0870090   -0.0399236
6-12 months    ki1135781-COHORTS          INDIA                          <145                 NA                -0.1043838   -0.1251110   -0.0836567
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0989227   -0.1110055   -0.0868399
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.0997571   -0.1108167   -0.0886975
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0720693   -0.0849313   -0.0592073
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                -0.0771104   -0.1040779   -0.0501430
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                -0.1178719   -0.1341311   -0.1016128
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                -0.1022491   -0.1111563   -0.0933418
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                -0.0982554   -0.1065087   -0.0900022
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                -0.0934283   -0.1062673   -0.0805893
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                NA                -0.0037232   -0.0221698    0.0147235
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 NA                 0.0186637   -0.0672833    0.1046107
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            NA                -0.0014469   -0.0376703    0.0347765
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            NA                -0.0230041   -0.0437423   -0.0022659
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            NA                -0.0005542   -0.0202056    0.0190973
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                -0.0694523   -0.0845505   -0.0543541
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                -0.0754007   -0.0823019   -0.0684994
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                -0.0750412   -0.0794152   -0.0706671
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                -0.0762345   -0.0807725   -0.0716965
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                -0.0711458   -0.0785004   -0.0637912
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                NA                 0.0036088   -0.0198517    0.0270693
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 NA                 0.0332761   -0.0293308    0.0958830
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.0008257   -0.0287398    0.0303912
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                -0.0075638   -0.0245521    0.0094245
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                -0.0069879   -0.0242497    0.0102740
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                NA                 0.0243524    0.0006151    0.0480897
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0331483   -0.0467150   -0.0195817
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0118884   -0.0216589   -0.0021179
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            NA                -0.0086801   -0.0163322   -0.0010280
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0037963   -0.0154134    0.0078209
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                 0.0074567   -0.0237984    0.0387119
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 NA                -0.0195964   -0.0361085   -0.0030844
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            NA                -0.0090544   -0.0218695    0.0037607
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            NA                -0.0187131   -0.0299403   -0.0074860
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            NA                 0.0066521   -0.0089340    0.0222383
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0163390   -0.0272242   -0.0054539
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                 0.0077058   -0.0163402    0.0317518
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                -0.0130580   -0.0391232    0.0130072
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                 0.0042517   -0.0195859    0.0280893
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                -0.0215887   -0.0345127   -0.0086646
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0269870   -0.0423203   -0.0116537
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.0395917   -0.0552629   -0.0239205
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0426919   -0.0682181   -0.0171658
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0495254   -0.0632675   -0.0357833
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0389807   -0.0533451   -0.0246164
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0232542   -0.0458403   -0.0006682
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.0323863   -0.0438733   -0.0208993
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.0435132   -0.0519624   -0.0350640
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0448685   -0.0526171   -0.0371198
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.0381211   -0.0498821   -0.0263602
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                -0.0081757   -0.0230389    0.0066874
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.0143121   -0.0234988   -0.0051253
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0072817   -0.0138367   -0.0007267
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0064375   -0.0133939    0.0005188
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                -0.0085993   -0.0191785    0.0019799
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                 0.0072029   -0.0181574    0.0325633
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                -0.0112192   -0.0215118   -0.0009267
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                -0.0073324   -0.0139917   -0.0006731
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                -0.0063987   -0.0135008    0.0007035
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                 0.0015704   -0.0083034    0.0114441
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.0213354   -0.0422247   -0.0004461
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.0317387   -0.0388291   -0.0246483
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.0282894   -0.0344448   -0.0221341
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.0350707   -0.0424515   -0.0276899
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.0234455   -0.0355985   -0.0112924
12-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                -0.0314070   -0.0409092   -0.0219049
12-24 months   ki1135781-COHORTS          INDIA                          <145                 NA                -0.0274503   -0.0365542   -0.0183463
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0334645   -0.0383327   -0.0285962
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.0328745   -0.0375715   -0.0281774
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0339784   -0.0400804   -0.0278763
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                -0.0481399   -0.0613673   -0.0349126
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                -0.0593621   -0.0673564   -0.0513678
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                -0.0578891   -0.0625641   -0.0532141
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                -0.0567561   -0.0606919   -0.0528203
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                -0.0605558   -0.0666827   -0.0544290
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                NA                -0.0193640   -0.0301477   -0.0085802
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 NA                -0.0497390   -0.0691723   -0.0303057
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            NA                -0.0196449   -0.0401532    0.0008635
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            NA                -0.0186721   -0.0294205   -0.0079237
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            NA                -0.0085804   -0.0182240    0.0010631
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                -0.0176035   -0.0271581   -0.0080490
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                -0.0175884   -0.0225836   -0.0125932
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                -0.0178468   -0.0206437   -0.0150498
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                -0.0203366   -0.0234139   -0.0172592
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                -0.0184929   -0.0235695   -0.0134163


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1572370   -0.1898325   -0.1246414
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0989568   -0.1436567   -0.0542569
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0149894    0.0006456    0.0293332
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0408226   -0.0589776   -0.0226676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1520983   -0.1631600   -0.1410367
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5425507   -0.5646311   -0.5204702
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0589325   -0.0729654   -0.0448996
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705850    0.0656385    0.0755316
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
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0017406   -0.0079422    0.0114234
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0957993   -0.1105012   -0.0810975
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0514792   -0.0626143   -0.0403442
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0035407   -0.0084128    0.0013313
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0785153   -0.0906466   -0.0663840
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0367697   -0.0508361   -0.0227032
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0546626   -0.0720558   -0.0372694
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0849064   -0.0896428   -0.0801700
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0599315   -0.0691491   -0.0507139
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0796870   -0.0935585   -0.0658154
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492916   -0.0541541   -0.0444291
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1095135   -0.1166547   -0.1023724
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0910359   -0.0973892   -0.0846826
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0067771   -0.0177257    0.0041716
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748684   -0.0777134   -0.0720234
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098524   -0.0150104   -0.0046944
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0139716   -0.0215484   -0.0063947
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0303229   -0.0340493   -0.0265966
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0326683   -0.0353735   -0.0299631
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0160197   -0.0217996   -0.0102398
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187371   -0.0205862   -0.0168880


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0180933   -0.3233547    0.3595414
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160              0.0151721   -0.1428313    0.1731755
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0090900   -0.1437227    0.1255428
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160              0.0006845   -0.1351919    0.1365609
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.1850827   -0.4091239    0.0389586
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.1732026   -0.3582341    0.0118290
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.0898055   -0.2724099    0.0927989
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.1650481   -0.3542207    0.0241244
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.1341331   -0.2999323    0.0316660
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0826486   -0.2323637    0.0670665
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.1386702   -0.2926644    0.0153240
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.1652492   -0.3259676   -0.0045308
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.2007014   -0.4346132    0.0332105
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.1155773   -0.4209434    0.1897888
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.0379264   -0.1445216    0.0686688
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0996264   -0.2020300    0.0027772
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.1181490   -0.0460451    0.2823430
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              0.0697535   -0.0529077    0.1924148
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0492266   -0.0584042    0.1568573
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160              0.0213839   -0.0815316    0.1242995
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0301445   -0.0958737    0.0355847
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0427127   -0.1020868    0.0166613
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0390699   -0.0956748    0.0175351
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0059371   -0.0570172    0.0451429
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.1384113   -0.3045263    0.0277037
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.1099803   -0.2724140    0.0524533
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0544393   -0.2164317    0.1075530
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0812299   -0.2552383    0.0927785
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.1505609   -0.2478064   -0.0533154
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.0953610   -0.1836239   -0.0070982
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0890249   -0.1772095   -0.0008402
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0162237   -0.1076013    0.0751539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0970180   -0.2212803    0.0272443
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0712843   -0.1898659    0.0472973
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0314966   -0.1499156    0.0869224
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0542646   -0.1780608    0.0695316
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             -0.1738783   -0.2984080   -0.0493486
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.1304570   -0.1952960   -0.0656181
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0993099   -0.1299145   -0.0687053
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0666726   -0.0922421   -0.0411030
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0153259   -0.1380857    0.1074338
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0005709   -0.1190331    0.1178913
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0215415   -0.1419540    0.0988711
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.0647828   -0.0649625    0.1945280
0-3 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0596408   -0.1276473    0.0083656
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0560302   -0.1112507   -0.0008096
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0150942   -0.0694043    0.0392158
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0031840   -0.0596614    0.0532935
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0824708   -0.1085724   -0.0563693
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0578667   -0.0836547   -0.0320787
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0432511   -0.0685519   -0.0179503
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0297530   -0.0576182   -0.0018877
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.0781305   -0.3473541    0.1910930
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0091745   -0.1040147    0.0856658
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160              0.0652668   -0.0326889    0.1632225
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0031703   -0.1024596    0.0961190
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160              0.0560600   -0.0771448    0.1892648
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160              0.0894473   -0.0064658    0.1853605
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160              0.1008048    0.0102661    0.1913434
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160              0.1203995    0.0128677    0.2279313
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 >=160             -0.0296531   -0.2430800    0.1837739
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            >=160             -0.0947645   -0.3039152    0.1143863
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            >=160             -0.0439463   -0.2548362    0.1669436
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            >=160             -0.1064454   -0.3211246    0.1082338
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 >=160              0.1474515    0.0007982    0.2941048
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160              0.1289022   -0.0030676    0.2608720
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160              0.1917118    0.0546349    0.3287887
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160              0.1777328    0.0224730    0.3329926
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.0564582   -0.2320072    0.1190908
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160              0.0610943   -0.0806469    0.2028354
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.0652742   -0.0429617    0.1735101
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160              0.0390557   -0.0546972    0.1328086
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.1088421   -0.2743932    0.0567090
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0863707   -0.2303802    0.0576387
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0118539   -0.0996845    0.0759767
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0296196   -0.1147411    0.0555020
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0098103   -0.0981895    0.0785690
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0482320   -0.1102509    0.0137869
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0363117   -0.0765249    0.0039015
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0340588   -0.0864018    0.0182842
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160              0.0001445   -0.1191828    0.1194718
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160              0.0047478   -0.1113327    0.1208283
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160              0.0153852   -0.1011554    0.1319258
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160              0.0067865   -0.1168125    0.1303855
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0038637   -0.0889134    0.0811861
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              0.0174628   -0.0583893    0.0933150
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0236795   -0.1001593    0.0528004
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0001096   -0.0827815    0.0825622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160              0.0502188   -0.0436616    0.1440992
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160              0.0477513   -0.0405797    0.1360824
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160              0.0550703   -0.0325264    0.1426671
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160              0.0394130   -0.0540352    0.1328612
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.1179787   -0.2769473    0.0409900
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              0.0115776   -0.0561993    0.0793545
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0141516   -0.0571952    0.0288920
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0098730   -0.0518317    0.0320858
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              0.0085980   -0.1087095    0.1259055
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.0423784   -0.0965441    0.0117873
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0014979   -0.0288733    0.0258775
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0156581   -0.0379491    0.0066329
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160              0.0020448   -0.0808355    0.0849251
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0180780   -0.0978932    0.0617372
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0164119   -0.0976541    0.0648303
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.0635320   -0.0292505    0.1563144
3-6 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0451745   -0.1025441    0.0121951
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0299906   -0.0757244    0.0157432
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0295041   -0.0744869    0.0154787
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0169009   -0.0645008    0.0306990
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0343145   -0.0596111   -0.0090180
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0239783   -0.0484127    0.0004562
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0234589   -0.0482230    0.0013052
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0137425   -0.0397826    0.0122976
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.0188726   -0.1290711    0.0913258
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160              0.0455456   -0.0200257    0.1111169
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0166026   -0.0674324    0.0342271
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160              0.0215407   -0.0273285    0.0704098
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.0305949   -0.0999580    0.0387681
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.0224661   -0.0908376    0.0459053
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.0492121   -0.1165508    0.0181266
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.0568140   -0.1246179    0.0109899
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.0465195   -0.1199295    0.0268905
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0258937   -0.0944968    0.0427094
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.0103540   -0.0822887    0.0615806
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.0233024   -0.0960477    0.0494428
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0422935   -0.0803486    0.1649357
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.0566725   -0.1286528    0.0153078
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.0444172   -0.1086042    0.0197698
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160              0.0029106   -0.0334787    0.0392999
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.0655116    0.0021307    0.1288926
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0116501   -0.0773914    0.0540913
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0138847   -0.0298898    0.0576593
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0068889   -0.0482828    0.0345051
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0349950   -0.0843239    0.0143338
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0207570   -0.0474204    0.0059065
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160              0.0056334   -0.0204282    0.0316950
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160              0.0084888   -0.0005308    0.0175083
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 >=160              0.1370667    0.0132015    0.2609319
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            >=160              0.0857535    0.0117475    0.1597596
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            >=160              0.0317556   -0.0274135    0.0909248
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            >=160              0.0208588   -0.0528651    0.0945827
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.0440599   -0.0898607    0.0017409
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.0346275   -0.0759764    0.0067215
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0129663   -0.0559910    0.0300585
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0085119   -0.0538694    0.0368455
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0266154   -0.0657098    0.0124791
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.0141253   -0.0482704    0.0200198
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0138347   -0.0480028    0.0203333
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0046283   -0.0406198    0.0313632
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0469986   -0.0951030    0.0011058
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0552876   -0.1014676   -0.0091075
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0455041   -0.0916800    0.0006719
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0316292   -0.0796469    0.0163884
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.0589963   -0.1153357   -0.0026570
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0282566   -0.0667813    0.0102681
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0143576   -0.0378775    0.0091622
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0213554   -0.0442463    0.0015356
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 >=160             -0.0747160   -0.1496599    0.0002278
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            >=160             -0.0633305   -0.1361221    0.0094611
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            >=160             -0.0539543   -0.1301014    0.0221928
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            >=160             -0.0059991   -0.0858131    0.0738149
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              0.0160127   -0.0715086    0.1035339
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160              0.0023796   -0.0219764    0.0267356
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0120541   -0.0252714    0.0011631
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160              0.0037616   -0.0076346    0.0151578
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0361200   -0.0792988    0.0070589
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0159592   -0.0585507    0.0266323
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0321826   -0.0752403    0.0108751
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             -0.0222509   -0.0684025    0.0239007
6-12 months    ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0409175   -0.0722843   -0.0095508
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0354564   -0.0619187   -0.0089941
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0362908   -0.0623018   -0.0102798
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0086030   -0.0354300    0.0182240
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.0407615   -0.0722512   -0.0092717
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.0251386   -0.0535390    0.0032618
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0211450   -0.0493471    0.0070571
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0163179   -0.0461856    0.0135499
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 >=160              0.0223869   -0.0655174    0.1102912
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            >=160              0.0022763   -0.0383736    0.0429262
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            >=160             -0.0192809   -0.0470361    0.0084743
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            >=160              0.0031690   -0.0237839    0.0301219
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0059484   -0.0228296    0.0109329
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0055889   -0.0210962    0.0099185
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0067822   -0.0222942    0.0087298
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0016935   -0.0186270    0.0152401
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0296673   -0.0371910    0.0965255
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0027831   -0.0405259    0.0349596
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0111726   -0.0401381    0.0177929
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0105967   -0.0397234    0.0185301
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.0575008   -0.0848414   -0.0301601
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.0362408   -0.0619102   -0.0105713
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.0330325   -0.0579727   -0.0080923
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.0281487   -0.0545763   -0.0017211
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.0270532   -0.0624019    0.0082956
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0165112   -0.0502915    0.0172692
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.0261699   -0.0593803    0.0070406
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.0008046   -0.0357304    0.0341212
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0240449   -0.0023501    0.0504399
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160              0.0032811   -0.0249657    0.0315279
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.0205908   -0.0056145    0.0467961
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0052496   -0.0221469    0.0116476
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.0126047   -0.0345294    0.0093201
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0157049   -0.0454823    0.0140725
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0225384   -0.0431286   -0.0019482
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0119937   -0.0330043    0.0090168
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.0091320   -0.0344714    0.0162073
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.0202590   -0.0443737    0.0038558
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0216142   -0.0454925    0.0022640
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0148669   -0.0403316    0.0105978
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0061363   -0.0236094    0.0113368
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              0.0008940   -0.0153504    0.0171384
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160              0.0017382   -0.0146723    0.0181487
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0004236   -0.0186673    0.0178201
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0184222   -0.0457915    0.0089472
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0145354   -0.0407554    0.0116847
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0136016   -0.0399376    0.0127344
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0056326   -0.0328472    0.0215821
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0104033   -0.0324632    0.0116566
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0069540   -0.0287314    0.0148233
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0137353   -0.0358902    0.0084196
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             -0.0021101   -0.0262774    0.0220573
12-24 months   ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <145                 >=160              0.0039568   -0.0092027    0.0171163
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0020574   -0.0127340    0.0086192
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0014674   -0.0120671    0.0091322
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0025713   -0.0138640    0.0087214
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.0112222   -0.0266777    0.0042333
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.0097492   -0.0237784    0.0042801
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0086162   -0.0224167    0.0051843
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0124159   -0.0269933    0.0021615
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 >=160             -0.0303750   -0.0525998   -0.0081502
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            >=160             -0.0002809   -0.0234516    0.0228898
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            >=160              0.0006919   -0.0145337    0.0159175
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            >=160              0.0107836   -0.0036832    0.0252503
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160              0.0000152   -0.0107090    0.0107394
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0002432   -0.0101194    0.0096330
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0027330   -0.0129838    0.0075178
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0008894   -0.0119069    0.0101282
