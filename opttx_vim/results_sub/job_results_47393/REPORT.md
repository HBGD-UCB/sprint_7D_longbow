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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       164     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            34     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           43     241
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)       110     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <20            34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           39     183
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)       163     202
Birth       ki0047075b-MAL-ED          INDIA                          <20            24     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30           15     202
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)       129     168
Birth       ki0047075b-MAL-ED          NEPAL                          <20             4     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30           35     168
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       142     279
Birth       ki0047075b-MAL-ED          PERU                           <20            73     279
Birth       ki0047075b-MAL-ED          PERU                           >=30           64     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       132     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           86     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        70     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           39     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        76      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            5      88
Birth       ki1000108-IRC              INDIA                          [20-30)       289     343
Birth       ki1000108-IRC              INDIA                          <20            28     343
Birth       ki1000108-IRC              INDIA                          >=30           26     343
Birth       ki1000109-EE               PAKISTAN                       [20-30)         0       1
Birth       ki1000109-EE               PAKISTAN                       <20             0       1
Birth       ki1000109-EE               PAKISTAN                       >=30            1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       121     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20            22     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30           23     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)        15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)        19      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1      23
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       658    1423
Birth       ki1101329-Keneba           GAMBIA                         <20           222    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30          543    1423
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9897   13824
Birth       ki1119695-PROBIT           BELARUS                        <20          1400   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30         2527   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      8679   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2030   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2171   12880
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       367     756
Birth       ki1135781-COHORTS          GUATEMALA                      <20           101     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          288     756
Birth       ki1135781-COHORTS          INDIA                          [20-30)      2965    4405
Birth       ki1135781-COHORTS          INDIA                          <20           337    4405
Birth       ki1135781-COHORTS          INDIA                          >=30         1103    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1744    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           354    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          801    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7944   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          6245   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         1513   15702
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)       165     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20            35     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)       125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20            37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30           47     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)       179     234
6 months    ki0047075b-MAL-ED          INDIA                          <20            34     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30           21     234
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)       185     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20             5     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30           46     236
6 months    ki0047075b-MAL-ED          PERU                           [20-30)       136     273
6 months    ki0047075b-MAL-ED          PERU                           <20            76     273
6 months    ki0047075b-MAL-ED          PERU                           >=30           61     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       118     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            42     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           94     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          104     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       292     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     368
6 months    ki1000108-IRC              INDIA                          [20-30)       342     408
6 months    ki1000108-IRC              INDIA                          <20            37     408
6 months    ki1000108-IRC              INDIA                          >=30           29     408
6 months    ki1000109-EE               PAKISTAN                       [20-30)       160     373
6 months    ki1000109-EE               PAKISTAN                       <20             1     373
6 months    ki1000109-EE               PAKISTAN                       >=30          212     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1015    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       260     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           84     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       356     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            65     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          108     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1317    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2011
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       370     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11313   15757
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30         2824   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5463    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1255    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1531    8249
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       471     963
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          374     963
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3326    4897
6 months    ki1135781-COHORTS          INDIA                          <20           371    4897
6 months    ki1135781-COHORTS          INDIA                          >=30         1200    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1600    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          775    2706
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7656   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7904   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1219   16779
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       146     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       102     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)       172     225
24 months   ki0047075b-MAL-ED          INDIA                          <20            33     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20             4     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     228
24 months   ki0047075b-MAL-ED          PERU                           [20-30)        98     201
24 months   ki0047075b-MAL-ED          PERU                           <20            55     201
24 months   ki0047075b-MAL-ED          PERU                           >=30           48     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       106     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            39     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           92     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       296     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           42     372
24 months   ki1000108-IRC              INDIA                          [20-30)       343     409
24 months   ki1000108-IRC              INDIA                          <20            37     409
24 months   ki1000108-IRC              INDIA                          >=30           29     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       288     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       408     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          106     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       791    1715
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       322     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            98     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           78     498
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2847    3971
24 months   ki1119695-PROBIT           BELARUS                        <20           364    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30          760    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       271     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            69     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           82     422
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       532    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <20           154    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          390    1076
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2446    3665
24 months   ki1135781-COHORTS          INDIA                          <20           246    3665
24 months   ki1135781-COHORTS          INDIA                          >=30          973    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1461    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           293    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          695    2449
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       241     461
24 months   ki1148112-LCNI-5           MALAWI                         <20            78     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30          142     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4041    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3845    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          712    8598


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/f4ab9a9b-cca9-4e5c-ba16-11922c50f69e/cc96cfb6-6354-47e3-bff9-5a9e97fa42b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8389617   -1.1620670   -0.5158563
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2986407   -0.1743268    0.7716081
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7267546   -1.3938318   -0.0596774
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0292874   -0.2215813    0.2801560
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0002760   -0.2598140    0.2592619
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8108770    0.6047391    1.0170148
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1301785   -3.4612836    1.2009266
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.1568363   -1.9301917   -0.3834809
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6395235   -0.9472736   -0.3317734
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.1372792   -2.6722079   -1.6023506
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7863976    1.6142723    1.9585229
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0691107   -1.2703857   -0.8678357
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3736720   -0.4364268   -0.3109173
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9643011   -1.1378630   -0.7907391
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9847399   -1.0431691   -0.9263106
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6050275   -0.6934768   -0.5165783
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6748750   -0.7094164   -0.6403336
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3589953   -0.6451700   -0.0728205
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0473657    0.8251072    1.2696242
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3649603   -0.6823346   -0.0475860
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1482553   -0.3651635    0.0686529
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1073104    0.8647597    1.3498611
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4710956    0.0967074    0.8454838
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6336910    0.4602515    0.8071304
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2867246   -0.7423511    0.1689019
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2911457   -0.8566384    0.2743471
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5790413   -0.6655113   -0.4925713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.0111701   -1.2736513   -0.7486888
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3254374   -0.6003667   -0.0505080
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1640543   -0.3733869    0.0452784
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0932583   -0.2320706    0.0455541
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0920161   -0.1052367    0.2892690
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1622052   -0.2575661   -0.0668444
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0591788   -0.2071976    0.0888401
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4868447   -0.6808567   -0.2928326
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6224984    0.5535397    0.6914571
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3172164    0.2705244    0.3639085
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2652010    0.0681629    0.4622390
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6885677   -0.7346602   -0.6424751
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2704336   -0.3610661   -0.1798011
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3690454    0.2144613    0.5236295
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5879876   -0.6208655   -0.5551097
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7570608   -0.9028872   -0.6112344
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0968015   -0.2275117    0.4211147
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8170768   -1.0469313   -0.5872223
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.4552435    0.2006298    0.7098571
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6813734    0.4056231    0.9571238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1341362   -0.0575757    0.3258481
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8135678   -1.0866113   -0.5405244
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5291329   -0.8351431   -0.2231228
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6054532   -0.9265886   -0.2843177
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8614150   -0.9667646   -0.7560654
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6979614   -0.8491486   -0.5467743
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8509348   -0.9254315   -0.7764382
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0626325   -1.1721824   -0.9530826
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6982724    0.5318887    0.8646561
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0069973   -1.2253519   -0.7886428
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3146620   -0.4279860   -0.2013380
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5971133   -0.6485542   -0.5456723
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6081566   -0.6762681   -0.5400451
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0552512   -0.0961001    0.2066025
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3241666   -1.3677118   -1.2806213


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0682673   -1.2076956   -0.9288391
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5140815   -0.5399633   -0.4881998
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9742815   -1.0093427   -0.9392203
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7239791   -0.7438253   -0.7041329
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7031481   -0.8287310   -0.5775653
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4410128   -0.5302967   -0.3517289
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0782666    0.0252568    0.1312764
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1833795   -0.2343793   -0.1323798
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0619988   -0.1773839    0.0533863
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3044096    0.2782992    0.3305201
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7119298   -0.7444861   -0.6793734
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4410463    0.3615008    0.5205919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5933575   -0.6128938   -0.5738211
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9571111   -1.0731621   -0.8410602
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9097790   -1.0080462   -0.8115117
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8079199   -0.8550714   -0.7607684
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1830569   -1.2831570   -1.0829568
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6627749   -0.6962103   -0.6293395
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0116486   -0.1020399    0.0787427
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2977181   -1.3209986   -1.2744376


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1241089   -0.3915918    0.1433741
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1052391   -0.3016109    0.5120892
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3415127   -0.9839712    0.3009458
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1028716   -0.3214054    0.1156622
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0560030   -0.2676599    0.1556538
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0176566   -0.2118490    0.1765358
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.5026785   -1.7466981    2.7520551
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1462532   -0.5953849    0.8878913
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.3697644    0.1546503    0.5848786
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.7133506    0.1820917    1.2446096
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0827785   -0.2329320    0.0673749
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0772363   -0.1257866   -0.0286859
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1404095   -0.1978088   -0.0830102
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0978418   -0.2356863    0.0400027
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0104584   -0.0328959    0.0538126
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1376975   -0.2140282   -0.0613669
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0491041   -0.0759909   -0.0222173
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2191993   -0.0226241    0.4610227
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0756432   -0.2127889    0.0615025
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3381879   -0.6532515   -0.0231243
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2593005    0.0650640    0.4535370
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0529148   -0.2636508    0.1578212
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0709779   -0.2685859    0.4105416
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1166397   -0.2428767    0.0095973
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2159520   -0.6434161    0.2115120
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3077841   -0.8390414    0.2234733
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0866671   -0.1896238    0.0162896
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0009878   -0.2482876    0.2463119
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1155754   -0.3724324    0.1412816
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0443163   -0.2380957    0.1494631
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1230205    0.0061922    0.2398488
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0137495   -0.2017571    0.1742581
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0211743   -0.1015786    0.0592300
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0028200   -0.1185488    0.1129088
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1179540   -0.2941881    0.0582800
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0435351   -0.0964822    0.0094119
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0128068   -0.0512272    0.0256136
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0711200   -0.2576170    0.1153770
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0233621   -0.0553210    0.0085969
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0234097   -0.1056443    0.0588249
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0720009   -0.0584078    0.2024097
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0053699   -0.0318132    0.0210734
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0637646   -0.1469696    0.0194403
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3498257    0.0730176    0.6266337
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1400343   -0.3735335    0.0934648
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3353430   -0.5596077   -0.1110782
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2546717   -0.5122672    0.0029238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0840427   -0.2291308    0.0610453
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2564173   -0.0019208    0.5147554
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2166820   -0.5098378    0.0764737
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3043258   -0.6060014   -0.0026501
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0265262   -0.0940695    0.0410171
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0876112   -0.0363563    0.2115788
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0430149   -0.0120190    0.0980488
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0689539   -0.1340186   -0.0038891
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0119289   -0.1301818    0.1063239
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1760596   -0.3827580    0.0306389
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0332865   -0.0665640    0.1331370
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0656616   -0.1050762   -0.0262470
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0018026   -0.0598388    0.0562336
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0668998   -0.1929983    0.0591988
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0264485   -0.0108589    0.0637559
