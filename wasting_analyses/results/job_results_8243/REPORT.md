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

unadjusted

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
![](/tmp/12caf1a1-7726-4ab7-97e6-c4403a1e7e50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/12caf1a1-7726-4ab7-97e6-c4403a1e7e50/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/12caf1a1-7726-4ab7-97e6-c4403a1e7e50/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/12caf1a1-7726-4ab7-97e6-c4403a1e7e50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                0.2146801    0.1495432   0.2798170
Birth       ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2091942    0.1398297   0.2785587
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1915315    0.1260461   0.2570168
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1693355    0.1608438   0.1778272
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1483670    0.1360794   0.1606547
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1404883    0.1258705   0.1551060
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2800000    0.2291583   0.3308417
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.2321429    0.1682579   0.2960278
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2395833    0.1902553   0.2889113
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                0.1870933    0.1692914   0.2048952
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1515775    0.1331680   0.1699870
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.1795104    0.1568592   0.2021616
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.1696498    0.1491250   0.1901746
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1635916    0.1381604   0.1890229
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1248439    0.1019493   0.1477386
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0937005    0.0878137   0.0995873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0956429    0.0835353   0.1077505
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1123596    0.0956035   0.1291156
6 months    ki1000108-IRC              INDIA                          <25                  NA                0.1206226    0.0807553   0.1604898
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1393443    0.0778180   0.2008705
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966    0.0592839   0.3545092
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.1159420    0.0936643   0.1382198
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.1312849    0.0878176   0.1747523
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1554054    0.1033917   0.2074191
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1257485    0.0753948   0.1761022
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1782946    0.1121563   0.2444328
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2976190    0.1997157   0.3955224
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0507813    0.0238616   0.0777009
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.0745342    0.0339272   0.1151411
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.0769231    0.0285939   0.1252523
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.0239726    0.0064128   0.0415324
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0659341    0.0298488   0.1020193
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.0462963    0.0066329   0.0859597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.0403121    0.0264069   0.0542172
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0374640    0.0233324   0.0515956
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0547445    0.0356938   0.0737952
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.0504305    0.0353846   0.0654764
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0367965    0.0196256   0.0539675
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0770186    0.0585961   0.0954411
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.0879479    0.0562385   0.1196572
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.0760234    0.0362640   0.1157828
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1294118    0.0579921   0.2008315
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.0075012    0.0057021   0.0093002
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0099977    0.0060368   0.0139587
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0077904    0.0041484   0.0114323
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0286521    0.0238345   0.0334696
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0336333    0.0259423   0.0413244
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0404964    0.0306218   0.0503710
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0262467    0.0101857   0.0423077
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0432692    0.0156045   0.0709340
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0347594    0.0161860   0.0533328
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.1319846    0.1174232   0.1465460
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1246144    0.1085345   0.1406944
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1425000    0.1227200   0.1622800
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0494037    0.0370052   0.0618023
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0686922    0.0506711   0.0867133
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0658065    0.0483470   0.0832659
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.0835232    0.0782116   0.0888348
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.0849421    0.0734808   0.0964034
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0977011    0.0809417   0.1144606
24 months   ki1000108-IRC              INDIA                          <25                  NA                0.0739300    0.0419008   0.1059591
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.0569106    0.0159185   0.0979027
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138    0.0347647   0.3100629
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.0784314    0.0414952   0.1153676
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1796875    0.1130986   0.2462764
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1489362    0.0768793   0.2209931
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1228669    0.0852450   0.1604888
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.0949721    0.0519861   0.1379580
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1132075    0.0528377   0.1735774
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.0830325    0.0505064   0.1155586
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1012658    0.0541801   0.1483516
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0759494    0.0174748   0.1344240
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.1041667    0.0801916   0.1281418
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1067708    0.0758738   0.1376679
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1159830    0.0923732   0.1395928
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.1808118    0.1349443   0.2266793
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1946309    0.1309961   0.2582657
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1666667    0.0838780   0.2494554
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0094473    0.0021296   0.0167651
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0146252    0.0085540   0.0206965
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0105263   -0.0089925   0.0300451
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1954545    0.1429919   0.2479172
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1750000    0.1069358   0.2430642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1463415    0.0697497   0.2229332
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.0588235    0.0368778   0.0807693
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.0327869    0.0104323   0.0551415
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0410256    0.0213310   0.0607203
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.0908475    0.0761789   0.1055160
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.0986031    0.0818512   0.1153551
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.0996917    0.0808649   0.1185185
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.0679887    0.0528245   0.0831528
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0618705    0.0439555   0.0797855
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0748201    0.0552557   0.0943846
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2179141    0.2064792   0.2293490
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2095548    0.1854332   0.2336765
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2405063    0.2074630   0.2735496


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
Birth       ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9744461   0.8948272   1.0611491
Birth       ki1119695-PROBIT           BELARUS                        >=30                 <25               0.8921713   0.7849220   1.0140749
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.8761722   0.7953198   0.9652441
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8296446   0.7391447   0.9312251
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8290816   0.5962239   1.1528830
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8556548   0.6502434   1.1259555
Birth       ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <25               0.8101708   0.6943379   0.9453274
Birth       ki1135781-COHORTS          INDIA                          >=30                 <25               0.9594702   0.8192132   1.1237406
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9642901   0.7918773   1.1742419
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               0.7358921   0.5907454   0.9167013
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0207301   0.8882199   1.1730090
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1991349   1.0228692   1.4057755
6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1552089   0.6654715   2.0053565
6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.7152392   0.7813393   3.7653879
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1323324   0.8994593   1.4254971
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.3403716   0.9146839   1.9641715
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.4178664   0.8214420   2.4473367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.3667800   1.4095990   3.9739300
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.4677496   0.6863112   3.1389389
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.5147929   0.6658021   3.4463659
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               2.7503925   1.1022704   6.8627977
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.9312169   0.6256104   5.9615361
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.9293483   0.5574328   1.5494034
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.3580174   0.8319737   2.2166702
6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.7296484   0.4193453   1.2695666
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.5272231   1.0419100   2.2385912
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.8644141   0.4579801   1.6315375
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.4714597   0.7611227   2.8447365
6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.3328221   0.8841374   2.0092066
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               1.0385535   0.6233948   1.7301929
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.1738548   0.8837832   1.5591326
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.4133860   1.0510587   1.9006168
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.6485577   0.6803786   3.9944563
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.3243316   0.5877344   2.9840929
6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9441590   0.7967350   1.1188617
6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.0796715   0.9042452   1.2891311
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.3904250   0.9671084   1.9990329
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.3320133   0.9244890   1.9191787
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0169881   0.8813461   1.1735057
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1697488   0.9735308   1.4055151
24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.7697903   0.3321466   1.7840833
24 months   ki1000108-IRC              INDIA                          >=30                 <25               2.3321234   0.9402967   5.7841312
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               2.2910156   1.2582673   4.1714129
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.8989362   0.9666916   3.7302056
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.7729671   0.4475439   1.3350157
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9213836   0.4981753   1.7041145
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.2195927   0.6640015   2.2400648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9146946   0.3855803   2.1698881
24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.0250000   0.7081815   1.4835533
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.1134371   0.8188835   1.5139419
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0764279   0.7116468   1.6281912
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               0.9217687   0.5277044   1.6101013
24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               1.5480804   0.7015492   3.4160868
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               1.1142105   0.1540371   8.0595223
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.8953488   0.5581609   1.4362337
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.7487238   0.4157892   1.3482487
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.5573770   0.2562185   1.2125165
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.6974359   0.3797179   1.2809953
24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0853702   0.8585944   1.3720430
24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.0973524   0.8559321   1.4068667
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9100120   0.6314120   1.3115396
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.1004796   0.7804054   1.5518285
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               0.9616395   0.8460653   1.0930013
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1036748   0.9555113   1.2748128


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0008375   -0.0509439    0.0526189
Birth       ki1000108-IRC              INDIA                          <25                  NA                -0.0087737   -0.0452169    0.0276695
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0072433   -0.0010998    0.0155865
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0057681   -0.0131594    0.0016232
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0100963   -0.0154003   -0.0047924
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0260317   -0.0647281    0.0126646
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0136540   -0.0269442   -0.0003638
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0140789   -0.0289767    0.0008189
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0021472   -0.0009486    0.0052429
6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0117304   -0.0141722    0.0376329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0084958   -0.0018226    0.0188141
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0558304    0.0132489    0.0984120
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0128892   -0.0085474    0.0343257
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0172645    0.0011292    0.0333998
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0029500   -0.0082117    0.0141116
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0072618   -0.0049800    0.0195036
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0026383   -0.0190876    0.0243641
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0007491   -0.0004069    0.0019051
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0034731    0.0000428    0.0069033
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0069828   -0.0065126    0.0204781
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0001371   -0.0109185    0.0111927
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0100937    0.0001034    0.0200839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0012499   -0.0011788    0.0036786
24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0018647   -0.0180396    0.0217689
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0459818    0.0136975    0.0782661
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0104101   -0.0358052    0.0149849
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0045161   -0.0181964    0.0272286
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0054543   -0.0139177    0.0248263
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0019191   -0.0292002    0.0330385
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0016330   -0.0033411    0.0066071
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0153598   -0.0504304    0.0197108
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0123551   -0.0279844    0.0032742
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0049233   -0.0065992    0.0164459
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0002024   -0.0112339    0.0116388
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0005262   -0.0049673    0.0060198


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0050459   -0.3613879    0.2728496
Birth       ki1000108-IRC              INDIA                          <25                  NA                -0.0327108   -0.1778903    0.0945748
Birth       ki1101329-Keneba           GAMBIA                         <25                  NA                 0.3681172   -0.1947544    0.6658093
Birth       ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0276102   -0.0654297    0.0088669
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0634036   -0.0971801   -0.0306669
Birth       ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1025000   -0.2657502    0.0396950
Birth       ki1135781-COHORTS          INDIA                          <25                  NA                -0.0787250   -0.1580407   -0.0048417
Birth       ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0904984   -0.1903900    0.0010108
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0224017   -0.0103820    0.0541217
6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0886295   -0.1285670    0.2640258
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0682731   -0.0124366    0.1425488
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.3074720    0.0374044    0.5017690
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.2024357   -0.2076415    0.4732635
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.4186644   -0.0744496    0.6854658
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0681883   -0.2286078    0.2932870
6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1258713   -0.1130064    0.3134801
6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0291244   -0.2428084    0.2415568
6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0908002   -0.0574824    0.2182903
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.1081103   -0.0045039    0.2080994
6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.2101378   -0.3108254    0.5240538
6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0010378   -0.0862438    0.0813063
6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.1696488   -0.0143268    0.3202554
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0147439   -0.0143112    0.0429667
24 months   ki1000108-IRC              INDIA                          <25                  NA                 0.0246015   -0.2766097    0.2547430
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.3695893    0.0696269    0.5728406
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0925702   -0.3425352    0.1108541
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0515844   -0.2463628    0.2783064
24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0497562   -0.1443441    0.2109338
24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0105024   -0.1753252    0.1669493
24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                 0.1473784   -0.4385283    0.4946477
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0852871   -0.2980993    0.0926364
24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.2658824   -0.6422650    0.0242390
24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0514076   -0.0767707    0.1643276
24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0029686   -0.1796714    0.1573317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0024091   -0.0230627    0.0272468
