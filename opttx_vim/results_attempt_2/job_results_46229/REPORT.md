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
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)        44      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20             9      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            8      61
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)        15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)        19      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1      23
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       658    1423
Birth       ki1101329-Keneba           GAMBIA                         <20           222    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30          543    1423
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      4850    6739
Birth       ki1119695-PROBIT           BELARUS                        <20           648    6739
Birth       ki1119695-PROBIT           BELARUS                        >=30         1241    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      8679   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2030   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2171   12880
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       172     375
Birth       ki1135781-COHORTS          GUATEMALA                      <20            59     375
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          144     375
Birth       ki1135781-COHORTS          INDIA                          [20-30)      2965    4405
Birth       ki1135781-COHORTS          INDIA                          <20           337    4405
Birth       ki1135781-COHORTS          INDIA                          >=30         1103    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1744    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           354    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          801    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      3881    7684
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          3074    7684
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30          729    7684
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)       307     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20            58     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30           46     411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        70      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20             8      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           19      97
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
6 months    ki1119695-PROBIT           BELARUS                        [20-30)      5527    7664
6 months    ki1119695-PROBIT           BELARUS                        <20           763    7664
6 months    ki1119695-PROBIT           BELARUS                        >=30         1374    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5463    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1255    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1531    8249
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       214     465
6 months    ki1135781-COHORTS          GUATEMALA                      <20            66     465
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          185     465
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3326    4897
6 months    ki1135781-COHORTS          INDIA                          <20           371    4897
6 months    ki1135781-COHORTS          INDIA                          >=30         1200    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1600    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          775    2706
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      3749    8306
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          3985    8306
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30          572    8306
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
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      1169    1589
24 months   ki1119695-PROBIT           BELARUS                        <20           112    1589
24 months   ki1119695-PROBIT           BELARUS                        >=30          308    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       271     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            69     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           82     422
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       245     524
24 months   ki1135781-COHORTS          GUATEMALA                      <20            85     524
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          194     524
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2446    3665
24 months   ki1135781-COHORTS          INDIA                          <20           246    3665
24 months   ki1135781-COHORTS          INDIA                          >=30          973    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1461    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           293    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          695    2449
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       241     461
24 months   ki1148112-LCNI-5           MALAWI                         <20            78     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30          142     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      1991    4280
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          1956    4280
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          333    4280


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
![](/tmp/c2f46081-4983-4de1-b8eb-08a59cc65201/372ba1af-1326-4b87-9ee4-a5d5ce43fb15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8200283   -1.1417514   -0.4983053
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2305749   -0.2274551    0.6886048
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0707412   -1.6219908   -0.5194917
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0930561   -0.3326876    0.1465755
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0952976   -0.1707151    0.3613103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4713546    0.0250613    0.9176479
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2883305   -3.5490243    0.9723633
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.7193717   -2.1841917   -1.2545517
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2047381   -0.5960465    0.1865704
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5936481   -2.7148266   -0.4724695
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.8128453    1.6548088    1.9708819
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1107430   -1.4455020   -0.7759840
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3753204   -0.4380272   -0.3126136
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2948240   -1.5596832   -1.0299649
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9846846   -1.0460320   -0.9233371
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6133517   -0.7003024   -0.5264010
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7013760   -0.7404003   -0.6623518
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4615256   -0.7122433   -0.2108079
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9234394    0.6743944    1.1724843
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3938970   -0.7015995   -0.0861945
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1765051   -0.4198434    0.0668332
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0571906    0.7921980    1.3221832
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5736168    0.1053126    1.0419210
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6319233    0.4580251    0.8058214
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2663768   -0.7172457    0.1844922
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3099721   -0.8806703    0.2607260
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7993273   -1.0323842   -0.5662704
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.4390993   -1.8512820   -1.0269165
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3538717   -0.6258711   -0.0818723
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1594320   -0.3764398    0.0575758
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1119401   -0.2605567    0.0366765
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1077584   -0.0705196    0.2860364
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1615812   -0.2547432   -0.0684192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0413333   -0.2428824    0.1602157
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5088805   -0.6956030   -0.3221579
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6294872    0.5296457    0.7293288
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3121861    0.2663015    0.3580708
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2747891   -0.0330565    0.5826347
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6781974   -0.7180131   -0.6383816
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2721308   -0.3573352   -0.1869264
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3418424    0.1647632    0.5189216
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5875673   -0.6272898   -0.5478448
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7875841   -0.9519968   -0.6231714
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4427365    0.0515643    0.8339087
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8068765   -1.0405161   -0.5732369
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.4495382    0.2056991    0.6933773
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6617242    0.3686125    0.9548359
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1230029   -0.0701605    0.3161664
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6336683   -0.8966946   -0.3706419
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5291119   -0.8438446   -0.2143792
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5486762   -0.8662957   -0.2310568
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7998686   -0.9249029   -0.6748343
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7939572   -0.9661027   -0.6218117
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8363710   -0.9119813   -0.7607607
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0652764   -1.1746495   -0.9559032
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8841339    0.4258587    1.3424091
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0024876   -1.2168119   -0.7881634
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5228726   -0.6642759   -0.3814692
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.6041313   -0.6546470   -0.5536156
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5701841   -0.6359625   -0.5044056
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0862428   -0.0598693    0.2323549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3003979   -1.3539378   -1.2468580


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.3822951   -0.7231296   -0.0414606
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5140815   -0.5399633   -0.4881998
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2627733   -1.4008778   -1.1246688
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9742815   -1.0093427   -0.9392203
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7667582   -0.7936634   -0.7398530
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7031481   -0.8287310   -0.5775653
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7979562   -0.9920947   -0.6038177
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.1301031   -1.3613760   -0.8988302
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4410128   -0.5302967   -0.3517289
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0782666    0.0252568    0.1312764
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1833795   -0.2343793   -0.1323798
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0619988   -0.1773839    0.0533863
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3044096    0.2782992    0.3305201
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0489462   -0.0602343    0.1581267
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7119298   -0.7444861   -0.6793734
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4410463    0.3615008    0.5205919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5897556   -0.6172546   -0.5622566
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1830569   -1.2831570   -1.0829568
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5474237   -0.6231509   -0.4716964
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6627749   -0.6962103   -0.6293395
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0116486   -0.1020399    0.0787427
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2930491   -1.3255288   -1.2605694


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1430422   -0.4146921    0.1286077
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1733049   -0.2236926    0.5703024
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0024739   -0.5274200    0.5323678
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0194718   -0.1903558    0.2292995
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1515767   -0.3677242    0.0645708
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3218658   -0.0610127    0.7047442
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.6608305   -1.5092278    2.8308888
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.7087886    0.2482139    1.1693633
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1775570   -0.3600819    0.0049679
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1697195   -0.8176697    1.1571087
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1092262   -0.2477267    0.0292743
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0769837   -0.1417609   -0.0122065
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1387611   -0.1960675   -0.0814548
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0320507   -0.1756140    0.2397154
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0104031   -0.0378063    0.0586125
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1293734   -0.2042354   -0.0545114
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0653822   -0.0911753   -0.0395890
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3217296    0.1342430    0.5092162
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0482831   -0.1170900    0.2136562
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3092512   -0.6137864   -0.0047159
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2875503    0.0718303    0.5032703
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0027950   -0.2339771    0.2283871
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0315433   -0.4363965    0.3733098
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1148720   -0.2415708    0.0118268
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2362999   -0.6591674    0.1865676
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2889576   -0.8254428    0.2475276
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0013711   -0.1716888    0.1744311
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.3089962   -0.0722762    0.6902685
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0871411   -0.3426367    0.1683546
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0489385   -0.2489897    0.1511127
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1417023    0.0168527    0.2665520
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0294918   -0.1985059    0.1395224
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0217983   -0.0991714    0.0555747
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0206655   -0.1810800    0.1397491
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0959182   -0.2660876    0.0742512
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0484806   -0.1115656    0.0146044
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0077765   -0.0456686    0.0301156
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2258429   -0.5178045    0.0661187
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0337324   -0.0569450   -0.0105198
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0217125   -0.0988926    0.0554676
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0992039   -0.0473364    0.2457443
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0021883   -0.0312705    0.0268939
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0332414   -0.1364621    0.0699794
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0038907   -0.3296090    0.3373904
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1502346   -0.3876008    0.0871315
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3296377   -0.5448656   -0.1144098
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2350225   -0.5093623    0.0393174
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0729095   -0.2193724    0.0735534
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0765177   -0.1684362    0.3214717
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2167031   -0.5182939    0.0848876
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3611027   -0.6586934   -0.0635120
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0880726   -0.1873106    0.0111655
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1836070    0.0359041    0.3313100
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0284511   -0.0323580    0.0892601
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0663100   -0.1313045   -0.0013154
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0779739   -0.4336383    0.2776906
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1805692   -0.3836621    0.0225236
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0245511   -0.1440536    0.0949514
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0586436   -0.0972253   -0.0200619
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0397751   -0.0951930    0.0156428
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0978914   -0.2266531    0.0308703
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0073488   -0.0382125    0.0529102
