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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        meducyrs    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low             66     200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          59     200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High            75     200
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low             50     179
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium          69     179
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High            60     179
0-3 months     ki0047075b-MAL-ED          INDIA                          Low             60     175
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium          67     175
0-3 months     ki0047075b-MAL-ED          INDIA                          High            48     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low             70     161
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium          55     161
0-3 months     ki0047075b-MAL-ED          NEPAL                          High            36     161
0-3 months     ki0047075b-MAL-ED          PERU                           Low             94     270
0-3 months     ki0047075b-MAL-ED          PERU                           Medium          95     270
0-3 months     ki0047075b-MAL-ED          PERU                           High            81     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low            116     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            62     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             58     190
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         124     190
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             8     190
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low             14      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium          24      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High            49      87
0-3 months     ki1000108-IRC              INDIA                          Low            138     377
0-3 months     ki1000108-IRC              INDIA                          Medium         131     377
0-3 months     ki1000108-IRC              INDIA                          High           108     377
0-3 months     ki1000109-EE               PAKISTAN                       Low            516     590
0-3 months     ki1000109-EE               PAKISTAN                       Medium          48     590
0-3 months     ki1000109-EE               PAKISTAN                       High            26     590
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low            530    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         389    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High           249    1168
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low            206     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium         197     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High           163     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low            194     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         224     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High           216     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         250     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           241     720
0-3 months     ki1119695-PROBIT           BELARUS                        Low           4520   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Medium        6144   12745
0-3 months     ki1119695-PROBIT           BELARUS                        High          2081   12745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1690    7850
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1986    7850
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High          4174    7850
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low            343     723
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium         228     723
0-3 months     ki1135781-COHORTS          GUATEMALA                      High           152     723
0-3 months     ki1135781-COHORTS          INDIA                          Low           1719    5090
0-3 months     ki1135781-COHORTS          INDIA                          Medium        2712    5090
0-3 months     ki1135781-COHORTS          INDIA                          High           659    5090
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low          15640   40044
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium       12166   40044
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High         12238   40044
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low           1442    1526
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium          46    1526
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High            38    1526
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low             61     189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          55     189
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High            73     189
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low             55     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium          81     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High            71     207
3-6 months     ki0047075b-MAL-ED          INDIA                          Low             69     201
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium          76     201
3-6 months     ki0047075b-MAL-ED          INDIA                          High            56     201
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low             93     218
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium          75     218
3-6 months     ki0047075b-MAL-ED          NEPAL                          High            50     218
3-6 months     ki0047075b-MAL-ED          PERU                           Low             92     266
3-6 months     ki0047075b-MAL-ED          PERU                           Medium          93     266
3-6 months     ki0047075b-MAL-ED          PERU                           High            81     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low            119     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          55     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            67     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62     198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         127     198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9     198
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low             85     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium          90     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High           132     307
3-6 months     ki1000108-IRC              INDIA                          Low            142     397
3-6 months     ki1000108-IRC              INDIA                          Medium         137     397
3-6 months     ki1000108-IRC              INDIA                          High           118     397
3-6 months     ki1000109-EE               PAKISTAN                       Low            568     658
3-6 months     ki1000109-EE               PAKISTAN                       Medium          60     658
3-6 months     ki1000109-EE               PAKISTAN                       High            30     658
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low            515    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         359    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High           250    1124
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low            193     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium         183     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High           147     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low            177     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         197     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High           200     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            220     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         242     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           233     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             56    1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1193    1656
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           407    1656
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low            674     936
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium         148     936
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High           114     936
3-6 months     ki1119695-PROBIT           BELARUS                        Low           4767   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Medium        6304   13309
3-6 months     ki1119695-PROBIT           BELARUS                        High          2238   13309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1232    5878
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1516    5878
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High          3130    5878
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low            378     798
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium         259     798
3-6 months     ki1135781-COHORTS          GUATEMALA                      High           161     798
3-6 months     ki1135781-COHORTS          INDIA                          Low           1711    5145
3-6 months     ki1135781-COHORTS          INDIA                          Medium        2749    5145
3-6 months     ki1135781-COHORTS          INDIA                          High           685    5145
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low           8782   25136
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium        7728   25136
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High          8626   25136
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low           1428    1512
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium          40    1512
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High            44    1512
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low             60     182
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          55     182
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High            67     182
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low             50     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium          76     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High            67     193
6-12 months    ki0047075b-MAL-ED          INDIA                          Low             67     196
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium          73     196
6-12 months    ki0047075b-MAL-ED          INDIA                          High            56     196
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low             92     216
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium          74     216
6-12 months    ki0047075b-MAL-ED          NEPAL                          High            50     216
6-12 months    ki0047075b-MAL-ED          PERU                           Low             82     236
6-12 months    ki0047075b-MAL-ED          PERU                           Medium          82     236
6-12 months    ki0047075b-MAL-ED          PERU                           High            72     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            116     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          52     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            64     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             58     184
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         118     184
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             8     184
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low             94     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium          94     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           135     323
6-12 months    ki1000108-IRC              INDIA                          Low            144     400
6-12 months    ki1000108-IRC              INDIA                          Medium         136     400
6-12 months    ki1000108-IRC              INDIA                          High           120     400
6-12 months    ki1000109-EE               PAKISTAN                       Low              4       8
6-12 months    ki1000109-EE               PAKISTAN                       Medium           0       8
6-12 months    ki1000109-EE               PAKISTAN                       High             4       8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low            512    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         381    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High           244    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            267     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          34     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            31     332
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low            177     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         166     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High           139     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low            166     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         190     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High           189     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            214     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         231     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           231     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             34    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         777    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           267    1078
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             49     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          53     180
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High            78     180
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low            676     944
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium         160     944
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High           108     944
6-12 months    ki1119695-PROBIT           BELARUS                        Low           4635   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Medium        6112   12896
6-12 months    ki1119695-PROBIT           BELARUS                        High          2149   12896
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low            980    4565
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1167    4565
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          2418    4565
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low            397     856
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium         292     856
6-12 months    ki1135781-COHORTS          GUATEMALA                      High           167     856
6-12 months    ki1135781-COHORTS          INDIA                          Low           1318    4183
6-12 months    ki1135781-COHORTS          INDIA                          Medium        2282    4183
6-12 months    ki1135781-COHORTS          INDIA                          High           583    4183
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low            749    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium         771    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High           899    2419
6-12 months    ki1148112-LCNI-5           MALAWI                         Low            133     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium         136     429
6-12 months    ki1148112-LCNI-5           MALAWI                         High           160     429
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6881   19647
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        6067   19647
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High          6699   19647
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           2497    2677
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          91    2677
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High            89    2677
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             56     167
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48     167
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High            63     167
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low             39     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          63     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High            62     164
12-24 months   ki0047075b-MAL-ED          INDIA                          Low             68     197
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium          74     197
12-24 months   ki0047075b-MAL-ED          INDIA                          High            55     197
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low             91     212
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74     212
12-24 months   ki0047075b-MAL-ED          NEPAL                          High            47     212
12-24 months   ki0047075b-MAL-ED          PERU                           Low             71     190
12-24 months   ki0047075b-MAL-ED          PERU                           Medium          63     190
12-24 months   ki0047075b-MAL-ED          PERU                           High            56     190
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            118     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          48     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            64     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             50     168
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         111     168
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     168
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low             89     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium          98     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           137     324
12-24 months   ki1000108-IRC              INDIA                          Low            144     396
12-24 months   ki1000108-IRC              INDIA                          Medium         135     396
12-24 months   ki1000108-IRC              INDIA                          High           117     396
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            150     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         144     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High           127     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            138     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         164     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High           156     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            139     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         171     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           185     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       2
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low            520     730
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         132     730
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High            78     730
12-24 months   ki1119695-PROBIT           BELARUS                        Low            893    2533
12-24 months   ki1119695-PROBIT           BELARUS                        Medium        1229    2533
12-24 months   ki1119695-PROBIT           BELARUS                        High           411    2533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low             77     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium          95     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           131     303
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low            410     871
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium         289     871
12-24 months   ki1135781-COHORTS          GUATEMALA                      High           172     871
12-24 months   ki1135781-COHORTS          INDIA                          Low           1072    3528
12-24 months   ki1135781-COHORTS          INDIA                          Medium        1949    3528
12-24 months   ki1135781-COHORTS          INDIA                          High           507    3528
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low            704    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         724    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High           832    2260
12-24 months   ki1148112-LCNI-5           MALAWI                         Low             93     306
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium          91     306
12-24 months   ki1148112-LCNI-5           MALAWI                         High           122     306
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3333    9281
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2844    9281
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          3104    9281
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           2820    3037
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         112    3037
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           105    3037


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/71b5fc99-30b3-4370-8541-68e291a494a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/71b5fc99-30b3-4370-8541-68e291a494a2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                3.5021962   3.3769526   3.6274398
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                3.6024219   3.4931502   3.7116936
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                3.6139143   3.5151423   3.7126862
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                4.1195411   3.9001660   4.3389161
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                3.9537463   3.7949192   4.1125734
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                4.1218973   3.9667860   4.2770085
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                3.4399481   3.3204801   3.5594161
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                3.6517365   3.5006890   3.8027840
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                3.7153683   3.5493147   3.8814220
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                3.8365662   3.7144250   3.9587075
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                3.7350892   3.6008567   3.8693217
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                3.9500501   3.8031141   4.0969861
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                3.3057379   3.2125202   3.3989557
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                3.2492321   3.1304693   3.3679949
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                3.4165649   3.3050236   3.5281062
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                3.4160605   3.2800002   3.5521207
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                3.4041441   3.2325227   3.5757655
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                3.5334389   3.3806926   3.6861852
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                3.4068830   3.2494197   3.5643462
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                3.4980776   3.3899930   3.6061621
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                3.8121679   3.4636887   4.1606471
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                3.7023765   3.2509778   4.1537752
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                3.1680321   2.6824970   3.6535673
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                3.6465556   3.3761404   3.9169709
0-3 months     ki1000108-IRC              INDIA                          Low                  NA                3.2068233   3.0322137   3.3814330
0-3 months     ki1000108-IRC              INDIA                          Medium               NA                2.9907355   2.7884545   3.1930165
0-3 months     ki1000108-IRC              INDIA                          High                 NA                3.3505834   3.1501572   3.5510096
0-3 months     ki1000109-EE               PAKISTAN                       Low                  NA                2.6334452   2.5430382   2.7238522
0-3 months     ki1000109-EE               PAKISTAN                       Medium               NA                2.7227403   2.4908575   2.9546231
0-3 months     ki1000109-EE               PAKISTAN                       High                 NA                3.0159585   2.5841232   3.4477938
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                3.5271921   3.4957502   3.5586341
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                3.6089338   3.5693961   3.6484715
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                3.7503455   3.6645681   3.8361229
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                3.2999536   3.2148813   3.3850259
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                3.2957856   3.1994545   3.3921167
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                3.3500343   3.2449511   3.4551175
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                3.4467548   3.3771149   3.5163947
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                3.4667030   3.4006574   3.5327487
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                3.5314872   3.4639868   3.5989876
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                3.3077609   3.2368439   3.3786780
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                3.2949314   3.2287754   3.3610874
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                3.3064445   3.2450573   3.3678316
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.8056046   2.6771587   2.9340505
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.8424622   2.7292750   2.9556495
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.8803310   2.7716424   2.9890197
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                3.3771181   3.3320680   3.4221682
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                3.3444479   3.3033623   3.3855334
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                3.3796498   3.3508228   3.4084768
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                2.5991236   2.5330507   2.6651966
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                2.6274903   2.5501636   2.7048171
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                2.6478139   2.5636370   2.7319907
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                3.4470097   3.4189033   3.4751162
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                3.5639928   3.5420004   3.5859853
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                3.6901596   3.6486744   3.7316448
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                3.6820633   3.6656488   3.6984779
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                3.7178531   3.7018664   3.7338397
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                3.7656891   3.7496402   3.7817381
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                3.6377040   3.5912191   3.6841890
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                3.7553356   3.5084741   4.0021972
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                3.7812508   3.4658087   4.0966930
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.9735142   1.8721446   2.0748838
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.8581599   1.7755265   1.9407934
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.9790273   1.8905583   2.0674964
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                2.1828618   2.0291635   2.3365602
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                2.1672907   2.0426681   2.2919132
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                2.0939236   1.9556968   2.2321505
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.9479954   1.8524342   2.0435567
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.8856476   1.7665724   2.0047227
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.7889236   1.6814759   1.8963713
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.9337570   1.8523630   2.0151511
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.9987606   1.8911556   2.1063656
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.9795305   1.8580438   2.1010171
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                2.0031330   1.9039706   2.1022954
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                2.0888057   1.9716121   2.2059994
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                1.9436442   1.8206002   2.0666883
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.9290654   1.8092588   2.0488721
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                2.0900742   1.9328172   2.2473311
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.9844016   1.8352049   2.1335983
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.9220764   1.7744438   2.0697089
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.8309601   1.7438980   1.9180223
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.4175914   1.0392274   1.7959554
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                1.6580699   1.5009798   1.8151600
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                1.8441616   1.6308015   2.0575217
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                1.8700942   1.7184138   2.0217745
3-6 months     ki1000108-IRC              INDIA                          Low                  NA                1.8654115   1.7641753   1.9666477
3-6 months     ki1000108-IRC              INDIA                          Medium               NA                1.9651227   1.8521750   2.0780703
3-6 months     ki1000108-IRC              INDIA                          High                 NA                1.8009938   1.6846020   1.9173856
3-6 months     ki1000109-EE               PAKISTAN                       Low                  NA                1.9959405   1.9290938   2.0627872
3-6 months     ki1000109-EE               PAKISTAN                       Medium               NA                2.1864758   2.0089623   2.3639894
3-6 months     ki1000109-EE               PAKISTAN                       High                 NA                2.1545768   2.0186109   2.2905427
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.9176709   1.8584807   1.9768611
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.9064331   1.8469720   1.9658943
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                2.0370858   1.9850183   2.0891534
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                1.7706268   1.6927854   1.8484683
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                1.8169722   1.7331207   1.9008238
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                1.9337466   1.8475062   2.0199870
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.9628513   1.9026683   2.0230343
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.9622547   1.9011306   2.0233788
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.9708841   1.9103414   2.0314267
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                2.0012954   1.9396231   2.0629677
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.9768884   1.9112700   2.0425067
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                2.0400735   1.9789867   2.1011603
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.8873565   1.6994641   2.0752490
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.7904624   1.7484417   1.8324830
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.7894391   1.7161996   1.8626786
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.6990122   1.6520079   1.7460165
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.6919995   1.5944453   1.7895537
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.7751669   1.6750020   1.8753319
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.0657825   2.0198329   2.1117320
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.1072532   2.0640181   2.1504884
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.1018237   2.0456067   2.1580406
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.9597415   1.9161029   2.0033801
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.9340820   1.8944848   1.9736792
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                2.0005521   1.9733310   2.0277732
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.7568954   1.7137614   1.8000294
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.7868617   1.7284606   1.8452628
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                1.7346259   1.6705592   1.7986926
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.7906032   1.7672770   1.8139294
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.8883014   1.8701196   1.9064831
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                1.9542078   1.9181912   1.9902245
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.9050417   1.8874422   1.9226412
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.9221578   1.9048253   1.9394904
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.9337692   1.9165840   1.9509544
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.9099730   1.8678112   1.9521348
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.7413937   1.5089044   1.9738831
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                2.0780761   1.8721422   2.2840100
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.1037660   1.0607061   1.1468260
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.1438358   1.0952395   1.1924322
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.1308393   1.0818638   1.1798148
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                1.2896730   1.1964951   1.3828508
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                1.4052997   1.3358489   1.4747505
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.4360538   1.3561340   1.5159736
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                1.1193029   1.0694974   1.1691084
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                1.1228481   1.0718110   1.1738852
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                1.1173710   1.0642229   1.1705191
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.2492647   1.2071350   1.2913944
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.2212033   1.1814811   1.2609255
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                1.2077116   1.1475413   1.2678820
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                1.1998947   1.1427746   1.2570147
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                1.1983447   1.1473887   1.2493006
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                1.2369678   1.1742296   1.2997059
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.1744459   1.1162755   1.2326162
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                1.2066314   1.1167651   1.2964977
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.2029633   1.1270795   1.2788471
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9998607   0.9311254   1.0685959
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9898692   0.9400160   1.0397223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2297753   0.9245858   1.5349649
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                1.1074523   1.0230262   1.1918785
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                1.0501137   0.9597471   1.1404803
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                1.0396985   0.9648963   1.1145006
6-12 months    ki1000108-IRC              INDIA                          Low                  NA                1.2126956   1.1614457   1.2639454
6-12 months    ki1000108-IRC              INDIA                          Medium               NA                1.2511656   1.2067434   1.2955879
6-12 months    ki1000108-IRC              INDIA                          High                 NA                1.2886669   1.2331792   1.3441546
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.0503985   1.0210084   1.0797885
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.1426941   1.1189325   1.1664557
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.1295187   1.1085892   1.1504482
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.9892832   0.9074316   1.0711348
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                1.2762233   0.9300414   1.6224052
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.9297078   0.8225894   1.0368262
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                1.1332888   1.0972855   1.1692921
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                1.1641717   1.1279514   1.2003919
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                1.2165451   1.1721116   1.2609786
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.1296501   1.0990357   1.1602646
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.1609222   1.1313146   1.1905298
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.2237243   1.1955579   1.2518907
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.2087948   1.1773287   1.2402609
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.2320488   1.2038201   1.2602776
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.2421271   1.2112932   1.2729611
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1640876   1.0438449   1.2843302
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.1774719   1.1521906   1.2027532
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2572858   1.2138451   1.3007266
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                1.0506899   0.9961991   1.1051808
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                1.0958128   1.0358475   1.1557780
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                1.1524523   1.1064819   1.1984227
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.1633910   1.1390348   1.1877472
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.1666095   1.1246986   1.2085205
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.1953420   1.1451675   1.2455165
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                1.4822256   1.4344129   1.5300384
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                1.4625371   1.4250041   1.5000701
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                1.4703922   1.4374972   1.5032871
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.1628842   1.1379901   1.1877783
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.1880112   1.1661013   1.2099211
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.2170185   1.2025101   1.2315270
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.0193717   0.9929462   1.0457973
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.0409930   1.0120020   1.0699839
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.9754246   0.9401176   1.0107315
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                1.0116752   0.9952813   1.0280690
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                1.1110132   1.0987544   1.1232721
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                1.1652005   1.1423023   1.1880987
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                1.0360472   1.0145886   1.0575058
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                1.0568048   1.0347924   1.0788172
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                1.1027348   1.0829213   1.1225483
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                1.3049938   1.2556578   1.3543297
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                1.2588036   1.2133527   1.3042544
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                1.2727001   1.2309895   1.3144108
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.0823685   1.0722125   1.0925245
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.1076768   1.0967683   1.1185854
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.1314256   1.1203804   1.1424707
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.2016654   1.1846377   1.2186932
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.1859887   1.0891251   1.2828523
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.2722116   1.2069871   1.3374360
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.8477297   0.8211672   0.8742922
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8613419   0.8262849   0.8963988
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.8435939   0.8121874   0.8750005
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.9539875   0.8961746   1.0118004
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.9671042   0.9165205   1.0176880
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.0119402   0.9607694   1.0631110
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8792099   0.8497214   0.9086983
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8588811   0.8318417   0.8859205
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.9308344   0.8937972   0.9678717
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8461501   0.8205125   0.8717877
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.8684143   0.8435133   0.8933153
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8989931   0.8673589   0.9306273
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8281565   0.7961174   0.8601955
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.8318904   0.7978951   0.8658857
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8852624   0.8437678   0.9267571
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8661417   0.8356957   0.8965877
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8461803   0.8084719   0.8838886
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.8946424   0.8451393   0.9441454
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6964517   0.6514760   0.7414273
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8002422   0.7708449   0.8296394
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7631797   0.6387976   0.8875617
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.7047966   0.6553798   0.7542135
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7532551   0.7048530   0.8016573
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7526811   0.7106240   0.7947383
12-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.8219598   0.7915677   0.8523519
12-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.8252696   0.7884973   0.8620419
12-24 months   ki1000108-IRC              INDIA                          High                 NA                0.8436137   0.8097189   0.8775086
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7409722   0.7183057   0.7636388
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7344863   0.7083840   0.7605885
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.7825667   0.7559750   0.8091584
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8317016   0.8109452   0.8524581
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8542619   0.8330829   0.8754409
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8838782   0.8645141   0.9032423
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8481849   0.8261023   0.8702674
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8675842   0.8471354   0.8880331
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9035351   0.8852904   0.9217798
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.8313600   0.8133659   0.8493541
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.8376382   0.8037642   0.8715122
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.8856756   0.8297241   0.9416271
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8471966   0.7972698   0.8971234
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8636933   0.7959967   0.9313899
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8776908   0.8191786   0.9362029
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7156961   0.6671239   0.7642683
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6796318   0.6312151   0.7280484
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7284725   0.6895928   0.7673521
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7656609   0.7498012   0.7815205
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.8041009   0.7851686   0.8230332
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7684350   0.7452315   0.7916386
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7721159   0.7618133   0.7824185
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.8268829   0.8198219   0.8339439
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.9111470   0.8975344   0.9247597
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6698030   0.6567095   0.6828966
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6932848   0.6804396   0.7061299
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7497301   0.7381148   0.7613453
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8634882   0.8305975   0.8963789
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.8189227   0.7867831   0.8510623
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.8415883   0.8177076   0.8654690
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.7880401   0.7800545   0.7960258
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.7918969   0.7825162   0.8012776
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.8101208   0.8010152   0.8192265
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.8474982   0.8397811   0.8552153
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.8664122   0.8309461   0.9018783
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.8432909   0.8035109   0.8830710


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5736571   3.5090954   3.6382187
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0564211   3.9546896   4.1581527
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5965766   3.5105921   3.6825612
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8272755   3.7488288   3.9057221
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3191043   3.2559757   3.3822330
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4834641   3.3960954   3.5708328
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575664   2.5735731   2.7415597
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3701989   3.3492904   3.3911073
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6183056   2.5748036   2.6618075
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5408199   3.5246677   3.5569722
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184940   3.7081505   3.7288375
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6448245   3.5996325   3.6900166
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9420749   1.8884516   1.9956982
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1462634   2.0667588   2.2257680
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8801026   1.8162708   1.9439344
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9666191   1.9085872   2.0246511
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0149713   1.9493224   2.0806201
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8407020   1.7648629   1.9165411
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0205472   1.9599234   2.0811710
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7934875   1.7576895   1.8292856
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7071786   1.6679648   1.7463924
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9748551   1.9548900   1.9948201
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7621283   1.7313782   1.7928785
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8645860   1.8511724   1.8779996
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201625   1.9096984   1.9306266
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.9104051   1.8695625   1.9512478
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1258416   1.0984933   1.1531898
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3860209   1.3394503   1.4325915
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1200713   1.0903748   1.1497678
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2300323   1.2034516   1.2566130
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2106665   1.1778231   1.2435100
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0034494   0.9620130   1.0448858
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1968182   1.1752193   1.2184170
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1080731   1.0769747   1.1391716
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1675919   1.1478830   1.1873008
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1979817   1.1870549   1.2089085
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0181734   1.0009149   1.0354319
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0872656   1.0780837   1.0964475
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2783065   1.2521010   1.3045119
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069106   1.1001669   1.1136544
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2034779   1.1869171   1.2200388
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8500820   0.8321238   0.8680402
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9809352   0.9500289   1.0118414
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8859866   0.8678092   0.9041640
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8656368   0.8497199   0.8815537
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8462258   0.8254179   0.8670337
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7678079   0.7426253   0.7929904
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8382988   0.8227925   0.8538051
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7789632   0.7681198   0.7898067
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8223511   0.8167901   0.8279120
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8415038   0.8246015   0.8584060
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966068   0.7913012   0.8019125
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8480503   0.8406459   0.8554546


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.1002257   -0.0659858    0.2664372
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.1117181   -0.0477870    0.2712231
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.1657948   -0.4366295    0.1050399
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0023562   -0.2663163    0.2710287
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.2117883    0.0192060    0.4043706
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.2754202    0.0708563    0.4799842
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.1014770   -0.2829621    0.0800081
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.1134839   -0.0775886    0.3045563
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0565059   -0.2074832    0.0944714
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.1108270   -0.0345381    0.2561921
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.0119164   -0.2309285    0.2070957
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.1173784   -0.0871792    0.3219360
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0911946   -0.0997948    0.2821840
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.4052849    0.0228815    0.7876884
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.5343444   -1.1972962    0.1286074
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0558209   -0.5820197    0.4703779
0-3 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Medium               Low               -0.2160878   -0.4833071    0.0511314
0-3 months     ki1000108-IRC              INDIA                          High                 Low                0.1437601   -0.1220578    0.4095781
0-3 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.0892951   -0.1595885    0.3381787
0-3 months     ki1000109-EE               PAKISTAN                       High                 Low                0.3825133   -0.0586841    0.8237107
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0817417    0.0277507    0.1357327
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.2231534    0.1278458    0.3184610
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0041680   -0.1326864    0.1243504
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0500807   -0.0851220    0.1852835
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0199482   -0.0760296    0.1159261
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0847324   -0.0122522    0.1817171
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0128295   -0.1098132    0.0841542
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               -0.0013165   -0.0951120    0.0924791
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0368576   -0.0183782    0.0920934
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0747264   -0.0007383    0.1501912
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0326702   -0.0936418    0.0283014
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0025317   -0.0509520    0.0560155
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0283667   -0.0733440    0.1300773
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0486902   -0.0583209    0.1557013
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.1169831    0.0812950    0.1526712
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.2431498    0.1930400    0.2932597
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0357897    0.0137145    0.0578650
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0836258    0.0620554    0.1051962
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.1176316   -0.1343867    0.3696499
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.1435468   -0.1745535    0.4616471
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.1153543   -0.2461368    0.0154283
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0055132   -0.1290326    0.1400589
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.0155712   -0.2134447    0.1823024
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low               -0.0889382   -0.2956502    0.1177738
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0623479   -0.2150268    0.0903310
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.1590718   -0.3028667   -0.0152770
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0650036   -0.0699180    0.1999252
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0457734   -0.1004592    0.1920061
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0856727   -0.0678445    0.2391899
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low               -0.0594888   -0.2175173    0.0985398
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.1610087   -0.0366865    0.3587039
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0553361   -0.1360099    0.2466822
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0911162   -0.2625082    0.0802757
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.5044849   -0.9106311   -0.0983388
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.1860917   -0.0788608    0.4510442
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.2120243   -0.0063429    0.4303914
3-6 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Medium               Low                0.0997112   -0.0519659    0.2513883
3-6 months     ki1000108-IRC              INDIA                          High                 Low               -0.0644177   -0.2186766    0.0898412
3-6 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.1905353    0.0008526    0.3802180
3-6 months     ki1000109-EE               PAKISTAN                       High                 Low                0.1586363    0.0071266    0.3101460
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               -0.0112377   -0.0874747    0.0649992
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.1194150    0.0462218    0.1926082
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0463454   -0.0680678    0.1607586
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.1631198    0.0469445    0.2792951
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               -0.0005966   -0.0863762    0.0851831
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0080328   -0.0773335    0.0933991
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0244071   -0.1144584    0.0656443
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0387781   -0.0480267    0.1255828
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0968941   -0.2894280    0.0956398
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0979174   -0.2995795    0.1037447
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0070127   -0.1153004    0.1012750
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0761547   -0.0344908    0.1868002
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0414708    0.0078128    0.0751287
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0360412   -0.0186989    0.0907814
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0256595   -0.0845854    0.0332665
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0408106   -0.0106220    0.0922433
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0299663   -0.0426369    0.1025695
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0222695   -0.0995035    0.0549644
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0976982    0.0681230    0.1272733
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.1636046    0.1206941    0.2065151
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0171161   -0.0070268    0.0412590
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0287275    0.0048696    0.0525854
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.1685793   -0.4046565    0.0674980
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.1681031   -0.0426740    0.3788801
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0400698   -0.0248591    0.1049987
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0270733   -0.0381399    0.0922865
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               Low                0.1156267   -0.0005866    0.2318400
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.1463808    0.0236238    0.2691379
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0035452   -0.0677666    0.0748570
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0019319   -0.0747695    0.0709056
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0280615   -0.0859645    0.0298416
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0415531   -0.1150063    0.0319002
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0015500   -0.0780954    0.0749955
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0370731   -0.0477725    0.1219187
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0321855   -0.0748646    0.1392357
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0285174   -0.0670971    0.1241320
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0099915   -0.0949024    0.0749195
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.2299147   -0.0829194    0.5427488
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.0573387   -0.1810072    0.0663298
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0677539   -0.1805508    0.0450430
6-12 months    ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Medium               Low                0.0384701   -0.0293524    0.1062925
6-12 months    ki1000108-IRC              INDIA                          High                 Low                0.0759713    0.0004370    0.1515057
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0922957    0.0504537    0.1341376
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0791203    0.0371666    0.1210739
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low                0.2869402   -0.0687867    0.6426670
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               -0.0595753   -0.1943865    0.0752358
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0308829   -0.0201871    0.0819528
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0832563    0.0260674    0.1404452
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0312721   -0.0113173    0.0738614
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0940742    0.0524738    0.1356745
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0232541   -0.0190186    0.0655267
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0333324   -0.0107227    0.0773874
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0133843   -0.1094873    0.1362560
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0931983   -0.0346508    0.2210473
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low                0.0451228   -0.0359024    0.1261480
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low                0.1017624    0.0304705    0.1730543
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low                0.0032185   -0.0452557    0.0516928
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0319510   -0.0238227    0.0877247
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0196885   -0.0461042    0.0067271
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0118335   -0.0430239    0.0193570
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0251270   -0.0080356    0.0582897
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0541343    0.0253210    0.0829477
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0216212   -0.0176061    0.0608486
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0439471   -0.0880481    0.0001538
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.0993380    0.0788676    0.1198085
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.1535253    0.1253635    0.1816870
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0207576   -0.0099835    0.0514988
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0666876    0.0374806    0.0958945
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0461902   -0.1132709    0.0208905
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0322937   -0.0968987    0.0323114
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0253084    0.0112622    0.0393545
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0490571    0.0346252    0.0634890
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0156767   -0.1137581    0.0824046
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0705461    0.0038989    0.1371933
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0136122   -0.0303714    0.0575958
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               -0.0041358   -0.0452690    0.0369974
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               Low                0.0131167   -0.0637015    0.0899350
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0579527   -0.0192534    0.1351588
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0203288   -0.0603375    0.0196799
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0516245    0.0042819    0.0989672
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0222642   -0.0134758    0.0580042
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0528430    0.0121243    0.0935617
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low                0.0037340   -0.0429799    0.0504478
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low                0.0571060    0.0046817    0.1095303
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.0199614   -0.0684266    0.0285038
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0285007   -0.0296157    0.0866171
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.1037905    0.0500596    0.1575214
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0667280   -0.0655357    0.1989918
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.0484585   -0.0207137    0.1176307
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.0478845   -0.0170064    0.1127754
12-24 months   ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Medium               Low                0.0033098   -0.0443964    0.0510160
12-24 months   ki1000108-IRC              INDIA                          High                 Low                0.0216539   -0.0238713    0.0671791
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0064860   -0.0410562    0.0280842
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0415945    0.0066532    0.0765357
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0225603   -0.0070941    0.0522146
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0521765    0.0237900    0.0805631
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0193993   -0.0106971    0.0494958
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0553502    0.0267057    0.0839947
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low                0.0062782   -0.0320784    0.0446349
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0543156   -0.0044582    0.1130894
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0164967   -0.0374428    0.0704361
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0304942   -0.0146967    0.0756850
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0360643   -0.1046459    0.0325172
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0127764   -0.0494401    0.0749928
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0384401    0.0137427    0.0631374
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0027742   -0.0253316    0.0308799
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0547670    0.0422770    0.0672570
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.1390312    0.1219594    0.1561030
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0234817    0.0051395    0.0418240
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0799270    0.0624240    0.0974300
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0445655   -0.0905520    0.0014210
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0218999   -0.0625458    0.0187460
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0038568   -0.0080463    0.0157599
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0220807    0.0101431    0.0340183
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.0189140   -0.0175589    0.0553869
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0042073   -0.0446197    0.0362051
