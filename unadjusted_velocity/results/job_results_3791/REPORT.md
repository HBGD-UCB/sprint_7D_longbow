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

**Outcome Variable:** y_rate_haz

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
![](/tmp/c00ba5b6-710a-4350-91ea-e421b5300981/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c00ba5b6-710a-4350-91ea-e421b5300981/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0453958   -0.1106598    0.0198683
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0295319   -0.0889561    0.0298923
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0228837   -0.0717928    0.0260254
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.2238117    0.1101559    0.3374676
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.1485870    0.0666928    0.2304813
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.2247961    0.1472487    0.3023435
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0839341   -0.1441494   -0.0237188
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                 0.0157919   -0.0630481    0.0946319
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0373132   -0.0426479    0.1172742
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0885565    0.0319218    0.1451912
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.0261771   -0.0335003    0.0858544
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1432308    0.0696508    0.2168108
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1666765   -0.2136484   -0.1197046
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                -0.1963364   -0.2570619   -0.1356110
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0988036   -0.1576420   -0.0399652
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1264031   -0.1918767   -0.0609294
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.1183594   -0.2071786   -0.0295401
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0424370   -0.1181854    0.0333115
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0785179   -0.1626124    0.0055766
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0424274   -0.0952004    0.0103456
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1002343   -0.0852201    0.2856887
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0058156   -0.2195573    0.2311885
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.2231236   -0.4647632    0.0185161
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0225130   -0.1527219    0.1076960
0-3 months     ki1000108-IRC              INDIA                          Low                  NA                -0.2388028   -0.3240908   -0.1535149
0-3 months     ki1000108-IRC              INDIA                          Medium               NA                -0.3478888   -0.4514782   -0.2442995
0-3 months     ki1000108-IRC              INDIA                          High                 NA                -0.1787213   -0.2782024   -0.0792402
0-3 months     ki1000109-EE               PAKISTAN                       Low                  NA                -0.4059317   -0.4524639   -0.3593995
0-3 months     ki1000109-EE               PAKISTAN                       Medium               NA                -0.3742201   -0.4820868   -0.2663534
0-3 months     ki1000109-EE               PAKISTAN                       High                 NA                -0.2064633   -0.4135096    0.0005830
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0207165   -0.0436245    0.0021916
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                 0.0148329   -0.0043651    0.0340309
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0788383    0.0356969    0.1219796
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1245949   -0.1645428   -0.0846471
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.1271725   -0.1754428   -0.0789022
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1024565   -0.1553389   -0.0495742
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0627763   -0.0943825   -0.0311702
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0472072   -0.0781124   -0.0163020
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0159270   -0.0473305    0.0154764
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1215501   -0.1546673   -0.0884329
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.1261990   -0.1573147   -0.0950832
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1183170   -0.1486798   -0.0879541
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                -0.4492944   -0.5163146   -0.3822741
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                -0.4358621   -0.4947550   -0.3769692
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.4172689   -0.4747109   -0.3598269
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1378191   -0.1602138   -0.1154244
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.1534865   -0.1739322   -0.1330408
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1402584   -0.1546428   -0.1258740
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.5390982   -0.5725693   -0.5056271
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.5445833   -0.5834149   -0.5057516
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.5346287   -0.5767405   -0.4925169
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.1054744   -0.1191819   -0.0917670
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0564469   -0.0672446   -0.0456491
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0099697   -0.0303657    0.0104264
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0518276    0.0439710    0.0596841
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                 0.0718439    0.0642141    0.0794736
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0932270    0.0856341    0.1008199
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0646190    0.0426138    0.0866242
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                 0.1484059    0.0130960    0.2837158
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1436538   -0.0109687    0.2982764
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0073096   -0.0399759    0.0545951
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0611367   -0.0997374   -0.0225359
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0039854   -0.0452663    0.0372954
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0757096    0.0054139    0.1460053
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0722777    0.0151483    0.1294072
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0328293   -0.0316014    0.0972600
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0090487   -0.0528105    0.0347132
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0399780   -0.0952383    0.0152823
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0879844   -0.1390256   -0.0369432
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0363376   -0.0744211    0.0017459
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0067758   -0.0587956    0.0452440
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0173174   -0.0740049    0.0393701
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0201148   -0.0260454    0.0662750
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0591378    0.0039798    0.1142958
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0062063   -0.0651243    0.0527117
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0240485   -0.0806705    0.0325735
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.0511372   -0.0213763    0.1236506
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0005450   -0.0704975    0.0715875
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0236090   -0.0938127    0.0465947
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0711399   -0.1119357   -0.0303442
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.2687726   -0.4324097   -0.1051356
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1636585   -0.2386602   -0.0886568
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.0716160   -0.1722686    0.0290365
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0736194   -0.1451630   -0.0020759
3-6 months     ki1000108-IRC              INDIA                          Low                  NA                -0.0576916   -0.1056665   -0.0097167
3-6 months     ki1000108-IRC              INDIA                          Medium               NA                -0.0086808   -0.0614674    0.0441058
3-6 months     ki1000108-IRC              INDIA                          High                 NA                -0.0950811   -0.1501143   -0.0400480
3-6 months     ki1000109-EE               PAKISTAN                       Low                  NA                 0.0587175    0.0275953    0.0898397
3-6 months     ki1000109-EE               PAKISTAN                       Medium               NA                 0.1348915    0.0507923    0.2189906
3-6 months     ki1000109-EE               PAKISTAN                       High                 NA                 0.1152531    0.0456667    0.1848395
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0227572   -0.0478439    0.0023295
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0325759   -0.0594155   -0.0057362
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0188685   -0.0046897    0.0424267
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0774103   -0.1137799   -0.0410406
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.0566362   -0.0948493   -0.0184232
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0089555   -0.0486157    0.0307048
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0294893   -0.0579060   -0.0010725
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0252237   -0.0538480    0.0034006
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0272435   -0.0555639    0.0010770
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0243875   -0.0043831    0.0531580
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0146814   -0.0156801    0.0450429
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0415871    0.0137173    0.0694570
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0415272   -0.1281438    0.0450893
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0867791   -0.1062915   -0.0672668
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0879821   -0.1218982   -0.0540660
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1671851   -0.1895609   -0.1448094
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.1731005   -0.2181054   -0.1280956
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1426807   -0.1912873   -0.0940741
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0376969    0.0165223    0.0588715
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0533549    0.0328154    0.0738944
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                 0.0493794    0.0233382    0.0754206
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0070597   -0.0274946    0.0133752
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0189542   -0.0374682   -0.0004403
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0102668   -0.0024670    0.0230006
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0939085   -0.1144483   -0.0733688
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.0883689   -0.1160951   -0.0606428
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1138980   -0.1443542   -0.0834419
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.0876665   -0.0984591   -0.0768738
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0508324   -0.0592467   -0.0424181
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0306049   -0.0472327   -0.0139772
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0090552   -0.0172126   -0.0008979
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0005699   -0.0084613    0.0073216
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0003202   -0.0084530    0.0078127
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0040621   -0.0234815    0.0153572
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0757733   -0.1765162    0.0249696
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0683058   -0.0269561    0.1635678
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0821070   -0.1012054   -0.0630087
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0674595   -0.0881881   -0.0467309
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0776160   -0.0978833   -0.0573487
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0330637   -0.0722130    0.0060855
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0145271   -0.0149632    0.0440174
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0267043   -0.0066756    0.0600841
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0787766   -0.1003189   -0.0572343
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0777612   -0.0996287   -0.0558938
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0814965   -0.1041216   -0.0588713
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0361627   -0.0538729   -0.0184525
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0497714   -0.0656652   -0.0338776
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0583397   -0.0831421   -0.0335373
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0432386   -0.0673841   -0.0190932
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0410222   -0.0636590   -0.0183854
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0254796   -0.0520111    0.0010519
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0578880   -0.0829915   -0.0327845
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0485613   -0.0851567   -0.0119659
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0505467   -0.0820672   -0.0190263
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1272820   -0.1560951   -0.0984689
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1297143   -0.1508642   -0.1085644
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0344203   -0.1574126    0.0885720
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0789998   -0.1150423   -0.0429572
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.1038424   -0.1430958   -0.0645889
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1103666   -0.1424778   -0.0782554
6-12 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0410398   -0.0642475   -0.0178320
6-12 months    ki1000108-IRC              INDIA                          Medium               NA                -0.0237896   -0.0428441   -0.0047351
6-12 months    ki1000108-IRC              INDIA                          High                 NA                -0.0105078   -0.0347904    0.0137749
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1018044   -0.1140603   -0.0895484
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0686168   -0.0773825   -0.0598511
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0810603   -0.0902072   -0.0719135
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.1172347   -0.1505192   -0.0839502
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -0.0014567   -0.1435966    0.1406832
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1454371   -0.1903083   -0.1005658
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0636083   -0.0785164   -0.0487001
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.0539455   -0.0693084   -0.0385825
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0387009   -0.0569902   -0.0204116
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0796370   -0.0919913   -0.0672827
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0662139   -0.0781218   -0.0543061
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0440469   -0.0553268   -0.0327669
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0388105   -0.0520833   -0.0255378
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0270798   -0.0390845   -0.0150752
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0293401   -0.0419512   -0.0167291
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0718475   -0.1236813   -0.0200136
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0672450   -0.0780126   -0.0564773
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0353525   -0.0539316   -0.0167734
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0949960   -0.1166998   -0.0732921
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -0.0836868   -0.1096728   -0.0577007
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0571756   -0.0764798   -0.0378715
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0616416   -0.0717941   -0.0514891
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0652022   -0.0830066   -0.0473978
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0567831   -0.0785717   -0.0349946
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0498652    0.0292600    0.0704703
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0375566    0.0213848    0.0537285
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0393976    0.0250897    0.0537054
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0618627   -0.0724141   -0.0513114
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0529971   -0.0623661   -0.0436281
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0424216   -0.0486302   -0.0362130
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1071588   -0.1179900   -0.0963275
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.1022526   -0.1142408   -0.0902645
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1269847   -0.1416344   -0.1123350
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.1185546   -0.1254313   -0.1116778
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.0867013   -0.0918758   -0.0815267
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0746758   -0.0843556   -0.0649960
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1094963   -0.1185285   -0.1004642
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.1034503   -0.1127355   -0.0941651
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0889653   -0.0972308   -0.0806998
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0079265   -0.0128476    0.0287006
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0152427   -0.0340630    0.0035777
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0128074   -0.0303129    0.0046981
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0825203   -0.0868646   -0.0781761
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0731207   -0.0777355   -0.0685060
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0685685   -0.0732417   -0.0638954
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0392237   -0.0463738   -0.0320737
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0406955   -0.0826408    0.0012497
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0097775   -0.0367626    0.0172076
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0162964   -0.0252576   -0.0073353
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0113235   -0.0240824    0.0014354
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0214661   -0.0314817   -0.0114505
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0066820   -0.0271205    0.0137565
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                -0.0089341   -0.0253243    0.0074561
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0094267   -0.0090478    0.0279013
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0126031   -0.0210514   -0.0041549
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0159137   -0.0238411   -0.0079863
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0052100   -0.0063147    0.0167348
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0341534   -0.0425112   -0.0257956
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0274410   -0.0358753   -0.0190067
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0209453   -0.0309073   -0.0109833
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0146170   -0.0258158   -0.0034182
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0117982   -0.0235390   -0.0000573
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0005193   -0.0131568    0.0141953
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0139303   -0.0238723   -0.0039884
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0234181   -0.0365276   -0.0103085
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0118968   -0.0293554    0.0055618
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0643630   -0.0783901   -0.0503359
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0295814   -0.0398264   -0.0193363
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0466314   -0.0933608    0.0000981
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0558824   -0.0754460   -0.0363187
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.0394630   -0.0577063   -0.0212196
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0431172   -0.0587477   -0.0274868
12-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0323316   -0.0431243   -0.0215389
12-24 months   ki1000108-IRC              INDIA                          Medium               NA                -0.0328465   -0.0464269   -0.0192662
12-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0298322   -0.0420780   -0.0175864
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0378983   -0.0454817   -0.0303149
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.0448409   -0.0530970   -0.0365847
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0384117   -0.0467773   -0.0300462
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0134688   -0.0204344   -0.0065032
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0088419   -0.0155072   -0.0021765
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0027814   -0.0090088    0.0034460
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0139230   -0.0208802   -0.0069658
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0063164   -0.0135927    0.0009599
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0009610   -0.0053340    0.0072560
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0158835   -0.0219214   -0.0098456
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0187046   -0.0293347   -0.0080745
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0070867   -0.0242905    0.0101171
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0458654   -0.0624283   -0.0293026
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0419435   -0.0640031   -0.0198839
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0402396   -0.0601119   -0.0203673
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0473745   -0.0648447   -0.0299043
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0615843   -0.0782266   -0.0449421
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0471750   -0.0612001   -0.0331500
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0330053   -0.0384704   -0.0275403
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.0244308   -0.0308416   -0.0180200
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0308864   -0.0386212   -0.0231517
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0418459   -0.0453435   -0.0383483
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.0359487   -0.0383101   -0.0335872
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0199880   -0.0246758   -0.0153002
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0663939   -0.0709730   -0.0618147
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.0612594   -0.0656448   -0.0568740
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0471160   -0.0511873   -0.0430446
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0040732   -0.0146388    0.0064924
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0245802   -0.0357981   -0.0133624
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0183288   -0.0268490   -0.0098086
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0180538   -0.0209092   -0.0151984
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0194635   -0.0227236   -0.0162034
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0190574   -0.0222457   -0.0158691
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0151753   -0.0179032   -0.0124475
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0110150   -0.0242923    0.0022624
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0191723   -0.0304347   -0.0079100


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0322739   -0.0655804    0.0010326
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1951445    0.1430920    0.2471969
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0124969   -0.0558416    0.0308478
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0794721    0.0428849    0.1160592
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1567505   -0.1892816   -0.1242194
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0474377   -0.0913827   -0.0034926
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3945616   -0.4374418   -0.3516814
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1430799   -0.1534971   -0.1326627
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5398883   -0.5618098   -0.5179668
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0669871   -0.0748765   -0.0590978
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705611    0.0656060    0.0755162
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0691128    0.0476134    0.0906122
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0169713   -0.0420738    0.0081313
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0596590    0.0229980    0.0963199
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0427354   -0.0724503   -0.0130205
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0218048   -0.0493065    0.0056969
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257431   -0.0052244    0.0567106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652398   -0.1008912   -0.0295884
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0682411    0.0400017    0.0964805
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855445   -0.1021523   -0.0689368
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1651360   -0.1837346   -0.1465373
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009012   -0.0102406    0.0084383
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0961436   -0.1107658   -0.0815214
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0603887   -0.0665778   -0.0541997
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034488   -0.0083148    0.0014172
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0038533   -0.0226172    0.0149106
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0760273   -0.0876590   -0.0643956
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0064252   -0.0131569    0.0260072
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0791755   -0.0919190   -0.0664321
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0459585   -0.0569569   -0.0349601
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0370505   -0.0511480   -0.0229529
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1248044   -0.1422077   -0.1074011
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0594910   -0.0686980   -0.0502839
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0752772   -0.0882847   -0.0622698
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0616892   -0.0699485   -0.0534299
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492987   -0.0539607   -0.0446367
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1093531   -0.1164584   -0.1022477
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0950617   -0.0988999   -0.0912235
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0071514   -0.0181345    0.0038317
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748606   -0.0777046   -0.0720167
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0382948   -0.0452396   -0.0313500
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0168173   -0.0229120   -0.0107226
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0014573   -0.0121231    0.0092086
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0088735   -0.0142835   -0.0034635
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0288822   -0.0340687   -0.0236956
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092211   -0.0162745   -0.0021678
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0406435   -0.0491749   -0.0321120
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0154537   -0.0205205   -0.0103868
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0297419   -0.0334215   -0.0260622
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0354469   -0.0372735   -0.0336204
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0158553   -0.0216714   -0.0100392
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188214   -0.0206663   -0.0169765
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0151601   -0.0177651   -0.0125551


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0158639   -0.0724007    0.1041284
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0225121   -0.0590447    0.1040688
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.0752247   -0.2153115    0.0648621
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0009844   -0.1366065    0.1385753
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0997259    0.0005209    0.1989309
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.1212473    0.0211490    0.2213455
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0623795   -0.1446526    0.0198937
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0546743   -0.0381778    0.1475264
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0296599   -0.1064319    0.0471121
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0678729   -0.0074153    0.1431612
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0080437   -0.1022996    0.1183870
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0839661   -0.0161569    0.1840891
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0360905   -0.0631913    0.1353723
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.1787522   -0.0248779    0.3823824
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.2289391   -0.5593672    0.1014889
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0283285   -0.2886117    0.2319546
0-3 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Medium               Low               -0.1090860   -0.2432679    0.0250959
0-3 months     ki1000108-IRC              INDIA                          High                 Low                0.0600815   -0.0709548    0.1911179
0-3 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.0317116   -0.0857638    0.1491870
0-3 months     ki1000109-EE               PAKISTAN                       High                 Low                0.1994684   -0.0127424    0.4116792
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0355494    0.0047609    0.0663378
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0995547    0.0467856    0.1523239
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0025775   -0.0652342    0.0600791
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0221384   -0.0441366    0.0884134
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0155692   -0.0286358    0.0597741
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0468493    0.0022946    0.0914040
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0046489   -0.0500905    0.0407928
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0032331   -0.0416963    0.0481626
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0134322   -0.0152662    0.0421307
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0320254   -0.0070053    0.0710562
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0156674   -0.0459915    0.0146567
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               -0.0024393   -0.0290557    0.0241771
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0054850   -0.0567511    0.0457810
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0044695   -0.0493238    0.0582628
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0490276    0.0315781    0.0664771
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0955048    0.0709306    0.1200790
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0200163    0.0095771    0.0304555
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0413994    0.0310668    0.0517320
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.0837869   -0.0538417    0.2214155
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0790348   -0.0768261    0.2348957
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0684462   -0.1294867   -0.0074058
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low               -0.0112950   -0.0740647    0.0514747
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.0034319   -0.0940148    0.0871510
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low               -0.0428803   -0.1382365    0.0524759
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0309293   -0.1014190    0.0395604
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0789357   -0.1461689   -0.0117025
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0295618   -0.0349085    0.0940321
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0190202   -0.0492721    0.0873124
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0390230   -0.0329017    0.1109477
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low               -0.0263211   -0.1011682    0.0485260
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0751857   -0.0168157    0.1671871
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0245935   -0.0662530    0.1154400
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0475309   -0.1287273    0.0336654
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.2451636   -0.4232244   -0.0671028
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.0920424   -0.0334812    0.2175661
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.0900391   -0.0136129    0.1936910
3-6 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Medium               Low                0.0490108   -0.0223195    0.1203411
3-6 months     ki1000108-IRC              INDIA                          High                 Low               -0.0373896   -0.1103981    0.0356189
3-6 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.0761739   -0.0134991    0.1658470
3-6 months     ki1000109-EE               PAKISTAN                       High                 Low                0.0565356   -0.0196934    0.1327646
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               -0.0098187   -0.0427196    0.0230823
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0416257    0.0109520    0.0722994
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0207740   -0.0319800    0.0735280
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0684548    0.0146432    0.1222663
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0042655   -0.0360689    0.0446000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0022458   -0.0378735    0.0423651
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0097060   -0.0515339    0.0321218
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0171997   -0.0228563    0.0572556
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0452519   -0.1340391    0.0435353
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0464549   -0.1394749    0.0465652
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0059154   -0.0561759    0.0443451
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0245044   -0.0290052    0.0780140
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0156580   -0.0001621    0.0314781
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0116825   -0.0136931    0.0370581
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0118946   -0.0394691    0.0156799
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0173265   -0.0067512    0.0414041
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0055396   -0.0289657    0.0400450
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0199895   -0.0567245    0.0167455
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0368341    0.0231490    0.0505191
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0570615    0.0372383    0.0768848
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0084854   -0.0026729    0.0196437
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0087351   -0.0023754    0.0198455
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0717112   -0.1741701    0.0307477
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0723680   -0.0252155    0.1699514
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0146475   -0.0135379    0.0428330
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0044910   -0.0233570    0.0323390
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               Low                0.0475908   -0.0014229    0.0966045
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0597680    0.0083202    0.1112158
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0010154   -0.0296808    0.0317116
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0027199   -0.0339604    0.0285206
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0136087   -0.0374050    0.0101876
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0221770   -0.0526533    0.0082994
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low                0.0022164   -0.0308808    0.0353136
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0177590   -0.0181147    0.0536328
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0093267   -0.0350513    0.0537047
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0073413   -0.0329542    0.0476368
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0024323   -0.0381746    0.0333100
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0928617   -0.0334605    0.2191839
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.0248426   -0.0781333    0.0284481
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0313668   -0.0796389    0.0169053
6-12 months    ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Medium               Low                0.0172501   -0.0127777    0.0472780
6-12 months    ki1000108-IRC              INDIA                          High                 Low                0.0305320   -0.0030574    0.0641214
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0331875    0.0168194    0.0495557
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0207440    0.0027917    0.0386963
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low                0.1157780   -0.0302070    0.2617629
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               -0.0282024   -0.0840709    0.0276661
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0096628   -0.0117445    0.0310701
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0249074    0.0013117    0.0485030
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0134230   -0.0037358    0.0305819
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0355901    0.0188609    0.0523193
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0117307   -0.0061656    0.0296270
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0094704   -0.0088382    0.0277790
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0046025   -0.0483379    0.0575430
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0364950   -0.0185680    0.0915580
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low                0.0113092   -0.0225483    0.0451667
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low                0.0378203    0.0087736    0.0668670
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0035606   -0.0240563    0.0169350
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0048584   -0.0191793    0.0288962
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0123085   -0.0238585   -0.0007586
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0104676   -0.0240074    0.0030722
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0088657   -0.0052450    0.0229763
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0194411    0.0071987    0.0316836
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0049061   -0.0112504    0.0210626
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0198259   -0.0380449   -0.0016070
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.0318533    0.0232472    0.0404594
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.0438788    0.0320049    0.0557526
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0060461   -0.0069075    0.0189996
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0205311    0.0082878    0.0327744
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0231692   -0.0512007    0.0048624
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0207339   -0.0479002    0.0064323
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0093996    0.0034468    0.0153524
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0139518    0.0078188    0.0200848
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0014718   -0.0439648    0.0410212
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0294463    0.0018315    0.0570610
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0049729   -0.0106184    0.0205643
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               -0.0051696   -0.0186089    0.0082696
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.0022521   -0.0284507    0.0239466
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0161087   -0.0114420    0.0436594
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0033106   -0.0148958    0.0082746
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0178131    0.0035235    0.0321027
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0067124   -0.0051615    0.0185863
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0132081    0.0002045    0.0262117
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low                0.0028188   -0.0134064    0.0190441
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low                0.0151363   -0.0025399    0.0328124
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.0094877   -0.0259408    0.0069654
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0020336   -0.0180574    0.0221245
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0347816    0.0174115    0.0521517
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0177317   -0.0310577    0.0665210
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.0164194   -0.0103305    0.0431693
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.0127651   -0.0122758    0.0378061
12-24 months   ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Medium               Low               -0.0005149   -0.0178616    0.0168318
12-24 months   ki1000108-IRC              INDIA                          High                 Low                0.0024995   -0.0138236    0.0188225
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0069426   -0.0181529    0.0042677
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               -0.0005135   -0.0118046    0.0107777
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0046269   -0.0050139    0.0142678
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0106874    0.0013439    0.0200308
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0076066   -0.0024605    0.0176737
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0148839    0.0055015    0.0242663
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0028211   -0.0150463    0.0094041
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0087968   -0.0094358    0.0270294
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0039219   -0.0143029    0.0221468
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0056258   -0.0105018    0.0217535
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0142098   -0.0383381    0.0099184
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0001995   -0.0222039    0.0226028
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0085745    0.0001504    0.0169986
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0021189   -0.0073518    0.0115895
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0058972    0.0016771    0.0101174
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.0218579    0.0160091    0.0277067
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0051345   -0.0012059    0.0114749
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0192779    0.0131505    0.0254053
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0205070   -0.0359171   -0.0050969
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0142556   -0.0278285   -0.0006827
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               -0.0014097   -0.0056693    0.0028498
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               -0.0010036   -0.0052090    0.0032018
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.0041604   -0.0094751    0.0177958
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0039970   -0.0155101    0.0075161
