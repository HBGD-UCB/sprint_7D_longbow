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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       176     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            36     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           45     257
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)       117     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <20            34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           40     191
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)       165     205
Birth       ki0047075b-MAL-ED          INDIA                          <20            25     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30           15     205
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)       132     173
Birth       ki0047075b-MAL-ED          NEPAL                          <20             5     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30           36     173
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       145     287
Birth       ki0047075b-MAL-ED          PERU                           <20            77     287
Birth       ki0047075b-MAL-ED          PERU                           >=30           65     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       135     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            41     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           86     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        74     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           40     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        77      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      90
Birth       ki1000108-IRC              INDIA                          [20-30)       325     388
Birth       ki1000108-IRC              INDIA                          <20            35     388
Birth       ki1000108-IRC              INDIA                          >=30           28     388
Birth       ki1000109-EE               PAKISTAN                       [20-30)         1       2
Birth       ki1000109-EE               PAKISTAN                       <20             0       2
Birth       ki1000109-EE               PAKISTAN                       >=30            1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       135     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20            27     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30           25     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)        15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)        22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            2      27
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       705    1541
Birth       ki1101329-Keneba           GAMBIA                         <20           238    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30          598    1541
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9937   13884
Birth       ki1119695-PROBIT           BELARUS                        <20          1406   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30         2541   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      9266   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2200   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2324   13790
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       405     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20           121     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          326     852
Birth       ki1135781-COHORTS          INDIA                          [20-30)      3180    4715
Birth       ki1135781-COHORTS          INDIA                          <20           368    4715
Birth       ki1135781-COHORTS          INDIA                          >=30         1167    4715
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1821    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           378    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          851    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      9558   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          8187   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         1858   19603
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       293     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     369
6 months    ki1000108-IRC              INDIA                          [20-30)       342     407
6 months    ki1000108-IRC              INDIA                          <20            36     407
6 months    ki1000108-IRC              INDIA                          >=30           29     407
6 months    ki1000109-EE               PAKISTAN                       [20-30)       159     370
6 months    ki1000109-EE               PAKISTAN                       <20             1     370
6 months    ki1000109-EE               PAKISTAN                       >=30          210     370
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1017    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       261     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           83     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       357     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            65     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          109     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1318    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2012
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       370     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11316   15761
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30         2825   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5481    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1261    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1538    8280
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       470     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          373     961
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3331    4904
6 months    ki1135781-COHORTS          INDIA                          <20           371    4904
6 months    ki1135781-COHORTS          INDIA                          >=30         1202    4904
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1601    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          776    2708
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7679   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7905   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1221   16805
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       289     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       408     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          105     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       790    1714
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       323     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            98     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           78     499
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2893    4035
24 months   ki1119695-PROBIT           BELARUS                        <20           369    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30          773    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       299     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            71     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           86     456
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       528    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20           153    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          386    1067
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2466    3695
24 months   ki1135781-COHORTS          INDIA                          <20           247    3695
24 months   ki1135781-COHORTS          INDIA                          >=30          982    3695
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1460    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           292    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          693    2445
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       250     475
24 months   ki1148112-LCNI-5           MALAWI                         <20            80     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30          145     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4058    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3855    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          714    8627


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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
![](/tmp/da35e118-d88c-408c-b53e-bc1f690f67a8/9c1e2827-2b10-49f2-bbbf-c7b806e4cb44/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2390331   -1.4815783   -0.9964880
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.8022316   -1.1774833   -0.4269799
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5826072   -1.0501327   -0.1150817
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8389196   -1.1270376   -0.5508016
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6371452   -0.8833469   -0.3909435
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6445381   -0.8512334   -0.4378428
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0377872   -1.4783992   -0.5971751
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0366955   -0.5324852    0.4590943
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1220056   -1.5343180   -0.7096932
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7385105   -1.3141639   -0.1628571
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1702196    0.0662706    0.2741687
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.4365230    1.2478016    1.6252443
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4082924   -0.4598323   -0.3567526
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2519975    0.1108278    0.3931672
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5417253   -0.6083537   -0.4750969
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2310475   -0.3014962   -0.1605988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4932789   -1.5210153   -1.4655425
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1245310   -1.2562623   -0.9927996
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2323387   -0.0752280    0.5399054
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8884193   -1.2150963   -0.5617422
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5611996   -0.8411007   -0.2812985
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3588022   -1.5080892   -1.2095152
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0728327   -1.2958339   -0.8498315
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5127593   -1.7207425   -1.3047762
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.6307271   -2.0831627   -1.1782914
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.9765430   -1.4751939   -0.4778921
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4289918   -1.5382563   -1.3197274
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8986963   -2.2536146   -1.5437780
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2238928   -1.4664239   -0.9813617
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0264448   -1.1176679   -0.9352216
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2146266   -1.3531491   -1.0761042
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4890806   -0.6004907   -0.3776705
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9067590   -1.0024701   -0.8110478
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.6544538   -1.8792161   -1.4296916
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2652269   -1.3553990   -1.1750549
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1478315    0.0455016    0.2501615
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8795931   -0.9276495   -0.8315367
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.8723852   -2.0249431   -1.7198273
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.0122804   -1.0554835   -0.9690774
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0761796   -1.1279168   -1.0244423
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5501804   -1.7309557   -1.3694050
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2397849   -1.2695310   -1.2100388
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8375896   -1.9874641   -1.6877150
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3681989   -0.6973369   -0.0390610
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5050660   -1.8135241   -1.1966078
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.7690248   -1.9397098   -1.5983398
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5660993   -1.8893361   -1.2428626
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7002281   -2.9750400   -2.4254161
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.3042281   -2.6344677   -1.9739886
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7821604   -2.1141999   -1.4501209
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9237015   -2.2054800   -1.6419231
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5310264   -1.7257953   -1.3362574
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3553566   -1.5355546   -1.1751587
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5263577   -1.5966206   -1.4560947
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.9188162   -2.1159231   -1.7217093
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0227208   -1.3750089    1.4204505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.5616778   -2.7434041   -2.3799514
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7822425   -2.9155982   -2.6488867
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9358354   -1.9839926   -1.8876782
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3573880   -2.4263255   -2.2884505
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.9057827   -2.1105125   -1.7010530
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9792031   -2.0148182   -1.9435881


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0010732   -1.1398488   -0.8622975
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5006062   -0.5212001   -0.4800123
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6779343   -0.7109987   -0.6448698
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747080   -1.5944357   -1.5549802
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2105413   -1.3291476   -1.0919350
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4062134   -1.4951703   -1.3172565
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5410317   -0.5901099   -0.4919536
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9040346   -0.9513522   -0.8567171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5617391   -1.6780690   -1.4454093
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8900815   -0.9160782   -0.8640848
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0441293   -1.0769738   -1.0112848
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6498804   -1.7271669   -1.5725940
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3135466   -1.3366721   -1.2904210
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8494222   -1.9760821   -1.7227624
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1826015   -2.2858082   -2.0793948
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5650387   -1.6150832   -1.5149942
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4008114   -2.5160291   -2.2855938
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8597376   -2.9241330   -2.7953421
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0059919   -2.0454828   -1.9665010
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8866737   -1.9780710   -1.7952764
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0127124   -2.0404582   -1.9849666


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1546363   -0.0373949    0.3466675
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0412892   -0.2972107    0.3797891
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4184660   -0.8736613    0.0367293
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1300179   -0.0959231    0.3559589
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2950847   -0.5105857   -0.0795838
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0820650   -0.2609725    0.0968425
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1039660   -0.3110615    0.5189935
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2713458   -0.7597550    0.2170634
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2726468   -0.6037165    0.0584228
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.2092248   -0.2434918    0.6619413
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1360730   -0.2174348   -0.0547111
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1110455   -0.1817054   -0.0403855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0923138   -0.1390897   -0.0455379
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1222674   -0.2418191   -0.0027157
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1362090   -0.1941840   -0.0782340
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0180017   -0.0751396    0.0391362
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0814290   -0.1013709   -0.0614871
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0811468   -0.1681473    0.0058537
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1813180   -0.4691155    0.1064796
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3221220   -0.6445685    0.0003244
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0001403   -0.2433693    0.2436499
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0320012   -0.0905063    0.1545088
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0094567   -0.1683307    0.1872442
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1526379   -0.0310670    0.3363428
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2072763   -0.2245183    0.6390709
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2578632   -0.7382186    0.2224921
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0271355   -0.0395245    0.0937956
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0000121   -0.3382601    0.3382842
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1823206   -0.4135396    0.0488985
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0606593   -0.1108150   -0.0105036
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0159483   -0.0972216    0.1291182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0519511   -0.1490033    0.0451010
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0027243   -0.0834840    0.0889327
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0927147   -0.0809563    0.2663856
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0669252   -0.1267249   -0.0071256
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0408329   -0.0899408    0.0082750
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0104884   -0.0504014    0.0294245
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0566516   -0.0822047    0.1955078
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0318488   -0.0592891   -0.0044085
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0643928   -0.0988831   -0.0299025
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0997001   -0.2680455    0.0686454
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0737617   -0.0931803   -0.0543430
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1055236   -0.1921312   -0.0189161
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4100333    0.1212571    0.6988094
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3443563   -0.6436224   -0.0450901
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0189253   -0.1502477    0.1880984
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0567368   -0.3498934    0.2364198
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0943402   -0.1362950    0.3249754
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2551401   -0.5712252    0.0609449
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0003172   -0.3196936    0.3190592
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2589000   -0.5272401    0.0094402
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0550915   -0.2252653    0.1150823
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0741764   -0.2325021    0.0841492
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0386810   -0.0928462    0.0154842
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0352256   -0.1362076    0.2066589
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1541255   -1.3375720    1.0293209
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1608664    0.0038373    0.3178954
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0774951   -0.1949810    0.0399908
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0701565   -0.0978193   -0.0424936
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0324770   -0.0851843    0.0202302
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0191091   -0.1671571    0.2053752
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0335093   -0.0574280   -0.0095906
