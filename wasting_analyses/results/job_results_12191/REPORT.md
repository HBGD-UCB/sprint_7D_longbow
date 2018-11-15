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

unadjusted

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
Birth       ki1000109-EE               PAKISTAN                       <25              0        0       1
Birth       ki1000109-EE               PAKISTAN                       <25              1        0       1
Birth       ki1000109-EE               PAKISTAN                       [25-30)          0        0       1
Birth       ki1000109-EE               PAKISTAN                       [25-30)          1        0       1
Birth       ki1000109-EE               PAKISTAN                       >=30             0        1       1
Birth       ki1000109-EE               PAKISTAN                       >=30             1        0       1
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25              0    11180   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <25              1      186   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     2787   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1       36   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1481   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       32   15702
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
6 months    ki1000109-EE               PAKISTAN                       <25              0       20     373
6 months    ki1000109-EE               PAKISTAN                       <25              1        0     373
6 months    ki1000109-EE               PAKISTAN                       [25-30)          0      140     373
6 months    ki1000109-EE               PAKISTAN                       [25-30)          1        1     373
6 months    ki1000109-EE               PAKISTAN                       >=30             0      204     373
6 months    ki1000109-EE               PAKISTAN                       >=30             1        8     373
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
6 months    ki1113344-GMS-Nepal        NEPAL                          <25              0      303     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <25              1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          0      169     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)          1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             0       84     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30             1        1     563
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25              0    12790   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25              1      178   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     2562   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1       30   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             0     1197   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       22   16779
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
24 months   ki1113344-GMS-Nepal        NEPAL                          <25              0      263     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <25              1        8     498
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          0      145     498
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)          1        4     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             0       75     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30             1        3     498
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25              0     6251    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25              1      249    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          0     1334    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)          1       52    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             0      678    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30             1       34    8598


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/573fa9c5-a5db-4e1f-81fe-40d164f251f8/2bebff5f-6cb0-4056-a782-ea41f1c89354/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/573fa9c5-a5db-4e1f-81fe-40d164f251f8/2bebff5f-6cb0-4056-a782-ea41f1c89354/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/573fa9c5-a5db-4e1f-81fe-40d164f251f8/2bebff5f-6cb0-4056-a782-ea41f1c89354/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/573fa9c5-a5db-4e1f-81fe-40d164f251f8/2bebff5f-6cb0-4056-a782-ea41f1c89354/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         <25                  NA                0.1408451   0.0940609   0.1876292
Birth       ki1000108-IRC              INDIA         [25-30)              NA                0.1826923   0.1083188   0.2570658
Birth       ki1000108-IRC              INDIA         >=30                 NA                0.1923077   0.0405968   0.3440186
Birth       ki1119695-PROBIT           BELARUS       <25                  NA                0.0682828   0.0362998   0.1002659
Birth       ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0686983   0.0303004   0.1070963
Birth       ki1119695-PROBIT           BELARUS       >=30                 NA                0.0546102   0.0240624   0.0851581
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                0.0661863   0.0605574   0.0718152
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0547434   0.0468799   0.0626069
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0525104   0.0431273   0.0618934
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                0.0866667   0.0548089   0.1185245
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.0714286   0.0324591   0.1103980
Birth       ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.0763889   0.0456917   0.1070861
Birth       ki1135781-COHORTS          INDIA         <25                  NA                0.0536876   0.0433987   0.0639766
Birth       ki1135781-COHORTS          INDIA         [25-30)              NA                0.0370370   0.0273422   0.0467319
Birth       ki1135781-COHORTS          INDIA         >=30                 NA                0.0525839   0.0394102   0.0657575
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0474708   0.0358423   0.0590993
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0430504   0.0290960   0.0570048
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0312110   0.0191669   0.0432551
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                0.0163646   0.0137052   0.0190240
Birth       kiGH5241-JiVitA-3          BANGLADESH    [25-30)              NA                0.0127524   0.0079952   0.0175096
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0211500   0.0125951   0.0297050
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.0326087   0.0216042   0.0436132
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.0307263   0.0119739   0.0494786
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 NA                0.0337838   0.0117744   0.0557931
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.0299401   0.0040587   0.0558215
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.0542636   0.0151196   0.0934075
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 NA                0.0833333   0.0241505   0.1425162
6 months    ki1101329-Keneba           GAMBIA        <25                  NA                0.0184502   0.0091976   0.0277028
6 months    ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0108225   0.0013855   0.0202595
6 months    ki1101329-Keneba           GAMBIA        >=30                 NA                0.0173913   0.0083587   0.0264239
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                0.0073801   0.0049084   0.0098517
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0127901   0.0079964   0.0175839
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0117570   0.0063573   0.0171567
6 months    ki1135781-COHORTS          INDIA         <25                  NA                0.0303468   0.0229670   0.0377266
6 months    ki1135781-COHORTS          INDIA         [25-30)              NA                0.0289944   0.0208254   0.0371635
6 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.0350000   0.0246008   0.0453992
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0093697   0.0038576   0.0148817
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0118890   0.0041666   0.0196115
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0193548   0.0096536   0.0290561
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                0.0137261   0.0113269   0.0161253
6 months    kiGH5241-JiVitA-3          BANGLADESH    [25-30)              NA                0.0115741   0.0071126   0.0160355
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0180476   0.0107349   0.0253602
24 months   ki1101329-Keneba           GAMBIA        <25                  NA                0.0128205   0.0039911   0.0216500
24 months   ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0260417   0.0101081   0.0419753
24 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.0155587   0.0064334   0.0246840
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                0.0818182   0.0455571   0.1180793
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0500000   0.0109591   0.0890409
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0731707   0.0167388   0.1296027
24 months   ki1135781-COHORTS          INDIA         <25                  NA                0.0101695   0.0050486   0.0152903
24 months   ki1135781-COHORTS          INDIA         [25-30)              NA                0.0115037   0.0055117   0.0174956
24 months   ki1135781-COHORTS          INDIA         >=30                 NA                0.0123330   0.0053973   0.0192687
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0122757   0.0056424   0.0189090
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0071942   0.0009098   0.0134787
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0100719   0.0026468   0.0174971
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                0.0383077   0.0333566   0.0432588
24 months   kiGH5241-JiVitA-3          BANGLADESH    [25-30)              NA                0.0375180   0.0267244   0.0483117
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0477528   0.0317831   0.0637225


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
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0137076   0.0116310   0.0157842
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0169096   0.0108057   0.0230135
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0710900   0.0465431   0.0956370
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0111869   0.0077814   0.0145924
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0389625   0.0346386   0.0432864


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA         [25-30)              <25               1.2971154   0.7669954   2.1936355
Birth       ki1000108-IRC              INDIA         >=30                 <25               1.3653846   0.5801093   3.2136620
Birth       ki1119695-PROBIT           BELARUS       <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       [25-30)              <25               1.0060853   0.8561130   1.1823294
Birth       ki1119695-PROBIT           BELARUS       >=30                 <25               0.7997649   0.6660671   0.9602994
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <25               0.8271108   0.6999490   0.9773746
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <25               0.7933723   0.6509263   0.9669906
Birth       ki1135781-COHORTS          GUATEMALA     <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              <25               0.8241758   0.4268915   1.5911905
Birth       ki1135781-COHORTS          GUATEMALA     >=30                 <25               0.8814103   0.5112735   1.5195076
Birth       ki1135781-COHORTS          INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         [25-30)              <25               0.6898616   0.4987343   0.9542335
Birth       ki1135781-COHORTS          INDIA         >=30                 <25               0.9794408   0.7144832   1.3426549
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  <25               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              <25               0.9068820   0.6040883   1.3614483
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 <25               0.6574773   0.4162694   1.0384534
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  <25               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    [25-30)              <25               0.7792671   0.5296996   1.1464180
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 <25               1.2924262   0.8371961   1.9951904
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <25               1.7330649   1.0483956   2.8648670
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <25               1.5930764   0.9023551   2.8125208
6 months    ki1135781-COHORTS          INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         [25-30)              <25               0.9554361   0.6585164   1.3862344
6 months    ki1135781-COHORTS          INDIA         >=30                 <25               1.1533333   0.7856112   1.6931758
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  <25               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              <25               1.2688844   0.5282361   3.0480075
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 <25               2.0656891   0.9537095   4.4741839
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  <25               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    [25-30)              <25               0.8432168   0.5526070   1.2866550
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 <25               1.3148372   0.8478118   2.0391280
24 months   ki1101329-Keneba           GAMBIA        <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA        [25-30)              <25               2.0312500   0.8084974   5.1032648
24 months   ki1101329-Keneba           GAMBIA        >=30                 <25               1.2135785   0.4911419   2.9986708
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <25               0.6111111   0.2489996   1.4998290
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <25               0.8943089   0.3674339   2.1766867
24 months   ki1135781-COHORTS          INDIA         <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         [25-30)              <25               1.1311969   0.5481521   2.3344004
24 months   ki1135781-COHORTS          INDIA         >=30                 <25               1.2127441   0.5700793   2.5799012
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  <25               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              <25               0.5860542   0.2098198   1.6369266
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 <25               0.8204759   0.3289310   2.0465716
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  <25               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    [25-30)              <25               0.9793865   0.7139253   1.3435551
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 <25               1.2465593   0.8696447   1.7868333


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         <25                  NA                 0.0165893   -0.0143996    0.0475783
Birth       ki1119695-PROBIT           BELARUS       <25                  NA                -0.0023829   -0.0056215    0.0008556
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.0051614   -0.0086119   -0.0017110
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.0073016   -0.0314095    0.0168063
Birth       ki1135781-COHORTS          INDIA         <25                  NA                -0.0057875   -0.0133381    0.0017631
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.0057323   -0.0140005    0.0025359
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                -0.0001883   -0.0015079    0.0011313
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                -0.0003748   -0.0071232    0.0063736
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                 0.0200599   -0.0036580    0.0437777
6 months    ki1101329-Keneba           GAMBIA        <25                  NA                -0.0021040   -0.0090608    0.0048527
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                 0.0021968    0.0002725    0.0041212
6 months    ki1135781-COHORTS          INDIA         <25                  NA                 0.0006926   -0.0049539    0.0063391
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                 0.0035645   -0.0011419    0.0082710
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                -0.0000185   -0.0010809    0.0010439
24 months   ki1101329-Keneba           GAMBIA        <25                  NA                 0.0040891   -0.0035585    0.0117367
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.0107281   -0.0341048    0.0126486
24 months   ki1135781-COHORTS          INDIA         <25                  NA                 0.0010174   -0.0030708    0.0051056
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.0020675   -0.0067368    0.0026018
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                 0.0006549   -0.0018846    0.0031943


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         <25                  NA                 0.1053730   -0.1133883    0.2811515
Birth       ki1119695-PROBIT           BELARUS       <25                  NA                -0.0361601   -0.0962724    0.0206561
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.0845793   -0.1423577   -0.0297232
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.0920000   -0.4413310    0.1726647
Birth       ki1135781-COHORTS          INDIA         <25                  NA                -0.1208248   -0.2892585    0.0256041
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.1373380   -0.3521742    0.0433646
Birth       kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                -0.0116413   -0.0966894    0.0668113
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                -0.0116279   -0.2442645    0.1775133
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                 0.4011976   -0.2541546    0.7140988
6 months    ki1101329-Keneba           GAMBIA        <25                  NA                -0.1287172   -0.6426090    0.2244031
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                 0.2293895    0.0079853    0.4013793
6 months    ki1135781-COHORTS          INDIA         <25                  NA                 0.0223133   -0.1775884    0.1882806
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                 0.2755902   -0.1786226    0.5547603
6 months    kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                -0.0013485   -0.0819183    0.0732213
24 months   ki1101329-Keneba           GAMBIA        <25                  NA                 0.2418214   -0.3617304    0.5778645
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <25                  NA                -0.1509091   -0.5269872    0.1325456
24 months   ki1135781-COHORTS          INDIA         <25                  NA                 0.0909467   -0.3573342    0.3911758
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.2025307   -0.7493157    0.1733453
24 months   kiGH5241-JiVitA-3          BANGLADESH    <25                  NA                 0.0168073   -0.0505496    0.0798456
