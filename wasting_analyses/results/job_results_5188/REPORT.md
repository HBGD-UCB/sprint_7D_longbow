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
![](/tmp/1b4b020a-bbf1-4237-bb8a-5ececb006fcc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b4b020a-bbf1-4237-bb8a-5ececb006fcc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b4b020a-bbf1-4237-bb8a-5ececb006fcc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b4b020a-bbf1-4237-bb8a-5ececb006fcc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                0.2145150    0.1493010   0.2797290
Birth       ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2088089    0.1400328   0.2775850
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1906612    0.1266269   0.2546956
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1683022    0.1598901   0.1767143
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1471101    0.1351036   0.1591166
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1375759    0.1235902   0.1515615
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2768341    0.2277546   0.3259137
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.2296493    0.1698422   0.2894563
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2345271    0.1877662   0.2812880
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                0.1806902    0.1636802   0.1977001
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1517763    0.1336898   0.1698628
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.1814415    0.1594380   0.2034449
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.1675951    0.1474210   0.1877692
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1652450    0.1405479   0.1899420
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1271274    0.1046220   0.1496327
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0930439    0.0871751   0.0989128
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0909181    0.0794017   0.1024344
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1082727    0.0930653   0.1234801
6 months    ki1000108-IRC              INDIA                          <25                  NA                0.1206226    0.0807553   0.1604898
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1393443    0.0778180   0.2008705
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966    0.0592839   0.3545092
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.1176335    0.0957241   0.1395429
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1305593    0.0873374   0.1737811
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1605736    0.1122350   0.2089121
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1517452    0.1024192   0.2010713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.2239848    0.1595512   0.2884183
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3997016    0.3071455   0.4922576
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0507813    0.0238616   0.0777009
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.0745342    0.0339272   0.1151411
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0769231    0.0285939   0.1252523
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0239726    0.0064128   0.0415324
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0659341    0.0298488   0.1020193
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0462963    0.0066329   0.0859597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0386113    0.0248536   0.0523690
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0361352    0.0221015   0.0501688
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0497585    0.0315751   0.0679420
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.0469988    0.0327299   0.0612676
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0351311    0.0190747   0.0511874
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0743711    0.0565578   0.0921844
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.0887454    0.0570517   0.1204392
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.0773635    0.0377221   0.1170049
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1360089    0.0663816   0.2056362
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.0074554    0.0056621   0.0092487
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0100644    0.0060781   0.0140508
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0076879    0.0041481   0.0112277
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0287884    0.0239851   0.0335916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0340005    0.0263952   0.0416059
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0416685    0.0319077   0.0514294
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0262467    0.0101857   0.0423077
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0432692    0.0156045   0.0709340
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0347594    0.0161860   0.0533328
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.1282508    0.1142897   0.1422120
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1259442    0.1101990   0.1416894
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1468179    0.1275632   0.1660727
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0477026    0.0356731   0.0597321
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0676552    0.0501439   0.0851664
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0641927    0.0473473   0.0810381
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0835337    0.0782409   0.0888265
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0843272    0.0733273   0.0953271
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0940103    0.0790035   0.1090171
24 months   ki1000108-IRC              INDIA                          <25                  NA                0.0739300    0.0419008   0.1059591
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.0569106    0.0159185   0.0979027
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138    0.0347647   0.3100629
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0784535    0.0415149   0.1153922
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1795599    0.1129715   0.2461483
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1490027    0.0769924   0.2210131
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1228669    0.0852450   0.1604888
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0949721    0.0519861   0.1379580
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1132075    0.0528377   0.1735774
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0830325    0.0505064   0.1155586
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1012658    0.0541801   0.1483516
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0759494    0.0174748   0.1344240
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.1055384    0.0815560   0.1295207
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1029078    0.0733691   0.1324465
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1156739    0.0923049   0.1390429
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1797984    0.1341761   0.2254207
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1950297    0.1317464   0.2583129
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1658681    0.0844546   0.2472816
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0094473    0.0021296   0.0167651
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0146252    0.0085540   0.0206965
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0105263   -0.0089925   0.0300451
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1908612    0.1398017   0.2419207
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1773408    0.1122636   0.2424181
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1530608    0.0789564   0.2271651
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0588235    0.0368778   0.0807693
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0327869    0.0104323   0.0551415
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0410256    0.0213310   0.0607203
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.0910828    0.0769676   0.1051980
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1037891    0.0873179   0.1202602
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1076681    0.0891259   0.1262103
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0657167    0.0510093   0.0804241
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0611899    0.0438493   0.0785305
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0757363    0.0564383   0.0950343
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2182500    0.2068636   0.2296364
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2096222    0.1876083   0.2316362
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2372797    0.2089233   0.2656361


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
Birth       ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9734001   0.8952503   1.0583718
Birth       ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8888013   0.7861587   1.0048453
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.8740830   0.7944323   0.9617195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8174336   0.7300047   0.9153334
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8295554   0.6055685   1.1363903
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8471754   0.6491658   1.1055822
Birth       ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8399808   0.7217042   0.9776413
Birth       ki1135781-COHORTS          INDIA                          >=30                 <25               1.0041580   0.8613444   1.1706506
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9859771   0.8140218   1.1942566
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               0.7585385   0.6124524   0.9394700
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9771519   0.8491665   1.1244272
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1636726   1.0004462   1.3535299
6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1552089   0.6654715   2.0053565
6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.7152392   0.7813393   3.7653879
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1098813   0.8693284   1.4169979
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.3650321   0.9645481   1.9317987
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.4760578   0.9549309   2.2815752
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.6340302   1.7694236   3.9211160
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4677496   0.6863112   3.1389389
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.5147929   0.6658021   3.4463659
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               2.7503925   1.1022704   6.8627977
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.9312169   0.6256104   5.9615361
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9358704   0.5527653   1.5844942
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.2887040   0.7736195   2.1467376
6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.7474888   0.4326133   1.2915451
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.5824044   1.0759544   2.3272396
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.8717459   0.4667481   1.6281609
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.5325734   0.8210099   2.8608440
6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.3499511   0.8935588   2.0394495
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               1.0311858   0.6194340   1.7166382
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.1810511   0.8934810   1.5611765
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.4474093   1.0856832   1.9296548
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.6485577   0.6803786   3.9944563
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.3243316   0.5877344   2.9840929
6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9820145   0.8323318   1.1586155
6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.1447717   0.9657469   1.3569831
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.4182702   0.9883770   2.0351450
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.3456854   0.9355026   1.9357180
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0094991   0.8785791   1.1599280
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1254176   0.9468557   1.3376535
24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.7697903   0.3321466   1.7840833
24 months   ki1000108-IRC              INDIA                          >=30                 <25               2.3321234   0.9402967   5.7841312
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               2.2887418   1.2568937   4.1676867
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.8992477   0.9673340   3.7289515
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.7729671   0.4475439   1.3350157
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9213836   0.4981753   1.7041145
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.2195927   0.6640015   2.2400648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9146946   0.3855803   2.1698881
24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9750745   0.6763622   1.4057118
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.0960359   0.8090418   1.4848364
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0847131   0.7189462   1.6365654
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9225227   0.5309686   1.6028221
24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.5480804   0.7015492   3.4160868
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.1142105   0.1540371   8.0595223
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9291611   0.5948645   1.4513226
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8019480   0.4640016   1.3860309
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.5573770   0.2562185   1.2125165
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.6974359   0.3797179   1.2809953
24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.1395027   0.9132925   1.4217421
24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.1820906   0.9379733   1.4897420
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9311161   0.6490235   1.3358179
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1524666   0.8212540   1.6172576
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9604685   0.8532279   1.0811880
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.0871922   0.9576365   1.2342750


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0008375   -0.0509439    0.0526189
Birth       ki1000108-IRC              INDIA                          <25                  NA                -0.0087737   -0.0452169    0.0276695
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0072433   -0.0010998    0.0155865
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0056030   -0.0128125    0.0016065
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0090631   -0.0143051   -0.0038210
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0228659   -0.0602551    0.0145233
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0072509   -0.0199840    0.0054823
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0120243   -0.0267334    0.0026849
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0028037   -0.0002975    0.0059049
6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0117304   -0.0141722    0.0376329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0068042   -0.0039758    0.0175843
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0298337   -0.0121182    0.0717856
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0128892   -0.0085474    0.0343257
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0172645    0.0011292    0.0333998
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0046508   -0.0063956    0.0156971
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0106935   -0.0010554    0.0224425
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0018407   -0.0198777    0.0235591
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0007949   -0.0003905    0.0019803
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0033367   -0.0000840    0.0067575
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0069828   -0.0065126    0.0204781
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0038709   -0.0067569    0.0144986
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0117948    0.0020117    0.0215780
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0012394   -0.0011967    0.0036755
24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0018647   -0.0180396    0.0217689
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0459596    0.0136783    0.0782409
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0104101   -0.0358052    0.0149849
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0045161   -0.0181964    0.0272286
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0040826   -0.0155438    0.0237090
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0029325   -0.0279681    0.0338332
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0016330   -0.0033411    0.0066071
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0107664   -0.0441197    0.0225868
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0123551   -0.0279844    0.0032742
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0046880   -0.0064315    0.0158075
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0024744   -0.0086836    0.0136323
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0001904   -0.0052483    0.0056290


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0050459   -0.3613879    0.2728496
Birth       ki1000108-IRC              INDIA                          <25                  NA                -0.0327108   -0.1778903    0.0945748
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                 0.3681172   -0.1947544    0.6658093
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0268198   -0.0635879    0.0086773
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0569149   -0.0903143   -0.0245386
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0900344   -0.2478759    0.0478420
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0418064   -0.1179018    0.0291091
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0772912   -0.1760578    0.0131809
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0292518   -0.0035755    0.0610054
6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0886295   -0.1285670    0.2640258
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0546798   -0.0306504    0.1329453
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1643015   -0.0934208    0.3612780
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.2024357   -0.2076415    0.4732635
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.4186644   -0.0744496    0.6854658
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.1075021   -0.1876046    0.3292781
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1853546   -0.0431403    0.3637989
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0203198   -0.2511942    0.2329143
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0963471   -0.0556121    0.2264312
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.1038670   -0.0083410    0.2035885
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.2101378   -0.3108254    0.5240538
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0292977   -0.0545075    0.1064426
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.1982407    0.0188304    0.3448452
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0146202   -0.0145161    0.0429198
24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0246015   -0.2766097    0.2547430
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.3694111    0.0694793    0.5726669
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0925702   -0.3425352    0.1108541
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0515844   -0.2463628    0.2783064
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0372428   -0.1593101    0.2004716
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0160483   -0.1684415    0.1714083
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.1473784   -0.4385283    0.4946477
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0597820   -0.2617516    0.1098581
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.2658824   -0.6422650    0.0242390
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0489504   -0.0742598    0.1580293
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0362860   -0.1419321    0.1866900
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0008715   -0.0243397    0.0254623
