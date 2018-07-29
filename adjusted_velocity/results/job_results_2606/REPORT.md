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
![](/tmp/aec2c7d0-3813-4efe-90f8-050dd4b661dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aec2c7d0-3813-4efe-90f8-050dd4b661dd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                 0.1978416    0.1189801    0.2767031
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                 0.2141978   -0.0207295    0.4491252
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.2191107    0.1089337    0.3292876
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                 0.1791929    0.0814268    0.2769591
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                 0.1907135    0.0927860    0.2886410
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                 0.1390539   -0.0072723    0.2853800
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0777697   -0.2095834    0.0540440
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0610188   -0.1277364    0.0056988
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                 0.0229132   -0.0388023    0.0846287
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0497961   -0.1252213    0.0256291
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                NA                 0.0275995   -0.0750463    0.1302454
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 NA                -0.1748736   -0.2582308   -0.0915164
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                -0.1232485   -0.1740612   -0.0724358
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                -0.1827887   -0.2446619   -0.1209155
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                -0.2089706   -0.2834509   -0.1344902
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0550545   -0.1196107    0.0095017
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                -0.2116014   -0.3781329   -0.0450698
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                -0.1394040   -0.3978234    0.1190155
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                -0.0850644   -0.1614982   -0.0086305
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                -0.1492011   -0.2198125   -0.0785896
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0772790   -0.1534901   -0.0010678
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                 0.0404441   -0.1049331    0.1858214
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0075934   -0.1037235    0.0885368
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0281167   -0.1040647    0.0478313
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0560275   -0.1251450    0.0130900
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.0347803   -0.0122935    0.0818542
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                 0.0135555   -0.0187909    0.0459018
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                -0.0000396   -0.0303674    0.0302881
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                 0.0007920   -0.0277794    0.0293635
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                 0.0324066    0.0078064    0.0570069
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0333512   -0.1795167    0.1128143
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.1741315   -0.2301252   -0.1181378
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.1405066   -0.1868372   -0.0941761
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0844812   -0.1286137   -0.0403486
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.1141746   -0.1881923   -0.0401568
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                 0.0482475   -0.0150189    0.1115139
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.1168588   -0.1586012   -0.0751164
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0524258   -0.0829799   -0.0218718
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0434785   -0.0728578   -0.0140991
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                 0.0328319    0.0000943    0.0655696
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                -0.0765043   -0.1556436    0.0026350
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                -0.1617215   -0.2076871   -0.1157559
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                -0.1388467   -0.1692347   -0.1084586
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                -0.0977879   -0.1277574   -0.0678184
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                -0.1203535   -0.1650760   -0.0756310
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                -0.1091133   -0.1248364   -0.0933901
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                -0.2511256   -0.3511811   -0.1510702
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                -0.2298964   -0.2903239   -0.1694688
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                -0.2056496   -0.2313524   -0.1799468
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                -0.1754359   -0.1954112   -0.1554606
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.5502159   -0.6542513   -0.4461804
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.5582173   -0.6027857   -0.5136489
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.5406519   -0.5754320   -0.5058717
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.5553694   -0.5951142   -0.5156246
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.4798381   -0.5378398   -0.4218364
0-3 months     ki1135781-COHORTS          INDIA                          >=160                NA                -0.0359007   -0.0831042    0.0113028
0-3 months     ki1135781-COHORTS          INDIA                          <145                 NA                -0.0857090   -0.1309493   -0.0404687
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0869068   -0.1127964   -0.0610173
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.0481503   -0.0723589   -0.0239418
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0368393   -0.0649807   -0.0086979
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.1281254    0.1069868    0.1492641
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                 0.0392144    0.0295263    0.0489026
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                 0.0650977    0.0577962    0.0723992
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                 0.0800795    0.0726886    0.0874705
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                 0.0944682    0.0821875    0.1067489
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                NA                 0.0485067   -0.0125917    0.1096051
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 NA                -0.0153680   -0.2378133    0.2070774
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.0404743   -0.0267836    0.1077323
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                 0.1138988    0.0408241    0.1869736
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                 0.0456406   -0.0292902    0.1205715
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                NA                -0.1596794   -0.2291074   -0.0902515
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0790532   -0.1748670    0.0167607
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0537539   -0.1025400   -0.0049678
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            NA                -0.0325681   -0.0740868    0.0089506
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0195380   -0.0856949    0.0466189
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                NA                 0.0470649   -0.1576214    0.2517511
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 NA                 0.0174159   -0.0429871    0.0778189
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            NA                -0.0477298   -0.0906470   -0.0048125
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            NA                 0.0030843   -0.0476337    0.0538023
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            NA                -0.0594172   -0.1241073    0.0052729
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                NA                -0.0153304   -0.1133169    0.0826562
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 NA                 0.0427499   -0.0333674    0.1188672
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            NA                 0.0089758   -0.0353819    0.0533336
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            NA                 0.0734287    0.0176123    0.1292451
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            NA                 0.0671580   -0.0224183    0.1567343
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0269340   -0.0834571    0.0295890
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                -0.0859751   -0.2514580    0.0795078
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                 0.0342832   -0.0905121    0.1590785
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                 0.0369219   -0.0554321    0.1292759
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                 0.0117578   -0.0623915    0.0859071
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0459486   -0.1130760    0.0211787
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.1478462   -0.2999509    0.0042585
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.1305510   -0.2577623   -0.0033396
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0570195   -0.1134148   -0.0006242
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0739490   -0.1259317   -0.0219664
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                 0.0233305   -0.0245222    0.0711832
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                 0.0065877   -0.0603549    0.0735303
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                -0.0263168   -0.0562601    0.0036265
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                -0.0161689   -0.0361937    0.0038559
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                -0.0119661   -0.0420774    0.0181453
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0605011   -0.1631911    0.0421890
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.0503179   -0.0946640   -0.0059718
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.0553737   -0.0939705   -0.0167769
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0444314   -0.0840581   -0.0048047
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.0450932   -0.0984750    0.0082887
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                -0.0366431   -0.0963708    0.0230847
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.0394996   -0.0806341    0.0016349
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0089966   -0.0354288    0.0174356
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0538009   -0.0814033   -0.0261985
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                -0.0368372   -0.0745414    0.0008670
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                -0.0107110   -0.0750738    0.0536517
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                 0.0298820   -0.0119720    0.0717360
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                 0.0328495    0.0034624    0.0622367
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                 0.0340581    0.0063015    0.0618146
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                 0.0134167   -0.0267841    0.0536176
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0714066   -0.1002440   -0.0425692
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.1323916   -0.2359377   -0.0288455
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0442990   -0.0995891    0.0109910
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0895361   -0.1201995   -0.0588726
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0831080   -0.1122432   -0.0539728
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                 0.0081880   -0.0057053    0.0220813
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                -0.0074465   -0.0978056    0.0829127
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                -0.0393912   -0.0874219    0.0086394
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                 0.0051386   -0.0179470    0.0282242
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                -0.0086498   -0.0258350    0.0085353
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.1656147   -0.2202280   -0.1110013
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.0964492   -0.1272285   -0.0656699
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.1130520   -0.1350736   -0.0910303
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.1155875   -0.1415802   -0.0895949
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.0429003   -0.0894693    0.0036686
3-6 months     ki1135781-COHORTS          INDIA                          >=160                NA                -0.0318319   -0.0706122    0.0069484
3-6 months     ki1135781-COHORTS          INDIA                          <145                 NA                -0.0635619   -0.1006570   -0.0264668
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0553979   -0.0752332   -0.0355626
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.0548573   -0.0733209   -0.0363938
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0454584   -0.0689361   -0.0219807
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                 0.0240065    0.0039428    0.0440702
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                -0.0155309   -0.0267822   -0.0042795
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                -0.0045046   -0.0128116    0.0038023
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                -0.0033348   -0.0113668    0.0046971
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                 0.0059822   -0.0059591    0.0179236
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                NA                -0.0006390   -0.0331293    0.0318512
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 NA                -0.0185831   -0.1233301    0.0861639
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.0433032   -0.0134997    0.1001061
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                -0.0180962   -0.0570005    0.0208082
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                 0.0202601   -0.0163654    0.0568856
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                NA                -0.0276574   -0.0747975    0.0194827
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0782489   -0.0991727   -0.0573250
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0658606   -0.0874571   -0.0442641
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            NA                -0.0932881   -0.1125806   -0.0739956
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0982396   -0.1180765   -0.0784026
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                NA                -0.0146985   -0.0751857    0.0457888
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 NA                -0.0595696   -0.0912677   -0.0278714
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            NA                -0.0393538   -0.0608056   -0.0179021
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            NA                -0.0221011   -0.0516743    0.0074721
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            NA                -0.0348884   -0.0657303   -0.0040465
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0466131   -0.0669920   -0.0262342
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                -0.0044526   -0.1233200    0.1144148
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                -0.1029952   -0.1712251   -0.0347654
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                -0.0921049   -0.1517605   -0.0324493
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                -0.0440345   -0.0739648   -0.0141041
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.1298281   -0.1599833   -0.0996728
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.0678425   -0.1079665   -0.0277184
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.1335036   -0.1833319   -0.0836753
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.1153081   -0.1425318   -0.0880843
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.1322708   -0.1555003   -0.1090412
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                -0.0833603   -0.0950286   -0.0716921
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                -0.1168472   -0.1573525   -0.0763419
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                -0.0998758   -0.1260421   -0.0737095
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                -0.0768012   -0.0948833   -0.0587191
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                -0.0741213   -0.0866737   -0.0615688
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                NA                -0.1709077   -0.2107455   -0.1310698
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 NA                -0.0241560   -0.1306941    0.0823821
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            NA                -0.0892183   -0.1476975   -0.0307390
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            NA                -0.1387004   -0.1796528   -0.0977481
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            NA                -0.1541407   -0.2130005   -0.0952809
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0293112   -0.0660795    0.0074571
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.0722998   -0.0950624   -0.0495372
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.0629003   -0.0765009   -0.0492996
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0423131   -0.0604370   -0.0241892
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.0353291   -0.0578321   -0.0128261
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                -0.0507852   -0.0789444   -0.0226260
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.0816171   -0.1019976   -0.0612366
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0641814   -0.0756303   -0.0527325
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0639543   -0.0753250   -0.0525836
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                -0.0555252   -0.0699992   -0.0410511
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                 0.0142014   -0.0181213    0.0465240
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                -0.0355202   -0.0526999   -0.0183405
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                -0.0434547   -0.0557836   -0.0311259
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                -0.0317109   -0.0441393   -0.0192826
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                -0.0187434   -0.0358114   -0.0016754
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0452193   -0.0604079   -0.0300308
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.1062292   -0.1478674   -0.0645909
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0735268   -0.1051521   -0.0419014
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0590788   -0.0759664   -0.0421912
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0667915   -0.0830325   -0.0505504
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                NA                -0.0247255   -0.0948696    0.0454187
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 NA                -0.1021661   -0.1283366   -0.0759955
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            NA                -0.0902624   -0.1095727   -0.0709521
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            NA                -0.0813158   -0.1106673   -0.0519643
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            NA                -0.0351769   -0.0725380    0.0021842
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                -0.0487134   -0.0557128   -0.0417141
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                -0.0303993   -0.1080991    0.0473004
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                -0.0460791   -0.0683383   -0.0238198
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                -0.0603046   -0.0712835   -0.0493257
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                -0.0448346   -0.0537126   -0.0359566
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.0720071   -0.1038591   -0.0401551
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.1180771   -0.1311559   -0.1049984
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.0993694   -0.1110833   -0.0876554
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.1166028   -0.1293492   -0.1038565
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.1052377   -0.1239331   -0.0865424
6-12 months    ki1135781-COHORTS          INDIA                          >=160                NA                -0.0645382   -0.0868669   -0.0422095
6-12 months    ki1135781-COHORTS          INDIA                          <145                 NA                -0.1039590   -0.1223085   -0.0856096
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0996730   -0.1114972   -0.0878487
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.1003559   -0.1112755   -0.0894362
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0720261   -0.0844850   -0.0595671
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                -0.0753284   -0.0981679   -0.0524888
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                -0.1167910   -0.1319883   -0.1015937
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                -0.1024598   -0.1111056   -0.0938140
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                -0.0974712   -0.1056070   -0.0893354
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                -0.0923804   -0.1046561   -0.0801048
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                NA                 0.0031707   -0.0132822    0.0196235
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 NA                 0.0142457   -0.0245972    0.0530887
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            NA                 0.0086032   -0.0188773    0.0360838
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            NA                -0.0172242   -0.0358567    0.0014083
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            NA                 0.0013264   -0.0167954    0.0194482
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                -0.0691450   -0.0833399   -0.0549500
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                -0.0765096   -0.0833371   -0.0696821
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                -0.0755168   -0.0798782   -0.0711554
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                -0.0760336   -0.0805599   -0.0715074
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                -0.0708520   -0.0780906   -0.0636134
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                NA                 0.0034391   -0.0198414    0.0267197
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 NA                 0.0315163   -0.0292960    0.0923286
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            NA                 0.0010318   -0.0277458    0.0298095
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            NA                -0.0073331   -0.0241427    0.0094764
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            NA                -0.0069623   -0.0240031    0.0100784
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                NA                 0.0245996    0.0066466    0.0425525
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 NA                -0.0404982   -0.0522771   -0.0287193
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            NA                -0.0145567   -0.0236490   -0.0054644
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            NA                -0.0102191   -0.0175633   -0.0028749
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            NA                -0.0081628   -0.0181075    0.0017818
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                NA                -0.0282247   -0.0576609    0.0012115
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 NA                -0.0279612   -0.0433603   -0.0125620
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            NA                -0.0103540   -0.0232248    0.0025167
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            NA                -0.0214233   -0.0326970   -0.0101496
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            NA                 0.0039539   -0.0110822    0.0189900
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                NA                -0.0165377   -0.0273179   -0.0057576
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 NA                 0.0079528   -0.0143654    0.0302710
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            NA                -0.0130101   -0.0383809    0.0123608
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            NA                 0.0050451   -0.0180312    0.0281213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            NA                -0.0214383   -0.0342559   -0.0086208
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                -0.0249220   -0.0394902   -0.0103538
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                -0.0224015   -0.0368718   -0.0079313
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                -0.0382439   -0.0618001   -0.0146877
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                -0.0481495   -0.0613830   -0.0349159
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                -0.0376583   -0.0514587   -0.0238578
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                NA                -0.0238814   -0.0445666   -0.0031962
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 NA                -0.0309860   -0.0417630   -0.0202090
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            NA                -0.0437933   -0.0520234   -0.0355631
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            NA                -0.0453292   -0.0529037   -0.0377547
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            NA                -0.0380736   -0.0491648   -0.0269823
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                -0.0083260   -0.0193173    0.0026653
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                -0.0148568   -0.0225018   -0.0072117
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                -0.0072071   -0.0133440   -0.0010701
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                -0.0055067   -0.0119170    0.0009035
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                -0.0093444   -0.0180442   -0.0006446
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                NA                -0.0052173   -0.0256136    0.0151790
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 NA                -0.0138795   -0.0238035   -0.0039555
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            NA                -0.0083497   -0.0149514   -0.0017479
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            NA                -0.0075502   -0.0145444   -0.0005560
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            NA                -0.0003958   -0.0100835    0.0092919
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                -0.0262157   -0.0430333   -0.0093982
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                -0.0322707   -0.0389001   -0.0256413
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                -0.0283363   -0.0342964   -0.0223763
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                -0.0350340   -0.0419391   -0.0281288
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                -0.0257848   -0.0367458   -0.0148238
12-24 months   ki1135781-COHORTS          INDIA                          >=160                NA                -0.0318036   -0.0408738   -0.0227334
12-24 months   ki1135781-COHORTS          INDIA                          <145                 NA                -0.0280145   -0.0362643   -0.0197647
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                -0.0339145   -0.0386841   -0.0291448
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                -0.0330351   -0.0376267   -0.0284435
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                -0.0345526   -0.0404249   -0.0286803
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                -0.0517965   -0.0634834   -0.0401097
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                -0.0602943   -0.0677183   -0.0528703
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                -0.0577788   -0.0623647   -0.0531929
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                -0.0573256   -0.0612170   -0.0534341
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                -0.0613218   -0.0672557   -0.0553879
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                NA                -0.0217949   -0.0315462   -0.0120436
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 NA                -0.0719725   -0.0831957   -0.0607492
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            NA                -0.0259559   -0.0436201   -0.0082918
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            NA                -0.0213014   -0.0309229   -0.0116798
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            NA                -0.0107308   -0.0194855   -0.0019762
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                -0.0176580   -0.0270920   -0.0082241
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                -0.0176972   -0.0226377   -0.0127568
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                -0.0178578   -0.0206329   -0.0150826
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                -0.0202662   -0.0233291   -0.0172033
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                -0.0185855   -0.0235377   -0.0136333


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
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0163562   -0.2306072    0.2633197
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160              0.0212691   -0.1122998    0.1548379
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0186487   -0.1429790    0.1056817
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0071281   -0.1318692    0.1176130
0-3 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.2168236   -0.4138801   -0.0197671
0-3 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.2000726   -0.3609690   -0.0391763
0-3 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.1161407   -0.2749755    0.0426942
0-3 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.1888500   -0.3534698   -0.0242302
0-3 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.2024731   -0.3346945   -0.0702516
0-3 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.1508480   -0.2653949   -0.0363012
0-3 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.2103882   -0.3302943   -0.0904822
0-3 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.2365701   -0.3635914   -0.1095487
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.1565469   -0.3338882    0.0207945
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.0843494   -0.3490966    0.1803977
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.0300098   -0.1294840    0.0694643
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0941466   -0.1884825    0.0001894
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.1177231   -0.0464117    0.2818579
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              0.0696856   -0.0529851    0.1923562
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0491622   -0.0584174    0.1567419
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160              0.0212514   -0.0816229    0.1241258
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0212249   -0.0909368    0.0484870
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0348200   -0.0936346    0.0239946
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0339883   -0.0908777    0.0229011
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0023737   -0.0557477    0.0510002
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.1407803   -0.2972581    0.0156975
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.1071555   -0.2602433    0.0459324
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0511300   -0.2034408    0.1011808
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0808234   -0.2448234    0.0831767
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.1651063   -0.2408275   -0.0893851
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.1006734   -0.1706147   -0.0307320
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0917260   -0.1610417   -0.0224103
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0154156   -0.0864666    0.0556354
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0852172   -0.1768332    0.0063988
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0623424   -0.1470433    0.0223586
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0212836   -0.1058978    0.0633306
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0438492   -0.1348184    0.0471200
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             -0.1420124   -0.2432975   -0.0407272
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.1207831   -0.1832061   -0.0583601
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0965364   -0.1266404   -0.0664324
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0663226   -0.0917068   -0.0409385
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0080015   -0.1206638    0.1046608
0-3 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160              0.0095640   -0.0998757    0.1190037
0-3 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0051536   -0.1161553    0.1058482
0-3 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.0703777   -0.0483086    0.1890640
0-3 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0498083   -0.1151289    0.0155124
0-3 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0510061   -0.1047669    0.0027547
0-3 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0122496   -0.0652106    0.0407114
0-3 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0009386   -0.0559302    0.0540531
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0889110   -0.1115980   -0.0662240
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0630277   -0.0852562   -0.0407991
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0480459   -0.0697510   -0.0263408
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0336572   -0.0579766   -0.0093379
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.0638746   -0.2936591    0.1659098
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0080323   -0.0980773    0.0820126
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160              0.0653921   -0.0296211    0.1604054
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0028661   -0.0989920    0.0932598
3-6 months     ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <145                 >=160              0.0806263   -0.0374500    0.1987025
3-6 months     ki0047075b-MAL-ED          INDIA                          [145-150)            >=160              0.1059256    0.0213165    0.1905346
3-6 months     ki0047075b-MAL-ED          INDIA                          [150-155)            >=160              0.1271113    0.0463487    0.2078739
3-6 months     ki0047075b-MAL-ED          INDIA                          [155-160)            >=160              0.1401415    0.0445232    0.2357597
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <145                 >=160             -0.0296490   -0.2430612    0.1837632
3-6 months     ki0047075b-MAL-ED          NEPAL                          [145-150)            >=160             -0.0947946   -0.3039313    0.1143420
3-6 months     ki0047075b-MAL-ED          NEPAL                          [150-155)            >=160             -0.0439806   -0.2548562    0.1668951
3-6 months     ki0047075b-MAL-ED          NEPAL                          [155-160)            >=160             -0.1064820   -0.3211471    0.1081830
3-6 months     ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <145                 >=160              0.0580802   -0.0660934    0.1822538
3-6 months     ki0047075b-MAL-ED          PERU                           [145-150)            >=160              0.0243062   -0.0828394    0.1314518
3-6 months     ki0047075b-MAL-ED          PERU                           [150-155)            >=160              0.0887590   -0.0241873    0.2017054
3-6 months     ki0047075b-MAL-ED          PERU                           [155-160)            >=160              0.0824884   -0.0499124    0.2148892
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160             -0.0590411   -0.2338725    0.1157904
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160              0.0612173   -0.0754738    0.1979083
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.0638560   -0.0444113    0.1721232
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160              0.0386918   -0.0543152    0.1316989
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.1018976   -0.2681547    0.0643595
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0846024   -0.2283933    0.0591886
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0110709   -0.0986905    0.0765487
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0280004   -0.1128234    0.0568225
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0167428   -0.1026203    0.0691346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0496473   -0.1089913    0.0096968
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             -0.0394994   -0.0804861    0.0014873
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             -0.0352965   -0.0871553    0.0165622
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160              0.0101831   -0.1011046    0.1214708
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160              0.0051274   -0.1045483    0.1148031
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160              0.0160697   -0.0937778    0.1259171
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160              0.0154079   -0.1001380    0.1309537
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0028566   -0.0751900    0.0694768
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              0.0276465   -0.0375582    0.0928512
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0171579   -0.0828610    0.0485453
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0001942   -0.0706676    0.0702793
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160              0.0405930   -0.0361543    0.1173404
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160              0.0435606   -0.0271710    0.1142922
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160              0.0447691   -0.0253399    0.1148782
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160              0.0241278   -0.0516705    0.0999260
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.0609850   -0.1684007    0.0464307
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160              0.0271076   -0.0351351    0.0893502
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0181295   -0.0601131    0.0238541
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0117014   -0.0526512    0.0292484
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             -0.0156345   -0.1070541    0.0757851
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             -0.0475792   -0.0975607    0.0024022
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0030494   -0.0299631    0.0238642
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             -0.0168379   -0.0389114    0.0052357
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <145                 >=160              0.0691655    0.0065034    0.1318275
3-6 months     ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160              0.0525627   -0.0062858    0.1114112
3-6 months     ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160              0.0500271   -0.0103910    0.1104453
3-6 months     ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.1227143    0.0509101    0.1945186
3-6 months     ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0317300   -0.0853489    0.0218890
3-6 months     ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0235660   -0.0670560    0.0199241
3-6 months     ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0230254   -0.0659233    0.0198724
3-6 months     ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0136265   -0.0588561    0.0316031
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0395374   -0.0620487   -0.0170260
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0285111   -0.0500825   -0.0069397
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0273414   -0.0491629   -0.0055198
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0180243   -0.0411578    0.0051092
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <145                 >=160             -0.0179441   -0.1275927    0.0917045
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160              0.0439422   -0.0214722    0.1093566
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0174571   -0.0680973    0.0331830
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160              0.0208991   -0.0280928    0.0698910
6-12 months    ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.0505915   -0.1020029    0.0008200
6-12 months    ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.0382032   -0.0898048    0.0133983
6-12 months    ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.0656307   -0.1164104   -0.0148509
6-12 months    ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.0705822   -0.1216319   -0.0195325
6-12 months    ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <145                 >=160             -0.0448711   -0.1131633    0.0234211
6-12 months    ki0047075b-MAL-ED          PERU                           [145-150)            >=160             -0.0246554   -0.0887486    0.0394379
6-12 months    ki0047075b-MAL-ED          PERU                           [150-155)            >=160             -0.0074026   -0.0745955    0.0597903
6-12 months    ki0047075b-MAL-ED          PERU                           [155-160)            >=160             -0.0201899   -0.0878862    0.0475063
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0421605   -0.0784397    0.1627608
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160             -0.0563821   -0.1275695    0.0148053
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160             -0.0454918   -0.1084851    0.0175015
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160              0.0025786   -0.0335772    0.0387344
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.0619856    0.0122216    0.1117496
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0036755   -0.0619916    0.0546405
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160              0.0145200   -0.0256831    0.0547231
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0024427   -0.0397698    0.0348845
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             -0.0334869   -0.0769280    0.0099542
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             -0.0165155   -0.0441168    0.0110858
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160              0.0065592   -0.0197903    0.0329086
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160              0.0092391    0.0010008    0.0174773
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145                 >=160              0.1467516    0.0331852    0.2603181
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)            >=160              0.0816894    0.0112010    0.1521778
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)            >=160              0.0322072   -0.0248102    0.0892247
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)            >=160              0.0167670   -0.0541949    0.0877288
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.0429886   -0.0861376    0.0001604
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.0335891   -0.0727735    0.0055953
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0130019   -0.0539291    0.0279253
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0060179   -0.0490414    0.0370057
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0308319   -0.0655416    0.0038778
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             -0.0133962   -0.0437701    0.0169776
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             -0.0131691   -0.0435180    0.0171797
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0047400   -0.0363699    0.0268898
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0497215   -0.0863415   -0.0131016
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0576561   -0.0922290   -0.0230831
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0459123   -0.0804952   -0.0113294
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160             -0.0329447   -0.0695373    0.0036478
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             -0.0610098   -0.1052394   -0.0167803
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0283074   -0.0633461    0.0067312
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0138595   -0.0364869    0.0087679
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0215721   -0.0437083    0.0005640
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <145                 >=160             -0.0774406   -0.1522832   -0.0025980
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)            >=160             -0.0655369   -0.1382674    0.0071935
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)            >=160             -0.0565904   -0.1325789    0.0193982
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)            >=160             -0.0104515   -0.0898927    0.0689898
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160              0.0183141   -0.0596916    0.0963198
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160              0.0026344   -0.0206864    0.0259551
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             -0.0115912   -0.0245975    0.0014152
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160              0.0038788   -0.0074081    0.0151657
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0460701   -0.0804839   -0.0116563
6-12 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0273623   -0.0612031    0.0064786
6-12 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0445958   -0.0788399   -0.0103516
6-12 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             -0.0332306   -0.0700657    0.0036044
6-12 months    ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <145                 >=160             -0.0394209   -0.0682849   -0.0105568
6-12 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0351348   -0.0603793   -0.0098903
6-12 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0358177   -0.0606541   -0.0109813
6-12 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0074879   -0.0330331    0.0180573
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.0414626   -0.0688904   -0.0140348
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.0271314   -0.0515417   -0.0027212
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0221428   -0.0463652    0.0020796
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0170521   -0.0429522    0.0088480
6-12 months    ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <145                 >=160              0.0110751   -0.0308542    0.0530044
6-12 months    ki1148112-LCNI-5           MALAWI                         [145-150)            >=160              0.0054326   -0.0265592    0.0374243
6-12 months    ki1148112-LCNI-5           MALAWI                         [150-155)            >=160             -0.0203948   -0.0451497    0.0043600
6-12 months    ki1148112-LCNI-5           MALAWI                         [155-160)            >=160             -0.0018443   -0.0261319    0.0224434
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0073646   -0.0233845    0.0086553
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0063718   -0.0209892    0.0082456
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0068887   -0.0215310    0.0077537
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0017070   -0.0177754    0.0143614
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <145                 >=160              0.0280772   -0.0370093    0.0931636
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)            >=160             -0.0024073   -0.0393478    0.0345332
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)            >=160             -0.0107723   -0.0394500    0.0179054
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)            >=160             -0.0104015   -0.0392028    0.0183998
12-24 months   ki0047075b-MAL-ED          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <145                 >=160             -0.0650978   -0.0866111   -0.0435844
12-24 months   ki0047075b-MAL-ED          INDIA                          [145-150)            >=160             -0.0391562   -0.0592374   -0.0190751
12-24 months   ki0047075b-MAL-ED          INDIA                          [150-155)            >=160             -0.0348187   -0.0542070   -0.0154303
12-24 months   ki0047075b-MAL-ED          INDIA                          [155-160)            >=160             -0.0327624   -0.0532722   -0.0122526
12-24 months   ki0047075b-MAL-ED          PERU                           >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <145                 >=160              0.0002635   -0.0328305    0.0333575
12-24 months   ki0047075b-MAL-ED          PERU                           [145-150)            >=160              0.0178707   -0.0142350    0.0499763
12-24 months   ki0047075b-MAL-ED          PERU                           [150-155)            >=160              0.0068014   -0.0246995    0.0383022
12-24 months   ki0047075b-MAL-ED          PERU                           [155-160)            >=160              0.0321786   -0.0008207    0.0651778
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145                 >=160              0.0244905   -0.0002415    0.0492225
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)            >=160              0.0035277   -0.0239967    0.0310521
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)            >=160              0.0215828   -0.0038369    0.0470025
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)            >=160             -0.0049006   -0.0216396    0.0118384
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160              0.0025204   -0.0178108    0.0228517
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             -0.0133219   -0.0409647    0.0143208
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             -0.0232275   -0.0427316   -0.0037233
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             -0.0127363   -0.0325992    0.0071267
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <145                 >=160             -0.0071046   -0.0303927    0.0161836
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)            >=160             -0.0199118   -0.0421832    0.0023595
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)            >=160             -0.0214478   -0.0434965    0.0006009
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)            >=160             -0.0141921   -0.0376286    0.0092443
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             -0.0065308   -0.0199276    0.0068660
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160              0.0011189   -0.0113477    0.0135855
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160              0.0028193   -0.0098503    0.0154888
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             -0.0010184   -0.0149032    0.0128664
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145                 >=160             -0.0086622   -0.0313421    0.0140177
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)            >=160             -0.0031324   -0.0245390    0.0182743
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)            >=160             -0.0023329   -0.0239355    0.0192696
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)            >=160              0.0048215   -0.0177939    0.0274369
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             -0.0060550   -0.0240764    0.0119664
12-24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             -0.0021206   -0.0198887    0.0156476
12-24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             -0.0088182   -0.0269177    0.0092812
12-24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160              0.0004309   -0.0195882    0.0204501
12-24 months   ki1135781-COHORTS          INDIA                          >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <145                 >=160              0.0037891   -0.0084626    0.0160409
12-24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             -0.0021109   -0.0123477    0.0081259
12-24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             -0.0012315   -0.0113871    0.0089241
12-24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             -0.0027490   -0.0135534    0.0080554
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             -0.0084977   -0.0223359    0.0053404
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             -0.0059822   -0.0185333    0.0065689
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             -0.0055290   -0.0178467    0.0067886
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             -0.0095252   -0.0226324    0.0035820
12-24 months   ki1148112-LCNI-5           MALAWI                         >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <145                 >=160             -0.0501776   -0.0649602   -0.0353949
12-24 months   ki1148112-LCNI-5           MALAWI                         [145-150)            >=160             -0.0041610   -0.0243626    0.0160405
12-24 months   ki1148112-LCNI-5           MALAWI                         [150-155)            >=160              0.0004935   -0.0131201    0.0141071
12-24 months   ki1148112-LCNI-5           MALAWI                         [155-160)            >=160              0.0110641   -0.0019132    0.0240413
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160              0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             -0.0000392   -0.0106282    0.0105498
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             -0.0001998   -0.0099595    0.0095600
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             -0.0026082   -0.0127428    0.0075265
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             -0.0009274   -0.0117699    0.0099150
