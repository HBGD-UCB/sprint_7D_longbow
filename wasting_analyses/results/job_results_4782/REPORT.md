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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* impfloor
* impsan
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25             0       91     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25             1       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)         0       76     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)         1       13     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            0       34     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30            1        9     241
Birth       ki0047075b-MAL-ED          BRAZIL                         <25             0       93     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <25             1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)         0       47     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)         1        3     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            0       37     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30            1        2     183
Birth       ki0047075b-MAL-ED          INDIA                          <25             0      100     202
Birth       ki0047075b-MAL-ED          INDIA                          <25             1       20     202
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)         0       56     202
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)         1       11     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30            0       13     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30            1        2     202
Birth       ki0047075b-MAL-ED          NEPAL                          <25             0       35     168
Birth       ki0047075b-MAL-ED          NEPAL                          <25             1        8     168
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)         0       81     168
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)         1        9     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            0       32     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            1        3     168
Birth       ki0047075b-MAL-ED          PERU                           <25             0      152     279
Birth       ki0047075b-MAL-ED          PERU                           <25             1        3     279
Birth       ki0047075b-MAL-ED          PERU                           [25-30)         0       58     279
Birth       ki0047075b-MAL-ED          PERU                           [25-30)         1        2     279
Birth       ki0047075b-MAL-ED          PERU                           >=30            0       63     279
Birth       ki0047075b-MAL-ED          PERU                           >=30            1        1     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25             0      108     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25             1       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         0       50     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       82     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        4     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             0       45     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         0       33     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0       38     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25             0       41      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25             1       10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)         0       29      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)         1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        1      88
Birth       ki1000108-IRC              INDIA                          <25             0      154     343
Birth       ki1000108-IRC              INDIA                          <25             1       59     343
Birth       ki1000108-IRC              INDIA                          [25-30)         0       76     343
Birth       ki1000108-IRC              INDIA                          [25-30)         1       28     343
Birth       ki1000108-IRC              INDIA                          >=30            0       21     343
Birth       ki1000108-IRC              INDIA                          >=30            1        5     343
Birth       ki1000109-EE               PAKISTAN                       <25             0        0       2
Birth       ki1000109-EE               PAKISTAN                       <25             1        0       2
Birth       ki1000109-EE               PAKISTAN                       [25-30)         0        0       2
Birth       ki1000109-EE               PAKISTAN                       [25-30)         1        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30            0        2       2
Birth       ki1000109-EE               PAKISTAN                       >=30            1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25             0       93     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25             1        7     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)         0       40     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)         1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            0       22     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30            1        1     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25             0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25             1        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)         0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)         1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25             0       11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25             1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         0        8      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        0      23
Birth       ki1101329-Keneba           GAMBIA                         <25             0      556    1423
Birth       ki1101329-Keneba           GAMBIA                         <25             1        7    1423
Birth       ki1101329-Keneba           GAMBIA                         [25-30)         0      309    1423
Birth       ki1101329-Keneba           GAMBIA                         [25-30)         1        8    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30            0      530    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30            1       13    1423
Birth       ki1119695-PROBIT           BELARUS                        <25             0     5831   13824
Birth       ki1119695-PROBIT           BELARUS                        <25             1     1594   13824
Birth       ki1119695-PROBIT           BELARUS                        [25-30)         0     3062   13824
Birth       ki1119695-PROBIT           BELARUS                        [25-30)         1      810   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30            0     2043   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30            1      484   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25             0     6225   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25             1     1269   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)         0     2738   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)         1      477   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1866   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1      305   12880
Birth       ki1135781-COHORTS          GUATEMALA                      <25             0      216     756
Birth       ki1135781-COHORTS          GUATEMALA                      <25             1       84     756
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)         0      129     756
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)         1       39     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30            0      219     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30            1       69     756
Birth       ki1135781-COHORTS          INDIA                          <25             0     1499    4405
Birth       ki1135781-COHORTS          INDIA                          <25             1      345    4405
Birth       ki1135781-COHORTS          INDIA                          [25-30)         0     1237    4405
Birth       ki1135781-COHORTS          INDIA                          [25-30)         1      221    4405
Birth       ki1135781-COHORTS          INDIA                          >=30            0      905    4405
Birth       ki1135781-COHORTS          INDIA                          >=30            1      198    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    <25             0     1067    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <25             1      218    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)         0      680    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)         1      133    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30            0      701    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30            1      100    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25             0    20602   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25             1     2130   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)         0     5106   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)         1      540   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     2686   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      340   31404
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25             0      111     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25             1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)         0       82     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)         1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30            0       40     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30            1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         <25             0      100     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <25             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)         0       62     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)         1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30            0       46     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30            1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          <25             0      125     234
6 months    ki0047075b-MAL-ED          INDIA                          <25             1       12     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)         0       70     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)         1        6     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30            0       21     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30            1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          <25             0       61     236
6 months    ki0047075b-MAL-ED          NEPAL                          <25             1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)         0      125     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)         1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30            0       46     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           <25             0      153     273
6 months    ki0047075b-MAL-ED          PERU                           <25             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)         0       59     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)         1        0     273
6 months    ki0047075b-MAL-ED          PERU                           >=30            0       61     273
6 months    ki0047075b-MAL-ED          PERU                           >=30            1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25             0      116     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25             1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         0       39     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       92     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        2     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             0       78     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         0       64     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0      104     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25             0      192     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25             1       26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)         0       90     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)         1       17     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0       40     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        3     368
6 months    ki1000108-IRC              INDIA                          <25             0      226     408
6 months    ki1000108-IRC              INDIA                          <25             1       31     408
6 months    ki1000108-IRC              INDIA                          [25-30)         0      105     408
6 months    ki1000108-IRC              INDIA                          [25-30)         1       17     408
6 months    ki1000108-IRC              INDIA                          >=30            0       23     408
6 months    ki1000108-IRC              INDIA                          >=30            1        6     408
6 months    ki1000109-EE               PAKISTAN                       <25             0       36     746
6 months    ki1000109-EE               PAKISTAN                       <25             1        4     746
6 months    ki1000109-EE               PAKISTAN                       [25-30)         0      252     746
6 months    ki1000109-EE               PAKISTAN                       [25-30)         1       30     746
6 months    ki1000109-EE               PAKISTAN                       >=30            0      360     746
6 months    ki1000109-EE               PAKISTAN                       >=30            1       64     746
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25             0      732    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25             1       96    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)         0      311    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)         1       47    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30            0      125    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30            1       23    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25             0      146     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25             1       21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)         0      106     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)         1       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30            0       59     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30            1       25     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25             0      243     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25             1       13     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)         0      149     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)         1       12     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            0      108     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30            1        9     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25             0      285     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25             1        7     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)         0      170     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)         1       12     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            0      103     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30            1        5     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25             0      363     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25             1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         0      215     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         1        4     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0      116     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25             0      738    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25             1       31    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         0      668    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         1       26    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0      518    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1       30    2011
6 months    ki1101329-Keneba           GAMBIA                         <25             0      772    2080
6 months    ki1101329-Keneba           GAMBIA                         <25             1       41    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)         0      445    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)         1       17    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30            0      743    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30            1       62    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25             0      153     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25             1        1     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)         0       63     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)         1        0     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30            0       57     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30            1        2     276
6 months    ki1113344-GMS-Nepal        NEPAL                          <25             0      560    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          <25             1       54    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)         0      316    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)         1       26    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            0      148    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30            1       22    1126
6 months    ki1119695-PROBIT           BELARUS                        <25             0     8468   15757
6 months    ki1119695-PROBIT           BELARUS                        <25             1       64   15757
6 months    ki1119695-PROBIT           BELARUS                        [25-30)         0     4357   15757
6 months    ki1119695-PROBIT           BELARUS                        [25-30)         1       44   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30            0     2802   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30            1       22   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25             0     4475    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25             1      132    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)         0     2040    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)         1       71    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0     1469    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       62    8249
6 months    ki1135781-COHORTS          GUATEMALA                      <25             0      371     963
6 months    ki1135781-COHORTS          GUATEMALA                      <25             1       10     963
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)         0      199     963
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)         1        9     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30            0      361     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30            1       13     963
6 months    ki1135781-COHORTS          INDIA                          <25             0     1802    4897
6 months    ki1135781-COHORTS          INDIA                          <25             1      274    4897
6 months    ki1135781-COHORTS          INDIA                          [25-30)         0     1419    4897
6 months    ki1135781-COHORTS          INDIA                          [25-30)         1      202    4897
6 months    ki1135781-COHORTS          INDIA                          >=30            0     1029    4897
6 months    ki1135781-COHORTS          INDIA                          >=30            1      171    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    <25             0     1116    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <25             1       58    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)         0      705    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)         1       52    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30            0      724    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30            1       51    2706
6 months    ki1148112-LCNI-5           MALAWI                         <25             0      297     669
6 months    ki1148112-LCNI-5           MALAWI                         <25             1        3     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)         0      168     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)         1        3     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30            0      192     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30            1        6     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25             0    23734   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25             1     2163   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)         0     4740   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)         1      440   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     2198   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      238   33513
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25             0       81     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25             1       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)         0       76     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)         1        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30            0       34     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30            1        3     212
24 months   ki0047075b-MAL-ED          BRAZIL                         <25             0       78     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <25             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)         0       50     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)         1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30            0       38     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30            1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          <25             0      116     225
24 months   ki0047075b-MAL-ED          INDIA                          <25             1       16     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)         0       62     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)         1       11     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30            0       20     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30            1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          <25             0       57     228
24 months   ki0047075b-MAL-ED          NEPAL                          <25             1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)         0      122     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)         1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30            0       44     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30            1        1     228
24 months   ki0047075b-MAL-ED          PERU                           <25             0      102     201
24 months   ki0047075b-MAL-ED          PERU                           <25             1        3     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)         0       48     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)         1        0     201
24 months   ki0047075b-MAL-ED          PERU                           >=30            0       48     201
24 months   ki0047075b-MAL-ED          PERU                           >=30            1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25             0      108     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         0       37     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            0       92     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30            1        1     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             0       59     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         0       60     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            0       91     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30            1        1     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25             0      209     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25             1       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)         0      100     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)         1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30            0       40     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30            1        2     372
24 months   ki1000108-IRC              INDIA                          <25             0      238     409
24 months   ki1000108-IRC              INDIA                          <25             1       19     409
24 months   ki1000108-IRC              INDIA                          [25-30)         0      116     409
24 months   ki1000108-IRC              INDIA                          [25-30)         1        7     409
24 months   ki1000108-IRC              INDIA                          >=30            0       24     409
24 months   ki1000108-IRC              INDIA                          >=30            1        5     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25             0      188     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25             1       16     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)         0      105     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)         1       23     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            0       80     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30            1       14     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25             0      257     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25             1       36     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)         0      162     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)         1       17     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            0       94     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30            1       12     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25             0      254     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25             1       23     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         0      142     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)         1       16     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30            0       73     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1        6     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25             0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1        0       6
24 months   ki1101329-Keneba           GAMBIA                         <25             0      559    1715
24 months   ki1101329-Keneba           GAMBIA                         <25             1       65    1715
24 months   ki1101329-Keneba           GAMBIA                         [25-30)         0      343    1715
24 months   ki1101329-Keneba           GAMBIA                         [25-30)         1       41    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30            0      625    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30            1       82    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          <25             0      444     996
24 months   ki1113344-GMS-Nepal        NEPAL                          <25             1       98     996
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)         0      240     996
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)         1       58     996
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            0      130     996
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30            1       26     996
24 months   ki1119695-PROBIT           BELARUS                        <25             0     2097    3971
24 months   ki1119695-PROBIT           BELARUS                        <25             1       20    3971
24 months   ki1119695-PROBIT           BELARUS                        [25-30)         0     1078    3971
24 months   ki1119695-PROBIT           BELARUS                        [25-30)         1       16    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30            0      752    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30            1        8    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25             0      177     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25             1       43     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)         0       99     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)         1       21     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            0       70     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30            1       12     422
24 months   ki1135781-COHORTS          GUATEMALA                      <25             0      416    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <25             1       26    1076
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)         0      236    1076
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)         1        8    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30            0      374    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30            1       16    1076
24 months   ki1135781-COHORTS          INDIA                          <25             0     1341    3665
24 months   ki1135781-COHORTS          INDIA                          <25             1      134    3665
24 months   ki1135781-COHORTS          INDIA                          [25-30)         0     1097    3665
24 months   ki1135781-COHORTS          INDIA                          [25-30)         1      120    3665
24 months   ki1135781-COHORTS          INDIA                          >=30            0      876    3665
24 months   ki1135781-COHORTS          INDIA                          >=30            1       97    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    <25             0      987    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <25             1       72    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)         0      652    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)         1       43    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30            0      643    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30            1       52    2449
24 months   ki1148112-LCNI-5           MALAWI                         <25             0      194     461
24 months   ki1148112-LCNI-5           MALAWI                         <25             1        6     461
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)         0      118     461
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)         1        1     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30            0      141     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30            1        1     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25             0    10146   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25             1     2827   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)         0     2184   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)         1      579   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30            0     1080   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30            1      342   17158


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8d6bedf2-e73f-4944-b817-2ca2b15dbc5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d6bedf2-e73f-4944-b817-2ca2b15dbc5e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d6bedf2-e73f-4944-b817-2ca2b15dbc5e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d6bedf2-e73f-4944-b817-2ca2b15dbc5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1651376    0.0952873   0.2349879
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1460674    0.0725408   0.2195940
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2093023    0.0874570   0.3311477
Birth       ki1000108-IRC              INDIA                          <25                  NA                0.2769953    0.2168088   0.3371818
Birth       ki1000108-IRC              INDIA                          [25-30)              NA                0.2692308    0.1838583   0.3546032
Birth       ki1000108-IRC              INDIA                          >=30                 NA                0.1923077    0.0405968   0.3440186
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                0.0124334    0.0032770   0.0215898
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0252366    0.0079649   0.0425083
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0239411    0.0110790   0.0368031
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                0.2145150    0.1493010   0.2797291
Birth       ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2088089    0.1400328   0.2775850
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1906612    0.1266269   0.2546955
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1683022    0.1598901   0.1767143
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1471100    0.1351036   0.1591165
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1375754    0.1235899   0.1515610
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2775521    0.2288237   0.3262804
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.2310875    0.1719198   0.2902551
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2344696    0.1879781   0.2809610
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                0.1798381    0.1628494   0.1968268
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1518077    0.1338281   0.1697873
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.1820349    0.1602088   0.2038609
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.1679254    0.1477107   0.1881401
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1651996    0.1403943   0.1900050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1266835    0.1040193   0.1493476
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0930944    0.0872293   0.0989595
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0913109    0.0798032   0.1028186
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1087983    0.0933344   0.1242622
6 months    ki1000108-IRC              INDIA                          <25                  NA                0.1206226    0.0807553   0.1604898
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1393443    0.0778180   0.2008705
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966    0.0592839   0.3545092
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.1176335    0.0957241   0.1395429
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1305593    0.0873374   0.1737811
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1605736    0.1122350   0.2089121
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1516636    0.1016416   0.2016855
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.2220117    0.1568306   0.2871927
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3949214    0.3006153   0.4892276
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0507813    0.0238616   0.0777009
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.0745342    0.0339272   0.1151411
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0769231    0.0285939   0.1252523
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0239726    0.0064128   0.0415324
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0659341    0.0298488   0.1020193
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0462963    0.0066329   0.0859597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0387107    0.0249135   0.0525079
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0360770    0.0220124   0.0501415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0500987    0.0317235   0.0684740
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.0470412    0.0327590   0.0613235
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0352206    0.0190840   0.0513571
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0744124    0.0566108   0.0922139
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.0879479    0.0562385   0.1196572
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.0760234    0.0362640   0.1157828
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1294118    0.0579921   0.2008315
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.0074554    0.0056621   0.0092487
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0100644    0.0060781   0.0140507
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0076879    0.0041481   0.0112278
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0287263    0.0239291   0.0335236
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0338950    0.0263184   0.0414716
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0420229    0.0323455   0.0517003
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0262467    0.0101857   0.0423077
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0432692    0.0156045   0.0709340
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0347594    0.0161860   0.0533328
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.1290763    0.1150782   0.1430744
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1261345    0.1103310   0.1419380
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1470110    0.1276313   0.1663906
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0477492    0.0357171   0.0597814
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0679029    0.0503919   0.0854140
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0641512    0.0473766   0.0809257
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0835338    0.0782409   0.0888266
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0843272    0.0733271   0.0953272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0940092    0.0790029   0.1090156
24 months   ki1000108-IRC              INDIA                          <25                  NA                0.0739300    0.0419008   0.1059591
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.0569106    0.0159185   0.0979027
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138    0.0347647   0.3100629
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0784575    0.0415183   0.1153967
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1795384    0.1129497   0.2461271
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1490134    0.0770100   0.2210168
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1228669    0.0852450   0.1604888
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0949721    0.0519861   0.1379580
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1132075    0.0528377   0.1735774
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0830325    0.0505064   0.1155586
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1012658    0.0541801   0.1483516
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0759494    0.0174748   0.1344240
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.1055590    0.0817337   0.1293844
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1030942    0.0735786   0.1326098
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1156644    0.0923675   0.1389614
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1804719    0.1346602   0.2262836
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1948842    0.1314785   0.2582899
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1673502    0.0845578   0.2501426
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0094473    0.0021296   0.0167651
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0146252    0.0085540   0.0206965
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0105263   -0.0089925   0.0300451
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1908509    0.1395233   0.2421785
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1781272    0.1120676   0.2441868
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1525442    0.0777053   0.2273831
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0588235    0.0368778   0.0807693
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0327869    0.0104323   0.0551415
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0410256    0.0213310   0.0607203
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.0910678    0.0769519   0.1051836
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1037853    0.0873142   0.1202565
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1076613    0.0891199   0.1262026
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0658150    0.0510701   0.0805598
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0611298    0.0437312   0.0785285
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0753387    0.0560280   0.0946494
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2182501    0.2068636   0.2296365
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2096218    0.1876088   0.2316347
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2372791    0.2089261   0.2656322


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0196767   0.0124580   0.0268954
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1592391   0.1529198   0.1655584
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1734393   0.1622569   0.1846217
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0958477   0.0906460   0.1010493
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0636704   0.0429419   0.0843989
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432621   0.0343680   0.0521561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0576923   0.0476698   0.0677148
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0321251   0.0283197   0.0359306
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0332295   0.0219033   0.0445557
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1321217   0.1226366   0.1416069
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0847731   0.0799719   0.0895742
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1244131   0.0930343   0.1557919
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1096210   0.0948307   0.1244113
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0110803   0.0050506   0.0171100
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800948   0.1433886   0.2168010
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0957708   0.0862423   0.1052993
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2184404   0.2085499   0.2283309


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8845194   0.4583116   1.7070798
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.2674419   0.6171819   2.6028127
Birth       ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          [25-30)              <25               0.9719687   0.6617739   1.4275619
Birth       ki1000108-IRC              INDIA                          >=30                 <25               0.6942634   0.3063042   1.5736041
Birth       ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              <25               2.0297431   0.7427157   5.5470180
Birth       ki1101329-Keneba           GAMBIA                         >=30                 <25               1.9255459   0.7738617   4.7912014
Birth       ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9734001   0.8952504   1.0583718
Birth       ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8888013   0.7861588   1.0048450
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.8740827   0.7944322   0.9617189
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8174310   0.7300026   0.9153303
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8325914   0.6107217   1.1350643
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8447769   0.6491029   1.0994373
Birth       ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8441352   0.7257525   0.9818281
Birth       ki1135781-COHORTS          INDIA                          >=30                 <25               1.0122151   0.8693110   1.1786109
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9837679   0.8116465   1.1923901
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               0.7544032   0.6081064   0.9358957
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9808423   0.8531919   1.1275912
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1686882   1.0032409   1.3614199
6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1552089   0.6654715   2.0053565
6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.7152392   0.7813393   3.7653879
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1098813   0.8693284   1.4169979
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.3650321   0.9645481   1.9317987
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.4638429   0.9400265   2.2795486
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.6039302   1.7349327   3.9081935
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4677496   0.6863112   3.1389389
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.5147929   0.6658021   3.4463659
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               2.7503925   1.1022704   6.8627977
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.9312169   0.6256104   5.9615361
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9319642   0.5497168   1.5800086
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.2941840   0.7760196   2.1583374
6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.7487167   0.4328475   1.2950906
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.5818538   1.0756808   2.3262118
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.8644141   0.4579801   1.6315375
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.4714597   0.7611227   2.8447365
6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.3499468   0.8935561   2.0394425
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               1.0311861   0.6194340   1.7166393
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.1799286   0.8929116   1.5592041
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.4628704   1.1009137   1.9438308
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.6485577   0.6803786   3.9944563
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.3243316   0.5877344   2.9840929
6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9772090   0.8280828   1.1531907
6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.1389463   0.9603961   1.3506912
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.4220740   0.9918254   2.0389623
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.3435016   0.9347139   1.9310683
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0094980   0.8785768   1.1599283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1254040   0.9468468   1.3376337
24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.7697903   0.3321466   1.7840833
24 months   ki1000108-IRC              INDIA                          >=30                 <25               2.3321234   0.9402967   5.7841312
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               2.2883523   1.2566553   4.1670583
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.8992881   0.9674283   3.7287469
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.7729671   0.4475439   1.3350157
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9213836   0.4981753   1.7041145
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.2195927   0.6640015   2.2400648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9146946   0.3855803   2.1698881
24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9766497   0.6785586   1.4056925
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.0957321   0.8102297   1.4818377
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0798588   0.7151913   1.6304659
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9272922   0.5318644   1.6167106
24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.5480804   0.7015492   3.4160868
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.1142105   0.1540371   8.0595223
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9333318   0.5939367   1.4666686
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.7992846   0.4589530   1.3919853
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.5573770   0.2562185   1.2125165
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.6974359   0.3797179   1.2809953
24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.1396497   0.9133867   1.4219621
24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.1822105   0.9380468   1.4899274
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9288137   0.6466834   1.3340298
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1447044   0.8146512   1.6084776
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9604660   0.8532292   1.0811807
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0871894   0.9576461   1.2342564


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0008375   -0.0509439    0.0526189
Birth       ki1000108-IRC              INDIA                          <25                  NA                -0.0087737   -0.0452169    0.0276695
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0072433   -0.0010998    0.0155865
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0056030   -0.0128125    0.0016065
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0090631   -0.0143051   -0.0038210
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0235838   -0.0606316    0.0134640
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0063989   -0.0190575    0.0062598
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0123545   -0.0270975    0.0023885
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0027533   -0.0003372    0.0058437
6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0117304   -0.0141722    0.0376329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0068042   -0.0039758    0.0175843
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0299154   -0.0124723    0.0723030
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0128892   -0.0085474    0.0343257
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0172645    0.0011292    0.0333998
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0045514   -0.0065277    0.0156305
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0106511   -0.0010966    0.0223987
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0026383   -0.0190876    0.0243641
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0007949   -0.0003905    0.0019803
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0033988   -0.0000135    0.0068110
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0069828   -0.0065126    0.0204781
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0030454   -0.0076357    0.0137266
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0117482    0.0019382    0.0215581
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0012393   -0.0011968    0.0036754
24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0018647   -0.0180396    0.0217689
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0459556    0.0136747    0.0782366
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0104101   -0.0358052    0.0149849
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0045161   -0.0181964    0.0272286
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0040620   -0.0153985    0.0235225
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0022590   -0.0287664    0.0332845
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0016330   -0.0033411    0.0066071
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0107561   -0.0445308    0.0230185
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0123551   -0.0279844    0.0032742
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0047030   -0.0064166    0.0158227
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0023761   -0.0087832    0.0135355
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0001903   -0.0052484    0.0056291


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0050459   -0.3613879    0.2728496
Birth       ki1000108-IRC              INDIA                          <25                  NA                -0.0327108   -0.1778903    0.0945748
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                 0.3681172   -0.1947544    0.6658093
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0268198   -0.0635879    0.0086772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0569148   -0.0903142   -0.0245384
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0928612   -0.2492118    0.0439206
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0368939   -0.1125214    0.0335925
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0794142   -0.1784032    0.0112594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0287256   -0.0039872    0.0603725
6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0886295   -0.1285670    0.2640258
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0546798   -0.0306504    0.1329453
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1647512   -0.0966785    0.3638605
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.2024357   -0.2076415    0.4732635
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.4186644   -0.0744496    0.6854658
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.1052053   -0.1908339    0.3276496
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1846186   -0.0438923    0.3631079
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0291244   -0.2428084    0.2415568
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0963461   -0.0556120    0.2264295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.1057983   -0.0061247    0.2052707
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.2101378   -0.3108254    0.5240538
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0230501   -0.0611788    0.1005935
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.1974570    0.0176032    0.3443838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0146193   -0.0145174    0.0429191
24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0246015   -0.2766097    0.2547430
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.3693793    0.0694512    0.5726367
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0925702   -0.3425352    0.1108541
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0515844   -0.2463628    0.2783064
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0370546   -0.1576617    0.1990200
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0123625   -0.1728879    0.1683538
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.1473784   -0.4385283    0.4946477
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0597248   -0.2644942    0.1118847
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.2658824   -0.6422650    0.0242390
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0491072   -0.0741061    0.1581865
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0348454   -0.1434042    0.1853070
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0008713   -0.0243404    0.0254625
