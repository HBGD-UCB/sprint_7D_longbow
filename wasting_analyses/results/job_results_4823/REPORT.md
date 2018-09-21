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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        mage       swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25              0      107     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25              1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       85     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             0       41     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30             1        2     241
Birth       ki0047075b-MAL-ED          BRAZIL                         <25              0       94     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <25              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       50     183
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             0       39     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          <25              0      114     202
Birth       ki0047075b-MAL-ED          INDIA                          <25              1        6     202
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          0       66     202
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          1        1     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30             0       15     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30             1        0     202
Birth       ki0047075b-MAL-ED          NEPAL                          <25              0       42     168
Birth       ki0047075b-MAL-ED          NEPAL                          <25              1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          0       87     168
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             0       35     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30             1        0     168
Birth       ki0047075b-MAL-ED          PERU                           <25              0      155     279
Birth       ki0047075b-MAL-ED          PERU                           <25              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          0       60     279
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          1        0     279
Birth       ki0047075b-MAL-ED          PERU                           >=30             0       64     279
Birth       ki0047075b-MAL-ED          PERU                           >=30             1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0      120     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       51     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       85     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        1     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0       45     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       33     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       39     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25              0       48      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <25              1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0       31      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1      88
Birth       ki1000108-IRC              INDIA                          <25              0      183     343
Birth       ki1000108-IRC              INDIA                          <25              1       30     343
Birth       ki1000108-IRC              INDIA                          [25-30)          0       85     343
Birth       ki1000108-IRC              INDIA                          [25-30)          1       19     343
Birth       ki1000108-IRC              INDIA                          >=30             0       21     343
Birth       ki1000108-IRC              INDIA                          >=30             1        5     343
Birth       ki1000109-EE               PAKISTAN                       <25              0        0       2
Birth       ki1000109-EE               PAKISTAN                       <25              1        0       2
Birth       ki1000109-EE               PAKISTAN                       [25-30)          0        0       2
Birth       ki1000109-EE               PAKISTAN                       [25-30)          1        0       2
Birth       ki1000109-EE               PAKISTAN                       >=30             0        2       2
Birth       ki1000109-EE               PAKISTAN                       >=30             1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25              0       96     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25              1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0       42     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             0       23     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30             1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25              0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <25              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30             1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25              0       12      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <25              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0        9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        0      23
Birth       ki1101329-Keneba           GAMBIA                         <25              0      561    1423
Birth       ki1101329-Keneba           GAMBIA                         <25              1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         [25-30)          0      315    1423
Birth       ki1101329-Keneba           GAMBIA                         [25-30)          1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30             0      536    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30             1        7    1423
Birth       ki1119695-PROBIT           BELARUS                        <25              0     6918   13824
Birth       ki1119695-PROBIT           BELARUS                        <25              1      507   13824
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          0     3606   13824
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          1      266   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30             0     2389   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30             1      138   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25              0     6998   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <25              1      496   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0     3039   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1      176   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     2057   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1      114   12880
Birth       ki1135781-COHORTS          GUATEMALA                      <25              0      274     756
Birth       ki1135781-COHORTS          GUATEMALA                      <25              1       26     756
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          0      156     756
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          1       12     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             0      266     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30             1       22     756
Birth       ki1135781-COHORTS          INDIA                          <25              0     1745    4405
Birth       ki1135781-COHORTS          INDIA                          <25              1       99    4405
Birth       ki1135781-COHORTS          INDIA                          [25-30)          0     1404    4405
Birth       ki1135781-COHORTS          INDIA                          [25-30)          1       54    4405
Birth       ki1135781-COHORTS          INDIA                          >=30             0     1045    4405
Birth       ki1135781-COHORTS          INDIA                          >=30             1       58    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    <25              0     1224    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <25              1       61    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      778    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          1       35    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             0      776    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30             1       25    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25              0    22360   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25              1      372   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     5574   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1       72   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2962   31404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       64   31404
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25              0      112     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       86     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             0       41     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30             1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         <25              0      100     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <25              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       62     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             0       47     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30             1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          <25              0      134     234
6 months    ki0047075b-MAL-ED          INDIA                          <25              1        3     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          0       74     234
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          1        2     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             0       21     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30             1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          <25              0       63     236
6 months    ki0047075b-MAL-ED          NEPAL                          <25              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          0      127     236
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             0       46     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30             1        0     236
6 months    ki0047075b-MAL-ED          PERU                           <25              0      153     273
6 months    ki0047075b-MAL-ED          PERU                           <25              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          0       59     273
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          1        0     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             0       61     273
6 months    ki0047075b-MAL-ED          PERU                           >=30             1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0      118     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       40     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       93     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0       78     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       65     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0      104     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25              0      209     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25              1        9     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0      105     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        1     368
6 months    ki1000108-IRC              INDIA                          <25              0      244     408
6 months    ki1000108-IRC              INDIA                          <25              1       13     408
6 months    ki1000108-IRC              INDIA                          [25-30)          0      117     408
6 months    ki1000108-IRC              INDIA                          [25-30)          1        5     408
6 months    ki1000108-IRC              INDIA                          >=30             0       25     408
6 months    ki1000108-IRC              INDIA                          >=30             1        4     408
6 months    ki1000109-EE               PAKISTAN                       <25              0       40     746
6 months    ki1000109-EE               PAKISTAN                       <25              1        0     746
6 months    ki1000109-EE               PAKISTAN                       [25-30)          0      280     746
6 months    ki1000109-EE               PAKISTAN                       [25-30)          1        2     746
6 months    ki1000109-EE               PAKISTAN                       >=30             0      408     746
6 months    ki1000109-EE               PAKISTAN                       >=30             1       16     746
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25              0      801    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25              1       27    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0      347    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1       11    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             0      143    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30             1        5    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25              0      162     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25              1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          0      122     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          1        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             0       77     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30             1        7     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25              0      255     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <25              1        1     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0      159     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1        2     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             0      115     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30             1        2     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25              0      291     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <25              1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)          0      179     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)          1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             0      107     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30             1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25              0      374     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0      219     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0      122     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              0      762    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              1        7    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          0      690    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          1        4    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      547    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        1    2011
6 months    ki1101329-Keneba           GAMBIA                         <25              0      798    2080
6 months    ki1101329-Keneba           GAMBIA                         <25              1       15    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)          0      457    2080
6 months    ki1101329-Keneba           GAMBIA                         [25-30)          1        5    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             0      791    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30             1       14    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25              0      154     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25              1        0     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)          0       63     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)          1        0     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             0       59     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30             1        0     276
6 months    ki1113344-GMS-Nepal        NEPAL                          <25              0      606    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          <25              1        8    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          0      338    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          1        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0      168    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1        2    1126
6 months    ki1119695-PROBIT           BELARUS                        <25              0     8524   15757
6 months    ki1119695-PROBIT           BELARUS                        <25              1        8   15757
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          0     4395   15757
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          1        6   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30             0     2822   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30             1        2   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25              0     4573    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25              1       34    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0     2084    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1       27    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0     1513    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1       18    8249
6 months    ki1135781-COHORTS          GUATEMALA                      <25              0      380     963
6 months    ki1135781-COHORTS          GUATEMALA                      <25              1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          0      205     963
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          1        3     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             0      372     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30             1        2     963
6 months    ki1135781-COHORTS          INDIA                          <25              0     2013    4897
6 months    ki1135781-COHORTS          INDIA                          <25              1       63    4897
6 months    ki1135781-COHORTS          INDIA                          [25-30)          0     1574    4897
6 months    ki1135781-COHORTS          INDIA                          [25-30)          1       47    4897
6 months    ki1135781-COHORTS          INDIA                          >=30             0     1158    4897
6 months    ki1135781-COHORTS          INDIA                          >=30             1       42    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    <25              0     1163    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <25              1       11    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      748    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          1        9    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             0      760    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30             1       15    2706
6 months    ki1148112-LCNI-5           MALAWI                         <25              0      300     669
6 months    ki1148112-LCNI-5           MALAWI                         <25              1        0     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          0      171     669
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          1        0     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             0      198     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30             1        0     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25              0    25541   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25              1      356   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     5120   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1       60   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     2392   33513
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       44   33513
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25              0       93     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       82     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30             1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         <25              0       78     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <25              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          0       51     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             0       39     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30             1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          <25              0      130     225
24 months   ki0047075b-MAL-ED          INDIA                          <25              1        2     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          0       73     225
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          1        0     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             0       20     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30             1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          <25              0       59     228
24 months   ki0047075b-MAL-ED          NEPAL                          <25              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          0      124     228
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             0       45     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30             1        0     228
24 months   ki0047075b-MAL-ED          PERU                           <25              0      104     201
24 months   ki0047075b-MAL-ED          PERU                           <25              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          0       48     201
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          1        0     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             0       48     201
24 months   ki0047075b-MAL-ED          PERU                           >=30             1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0      108     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0       37     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             0       93     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30             1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0       62     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0       60     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             0       92     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30             1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25              0      219     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          0      108     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)          1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             0       42     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30             1        0     372
24 months   ki1000108-IRC              INDIA                          <25              0      255     409
24 months   ki1000108-IRC              INDIA                          <25              1        2     409
24 months   ki1000108-IRC              INDIA                          [25-30)          0      122     409
24 months   ki1000108-IRC              INDIA                          [25-30)          1        1     409
24 months   ki1000108-IRC              INDIA                          >=30             0       27     409
24 months   ki1000108-IRC              INDIA                          >=30             1        2     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25              0      202     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <25              1        2     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)          0      122     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)          1        6     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             0       92     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30             1        2     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25              0      291     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <25              1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)          0      175     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)          1        4     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             0      103     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30             1        3     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25              0      274     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25              1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          0      158     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)          1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30             1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6
24 months   ki1101329-Keneba           GAMBIA                         <25              0      616    1715
24 months   ki1101329-Keneba           GAMBIA                         <25              1        8    1715
24 months   ki1101329-Keneba           GAMBIA                         [25-30)          0      374    1715
24 months   ki1101329-Keneba           GAMBIA                         [25-30)          1       10    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30             0      696    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30             1       11    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          <25              0      526     996
24 months   ki1113344-GMS-Nepal        NEPAL                          <25              1       16     996
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          0      290     996
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          1        8     996
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0      150     996
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1        6     996
24 months   ki1119695-PROBIT           BELARUS                        <25              0     2116    3971
24 months   ki1119695-PROBIT           BELARUS                        <25              1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          0     1091    3971
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30             0      760    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30             1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25              0      202     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25              1       18     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          0      114     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)          1        6     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             0       76     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30             1        6     422
24 months   ki1135781-COHORTS          GUATEMALA                      <25              0      441    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <25              1        1    1076
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          0      243    1076
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          1        1    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             0      388    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30             1        2    1076
24 months   ki1135781-COHORTS          INDIA                          <25              0     1460    3665
24 months   ki1135781-COHORTS          INDIA                          <25              1       15    3665
24 months   ki1135781-COHORTS          INDIA                          [25-30)          0     1203    3665
24 months   ki1135781-COHORTS          INDIA                          [25-30)          1       14    3665
24 months   ki1135781-COHORTS          INDIA                          >=30             0      961    3665
24 months   ki1135781-COHORTS          INDIA                          >=30             1       12    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    <25              0     1046    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <25              1       13    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      690    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          1        5    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             0      688    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30             1        7    2449
24 months   ki1148112-LCNI-5           MALAWI                         <25              0      199     461
24 months   ki1148112-LCNI-5           MALAWI                         <25              1        1     461
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          0      119     461
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          1        0     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30             0      142     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30             1        0     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25              0    12476   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25              1      497   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     2659   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1      104   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1354   17158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       68   17158


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/3a782a6d-817e-4c2c-9b2a-0a367cfd32bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a782a6d-817e-4c2c-9b2a-0a367cfd32bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a782a6d-817e-4c2c-9b2a-0a367cfd32bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a782a6d-817e-4c2c-9b2a-0a367cfd32bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         <25                  NA                0.1408451    0.0940609   0.1876292
Birth       ki1000108-IRC              INDIA         [25-30)              NA                0.1826923    0.1083188   0.2570658
Birth       ki1000108-IRC              INDIA         >=30                 NA                0.1923077    0.0405968   0.3440186
Birth       ki1119695-PROBIT           BELARUS       <25                  NA                0.0681671    0.0360638   0.1002704
Birth       ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0682165    0.0303909   0.1060421
Birth       ki1119695-PROBIT           BELARUS       >=30                 NA                0.0538255    0.0241494   0.0835016
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                0.0656714    0.0600980   0.0712449
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0542300    0.0465384   0.0619215
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0519002    0.0428513   0.0609491
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                0.0772676    0.0475997   0.1069354
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.0680351    0.0302138   0.1058564
Birth       ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.0716824    0.0419753   0.1013895
Birth       ki1135781-COHORTS          INDIA         <25                  NA                0.0531972    0.0432470   0.0631474
Birth       ki1135781-COHORTS          INDIA         [25-30)              NA                0.0363797    0.0270453   0.0457142
Birth       ki1135781-COHORTS          INDIA         >=30                 NA                0.0538871    0.0410537   0.0667206
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0484398    0.0368454   0.0600341
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0450708    0.0310553   0.0590863
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0322183    0.0202466   0.0441900
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                0.0164467    0.0137907   0.0191027
Birth       kiGH5241-JiVitA-3          BANGLADESH    [25-30)              NA                0.0123415    0.0079921   0.0166909
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0214898    0.0134410   0.0295386
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.0326087    0.0216042   0.0436132
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.0307263    0.0119739   0.0494786
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 NA                0.0337838    0.0117744   0.0557931
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.0299401    0.0040587   0.0558215
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.0542636    0.0151196   0.0934075
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 NA                0.0833333    0.0241505   0.1425162
6 months    ki1101329-Keneba           GAMBIA        <25                  NA                0.0184502    0.0091976   0.0277028
6 months    ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0108225    0.0013855   0.0202595
6 months    ki1101329-Keneba           GAMBIA        >=30                 NA                0.0173913    0.0083587   0.0264239
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                0.0072880    0.0048232   0.0097529
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0122998    0.0075892   0.0170105
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0110739    0.0058056   0.0163423
6 months    ki1135781-COHORTS          INDIA         <25                  NA                0.0289741    0.0219196   0.0360286
6 months    ki1135781-COHORTS          INDIA         [25-30)              NA                0.0296316    0.0214740   0.0377893
6 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.0340097    0.0241499   0.0438695
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0093697    0.0038576   0.0148817
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0118890    0.0041666   0.0196115
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0193548    0.0096536   0.0290561
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                0.0136511    0.0112759   0.0160263
6 months    kiGH5241-JiVitA-3          BANGLADESH    [25-30)              NA                0.0106461    0.0063889   0.0149033
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0156943    0.0092972   0.0220914
24 months   ki1101329-Keneba           GAMBIA        <25                  NA                0.0128205    0.0039911   0.0216500
24 months   ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0260417    0.0101081   0.0419753
24 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.0155587    0.0064334   0.0246840
24 months   ki1113344-GMS-Nepal        NEPAL         <25                  NA                0.0295203    0.0093481   0.0496925
24 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              NA                0.0268456    0.0008668   0.0528244
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.0384615   -0.0042587   0.0811818
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                0.0818182    0.0455571   0.1180793
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0500000    0.0109591   0.0890409
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0731707    0.0167388   0.1296027
24 months   ki1135781-COHORTS          INDIA         <25                  NA                0.0099626    0.0049012   0.0150240
24 months   ki1135781-COHORTS          INDIA         [25-30)              NA                0.0109893    0.0051670   0.0168116
24 months   ki1135781-COHORTS          INDIA         >=30                 NA                0.0109332    0.0045384   0.0173281
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0122757    0.0056424   0.0189090
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0071942    0.0009098   0.0134787
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0100719    0.0026468   0.0174971
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                0.0383932    0.0334593   0.0433270
24 months   kiGH5241-JiVitA-3          BANGLADESH    [25-30)              NA                0.0382750    0.0283168   0.0482331
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0465864    0.0329428   0.0602299


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0610248   0.0568907   0.0651590
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0479001   0.0415930   0.0542073
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0161763   0.0138129   0.0185396
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0163462   0.0108955   0.0217968
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0095769   0.0074751   0.0116787
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0310394   0.0261816   0.0358972
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0137260   0.0116450   0.0158071
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0169096   0.0108057   0.0230135
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0301205   0.0150939   0.0451470
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0710900   0.0465431   0.0956370
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0111869   0.0077814   0.0145924
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0389906   0.0346643   0.0433169


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA         [25-30)              <25               1.2971154   0.7669954   2.1936355
Birth       ki1000108-IRC              INDIA         >=30                 <25               1.3653846   0.5801093   3.2136620
Birth       ki1119695-PROBIT           BELARUS       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       [25-30)              <25               1.0007241   0.8567486   1.1688945
Birth       ki1119695-PROBIT           BELARUS       >=30                 <25               0.7896106   0.6636371   0.9394966
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <25               0.8257770   0.7000592   0.9740715
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <25               0.7903008   0.6511077   0.9592506
Birth       ki1135781-COHORTS          GUATEMALA     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              <25               0.8805133   0.4481473   1.7300199
Birth       ki1135781-COHORTS          GUATEMALA     >=30                 <25               0.9277164   0.5275632   1.6313831
Birth       ki1135781-COHORTS          INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         [25-30)              <25               0.6838648   0.4980532   0.9389984
Birth       ki1135781-COHORTS          INDIA         >=30                 <25               1.0129687   0.7485972   1.3707047
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              <25               0.9304502   0.6283700   1.3777513
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 <25               0.6651215   0.4275281   1.0347547
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    [25-30)              <25               0.7503924   0.5186701   1.0856394
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 <25               1.3066317   0.8708382   1.9605092
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              <25               0.9422719   0.5307920   1.6727388
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 <25               1.0360360   0.4060111   2.6436976
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              <25               1.8124031   0.5878783   5.5875595
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 <25               2.7833333   0.9092694   8.5199663
6 months    ki1101329-Keneba           GAMBIA        <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA        [25-30)              <25               0.5865801   0.2145213   1.6039259
6 months    ki1101329-Keneba           GAMBIA        >=30                 <25               0.9426087   0.4579139   1.9403454
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <25               1.6876754   1.0126466   2.8126772
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <25               1.5194637   0.8477161   2.7235179
6 months    ki1135781-COHORTS          INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         [25-30)              <25               1.0226937   0.7084890   1.4762437
6 months    ki1135781-COHORTS          INDIA         >=30                 <25               1.1737946   0.8043027   1.7130291
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              <25               1.2688844   0.5282361   3.0480075
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 <25               2.0656891   0.9537095   4.4741839
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    [25-30)              <25               0.7798707   0.5053237   1.2035816
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 <25               1.1496725   0.7404500   1.7850589
24 months   ki1101329-Keneba           GAMBIA        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA        [25-30)              <25               2.0312500   0.8084974   5.1032648
24 months   ki1101329-Keneba           GAMBIA        >=30                 <25               1.2135785   0.4911419   2.9986708
24 months   ki1113344-GMS-Nepal        NEPAL         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              <25               0.9093960   0.2781402   2.9733246
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 <25               1.3028846   0.3536271   4.8002784
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <25               0.6111111   0.2489996   1.4998290
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <25               0.8943089   0.3674339   2.1766867
24 months   ki1135781-COHORTS          INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         [25-30)              <25               1.1030556   0.5295611   2.2976228
24 months   ki1135781-COHORTS          INDIA         >=30                 <25               1.0974274   0.5058497   2.3808396
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              <25               0.5860542   0.2098198   1.6369266
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 <25               0.8204759   0.3289310   2.0465716
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    [25-30)              <25               0.9969215   0.7458975   1.3324251
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 <25               1.2134027   0.8809283   1.6713575


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         <25                  NA                 0.0165893   -0.0143996    0.0475783
Birth       ki1119695-PROBIT           BELARUS       <25                  NA                -0.0022672   -0.0053481    0.0008136
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.0046466   -0.0080603   -0.0012329
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                 0.0020975   -0.0203573    0.0245523
Birth       ki1135781-COHORTS          INDIA         <25                  NA                -0.0052971   -0.0126145    0.0020203
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.0067012   -0.0149618    0.0015593
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                -0.0002704   -0.0016009    0.0010600
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                -0.0003748   -0.0071232    0.0063736
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                 0.0200599   -0.0036580    0.0437777
6 months    ki1101329-Keneba           GAMBIA        <25                  NA                -0.0021040   -0.0090608    0.0048527
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                 0.0022889    0.0003691    0.0042086
6 months    ki1135781-COHORTS          INDIA         <25                  NA                 0.0020653   -0.0033703    0.0075009
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                 0.0035645   -0.0011419    0.0082710
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                 0.0000749   -0.0009700    0.0011198
24 months   ki1101329-Keneba           GAMBIA        <25                  NA                 0.0040891   -0.0035585    0.0117367
24 months   ki1113344-GMS-Nepal        NEPAL         <25                  NA                 0.0006002   -0.0131782    0.0143786
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.0107281   -0.0341048    0.0126486
24 months   ki1135781-COHORTS          INDIA         <25                  NA                 0.0012243   -0.0028177    0.0052663
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.0020675   -0.0067368    0.0026018
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                 0.0005974   -0.0019504    0.0031452


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         <25                  NA                 0.1053730   -0.1133883    0.2811515
Birth       ki1119695-PROBIT           BELARUS       <25                  NA                -0.0344044   -0.0911539    0.0193935
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.0761425   -0.1333649   -0.0218093
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                 0.0264286   -0.3020424    0.2720350
Birth       ki1135781-COHORTS          INDIA         <25                  NA                -0.1105867   -0.2741238    0.0319600
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.1605525   -0.3750503    0.0204852
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                -0.0167177   -0.1025482    0.0624312
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                -0.0116279   -0.2442645    0.1775133
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                 0.4011976   -0.2541546    0.7140988
6 months    ki1101329-Keneba           GAMBIA        <25                  NA                -0.1287172   -0.6426090    0.2244031
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                 0.2389997    0.0179835    0.4102732
6 months    ki1135781-COHORTS          INDIA         <25                  NA                 0.0665379   -0.1256554    0.2259162
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                 0.2755902   -0.1786226    0.5547603
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                 0.0054575   -0.0737076    0.0787858
24 months   ki1101329-Keneba           GAMBIA        <25                  NA                 0.2418214   -0.3617304    0.5778645
24 months   ki1113344-GMS-Nepal        NEPAL         <25                  NA                 0.0199262   -0.5628535    0.3853905
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.1509091   -0.5269872    0.1325456
24 months   ki1135781-COHORTS          INDIA         <25                  NA                 0.1094409   -0.3342742    0.4055978
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.2025307   -0.7493157    0.1733453
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                 0.0153218   -0.0521910    0.0785028
