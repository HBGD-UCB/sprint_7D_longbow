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

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/47aba6c7-d437-4052-94d1-1b612d7a9437/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/47aba6c7-d437-4052-94d1-1b612d7a9437/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                3.1898861   3.0902846   3.2894876
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                3.3121723   3.2259182   3.3984264
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                3.4007659   3.3184904   3.4830414
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                4.1323600   3.9720233   4.2926968
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                3.9452396   3.8139962   4.0764831
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                4.1359211   4.0133520   4.2584902
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                3.2791709   3.1769611   3.3813807
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                3.4953518   3.3674799   3.6232238
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                3.4725920   3.3420927   3.6030913
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                3.7160473   3.6122670   3.8198276
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                3.5327816   3.4253030   3.6402601
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                3.6376028   3.5286874   3.7465183
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                3.5240122   3.4342628   3.6137616
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                3.4571716   3.3415161   3.5728270
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                3.6766817   3.5703011   3.7830624
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                3.4566852   3.3390110   3.5743593
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                3.4958067   3.3867410   3.6048724
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                3.6747868   3.5618672   3.7877065
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                3.4068830   3.2494197   3.5643462
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                3.4980776   3.3899930   3.6061621
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                3.8121679   3.4636887   4.1606471
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                3.6840902   3.2748424   4.0933380
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                3.1885533   2.7580995   3.6190071
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                3.6515570   3.3951257   3.9079882
0-3 months     ki1000108-IRC              INDIA                          Low                  NA                3.4391533   3.2896975   3.5886090
0-3 months     ki1000108-IRC              INDIA                          Medium               NA                3.2536907   3.0896748   3.4177066
0-3 months     ki1000108-IRC              INDIA                          High                 NA                3.7053431   3.5467384   3.8639478
0-3 months     ki1000109-EE               PAKISTAN                       Low                  NA                2.6330356   2.5426634   2.7234078
0-3 months     ki1000109-EE               PAKISTAN                       Medium               NA                2.7255106   2.4939425   2.9570788
0-3 months     ki1000109-EE               PAKISTAN                       High                 NA                3.0190395   2.5867116   3.4513674
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                3.5364916   3.5122936   3.5606896
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                3.6233967   3.5946119   3.6521815
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                3.7889598   3.7374195   3.8405001
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                3.2283298   3.1561120   3.3005476
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                3.2090855   3.1297769   3.2883940
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                3.2453591   3.1601013   3.3306169
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                3.4447155   3.3964032   3.4930278
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                3.4624383   3.4135840   3.5112926
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                3.5016284   3.4531430   3.5501139
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                3.3819728   3.3299654   3.4339801
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                3.3431612   3.2915392   3.3947832
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                3.3678685   3.3197599   3.4159770
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.7902280   2.6688477   2.9116082
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.8523980   2.7440057   2.9607902
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.8896022   2.8058572   2.9733472
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                3.4075933   3.3680362   3.4471505
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                3.3532545   3.3166995   3.3898095
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                3.4201522   3.3941244   3.4461799
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                2.5726873   2.5215571   2.6238175
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                2.5935583   2.5438879   2.6432286
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                2.5875513   2.5426890   2.6324135
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                3.4297139   3.4039284   3.4554994
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                3.5546451   3.5341333   3.5751569
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                3.7052610   3.6741960   3.7363260
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                3.6912996   3.6752864   3.7073128
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                3.7192412   3.7045997   3.7338827
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                3.7771922   3.7630016   3.7913828
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                3.6376726   3.5912438   3.6841013
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                3.7543032   3.5117109   3.9968956
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                3.7837066   3.4821070   4.0853063
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.8430888   1.7709799   1.9151976
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.7007984   1.6435061   1.7580907
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.8894347   1.8221849   1.9566845
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                2.0708713   1.9350500   2.2066926
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                2.0930639   1.9769715   2.2091563
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                2.0054827   1.8807082   2.1302572
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.7527824   1.6670396   1.8385252
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.7122469   1.6036328   1.8208611
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.4900509   1.3949254   1.5851763
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.9260926   1.8520590   2.0001261
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.9965031   1.9047597   2.0882466
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.9705208   1.8766330   2.0644086
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                1.9394992   1.8670141   2.0119843
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                2.0191248   1.9356669   2.1025827
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                1.8502596   1.7698169   1.9307022
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.5851124   1.4791451   1.6910796
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                1.1968793   1.0888544   1.3049042
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.2477053   1.1356838   1.3597268
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.9220764   1.7744438   2.0697089
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.8309601   1.7438980   1.9180223
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.4175914   1.0392274   1.7959554
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                1.4973379   1.3727222   1.6219536
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                1.7204025   1.5502895   1.8905155
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                1.8046945   1.6735862   1.9358028
3-6 months     ki1000108-IRC              INDIA                          Low                  NA                1.7827319   1.7016421   1.8638217
3-6 months     ki1000108-IRC              INDIA                          Medium               NA                1.8894085   1.8005629   1.9782542
3-6 months     ki1000108-IRC              INDIA                          High                 NA                1.7029523   1.6122409   1.7936637
3-6 months     ki1000109-EE               PAKISTAN                       Low                  NA                1.9968364   1.9302099   2.0634629
3-6 months     ki1000109-EE               PAKISTAN                       Medium               NA                2.1842863   2.0159806   2.3525919
3-6 months     ki1000109-EE               PAKISTAN                       High                 NA                2.1370277   2.0060198   2.2680357
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.9344602   1.8827311   1.9861892
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.8855825   1.8341961   1.9369688
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                2.0864512   2.0455338   2.1273687
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                1.8603984   1.7939693   1.9268275
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                1.9061227   1.8363856   1.9758598
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                2.0907723   2.0210929   2.1604517
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                2.0109568   1.9702920   2.0516215
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.9959892   1.9535571   2.0384214
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.9955267   1.9531736   2.0378797
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.9713877   1.9308447   2.0119307
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.9261597   1.8809989   1.9713205
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.9882159   1.9477671   2.0286647
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.8945457   1.7761438   2.0129476
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.7908706   1.7500090   1.8317322
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.7992473   1.7336932   1.8648014
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.7042269   1.6596365   1.7488174
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.6974093   1.6342207   1.7605979
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.7663900   1.7156444   1.8171355
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.0647363   2.0196907   2.1097819
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.1114503   2.0691164   2.1537842
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.1172388   2.0682173   2.1662604
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.9409929   1.9039995   1.9779863
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.9279704   1.8934391   1.9625018
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.9963585   1.9715442   2.0211727
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.7088861   1.6758626   1.7419096
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.6950149   1.6564105   1.7336193
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                1.5850925   1.5523316   1.6178534
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.7622586   1.7419620   1.7825552
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.8830997   1.8656301   1.9005692
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                1.9286968   1.9020446   1.9553490
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.9137144   1.8983176   1.9291112
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.9120851   1.8958482   1.9283221
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.9245194   1.9077983   1.9412405
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.9102745   1.8681215   1.9524276
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.7340568   1.4926864   1.9754273
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                2.0749621   1.8709908   2.2789334
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.0643462   1.0313696   1.0973229
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.1174098   1.0807379   1.1540818
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.1072304   1.0680423   1.1464184
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                1.2788358   1.2025036   1.3551680
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                1.4115372   1.3493517   1.4737228
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.4520022   1.3813270   1.5226774
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.9662058   0.9162249   1.0161867
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                1.0016352   0.9508404   1.0524301
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.9474941   0.8968437   0.9981445
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.2912352   1.2536413   1.3288291
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.2832357   1.2498803   1.3165912
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                1.2978506   1.2523637   1.3433375
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                1.2267608   1.1780430   1.2754787
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                1.2138775   1.1698501   1.2579049
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                1.2634058   1.2118514   1.3149602
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.0899055   1.0454398   1.1343712
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.9313040   0.8863803   0.9762278
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.0179674   0.9747726   1.0611622
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9998607   0.9311254   1.0685959
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9898692   0.9400160   1.0397223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2297753   0.9245858   1.5349649
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                1.0961689   1.0264034   1.1659344
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                1.0155426   0.9437075   1.0873776
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                1.0097605   0.9431967   1.0763243
6-12 months    ki1000108-IRC              INDIA                          Low                  NA                1.2219268   1.1736843   1.2701693
6-12 months    ki1000108-IRC              INDIA                          Medium               NA                1.2626595   1.2209291   1.3043898
6-12 months    ki1000108-IRC              INDIA                          High                 NA                1.3039149   1.2518962   1.3559335
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.0419488   1.0175551   1.0663426
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.1425772   1.1229048   1.1622497
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.1137937   1.0986417   1.1289456
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.9926647   0.9130109   1.0723185
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                1.3298351   1.0721248   1.5875454
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.9262552   0.8347309   1.0177795
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                1.1340429   1.1032292   1.1648566
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                1.1790459   1.1478989   1.2101930
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                1.2395199   1.2031466   1.2758932
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.1101827   1.0860310   1.1343344
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.1564075   1.1322100   1.1806050
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.2356785   1.2133691   1.2579879
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.2092409   1.1882940   1.2301878
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.2347419   1.2138740   1.2556098
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.2484265   1.2261641   1.2706888
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1931332   1.1308420   1.2554244
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.1798526   1.1555908   1.2041144
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2595162   1.2228892   1.2961432
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                1.1267180   1.0745455   1.1788904
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                1.1499478   1.0911397   1.2087558
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                1.1870221   1.1418316   1.2322126
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.1599578   1.1359962   1.1839194
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.1228451   1.0900408   1.1556494
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.1039486   1.0751357   1.1327614
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                1.4781571   1.4339146   1.5223996
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                1.4655026   1.4289828   1.5020225
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                1.4761841   1.4475349   1.5048334
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.1508027   1.1287649   1.1728405
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.1851590   1.1659701   1.2043479
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.2156280   1.2027047   1.2285513
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.0176519   0.9974193   1.0378845
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.0333773   1.0137121   1.0530425
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.9300225   0.9126845   0.9473605
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.9885650   0.9751454   1.0019847
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                1.1076824   1.0961156   1.1192492
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                1.1492916   1.1326373   1.1659460
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                1.0409369   1.0231517   1.0587220
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                1.0535164   1.0351558   1.0718771
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                1.0919539   1.0755914   1.1083164
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                1.3386451   1.3035924   1.3736979
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                1.2843823   1.2506316   1.3181330
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                1.2820439   1.2505508   1.3135369
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.0789946   1.0702007   1.0877885
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.1054164   1.0953792   1.1154536
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.1167710   1.1069429   1.1265992
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.2018805   1.1849564   1.2188046
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.1876965   1.1103577   1.2650353
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.2596261   1.2077693   1.3114830
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.8383262   0.8172724   0.8593800
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8551524   0.8282121   0.8820926
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.8343550   0.8086770   0.8600330
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.9539876   0.8961765   1.0117987
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.9671073   0.9165249   1.0176897
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                1.0119370   0.9607645   1.0631096
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8795240   0.8538275   0.9052205
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8597307   0.8357730   0.8836885
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.9280761   0.8967051   0.9594470
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8475304   0.8233850   0.8716758
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.8720270   0.8493315   0.8947225
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.9113229   0.8843080   0.9383379
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.7877811   0.7615100   0.8140522
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.7855789   0.7584020   0.8127558
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8302036   0.7988420   0.8615652
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8489091   0.8225561   0.8752620
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.7845778   0.7605363   0.8086194
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.8585785   0.8232498   0.8939072
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6964517   0.6514760   0.7414273
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.8002422   0.7708449   0.8296394
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7631797   0.6387976   0.8875617
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.7242918   0.6830334   0.7655501
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7726055   0.7309541   0.8142568
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7638174   0.7261554   0.8014794
12-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.8587699   0.8314124   0.8861275
12-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.8682120   0.8355181   0.9009058
12-24 months   ki1000108-IRC              INDIA                          High                 NA                0.8964686   0.8668758   0.9260615
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7187430   0.7003986   0.7370874
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7134638   0.6939880   0.7329397
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.7603754   0.7415847   0.7791660
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8218184   0.8047930   0.8388439
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8532282   0.8352665   0.8711899
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8873522   0.8712430   0.9034613
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8111650   0.7941211   0.8282088
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8489837   0.8315087   0.8664586
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8928790   0.8771566   0.9086014
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.8291852   0.8119901   0.8463803
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.8226719   0.7995096   0.8458343
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.8811793   0.8508838   0.9114748
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8423941   0.7988057   0.8859824
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8608751   0.8028632   0.9188869
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8622332   0.8194138   0.9050525
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7265471   0.6901807   0.7629135
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6814362   0.6442563   0.7186161
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7331904   0.7004111   0.7659698
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7553361   0.7427148   0.7679573
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.8008659   0.7871837   0.8145482
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7587158   0.7456504   0.7717811
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7589628   0.7507616   0.7671640
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.8241621   0.8176882   0.8306360
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.9310951   0.9214721   0.9407182
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6657859   0.6552989   0.6762730
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6846427   0.6742146   0.6950708
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7400829   0.7304619   0.7497039
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8547741   0.8322567   0.8772914
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.8245227   0.8025036   0.8465417
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.8365075   0.8178513   0.8551637
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.7897077   0.7832110   0.7962043
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.7905488   0.7833258   0.7977717
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.8053132   0.7979211   0.8127053
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.8474395   0.8397695   0.8551095
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.8685743   0.8388998   0.8982487
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.8427622   0.8057258   0.8797986


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.1222861   -0.0120989    0.2566712
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.2108798    0.0783731    0.3433864
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.1871204   -0.3928249    0.0185841
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0035611   -0.1970776    0.2041998
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.2161809    0.0571804    0.3751814
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.1934211    0.0302679    0.3565742
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.1832657   -0.3259966   -0.0405348
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0784444   -0.2218280    0.0649392
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0668406   -0.2144108    0.0807295
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.1526695    0.0118795    0.2934596
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0391215   -0.1191983    0.1974413
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.2181016    0.0564538    0.3797495
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0911946   -0.0997948    0.2821840
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.4052849    0.0228815    0.7876884
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.4955369   -1.0827636    0.0916898
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0325332   -0.5021270    0.4370605
0-3 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Medium               Low               -0.1854626   -0.3961257    0.0252005
0-3 months     ki1000108-IRC              INDIA                          High                 Low                0.2661898    0.0596959    0.4726836
0-3 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.0924750   -0.1559887    0.3409388
0-3 months     ki1000109-EE               PAKISTAN                       High                 Low                0.3860039   -0.0556398    0.8276476
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0869051    0.0527026    0.1211076
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.2524681    0.1989267    0.3060096
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0192443   -0.1266507    0.0881620
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0170293   -0.0945740    0.1286327
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0177228   -0.0445549    0.0800006
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0569130   -0.0052784    0.1191044
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0388116   -0.1122417    0.0346185
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               -0.0141043   -0.0852171    0.0570085
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0621700    0.0113933    0.1129466
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0993742    0.0298395    0.1689089
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0543389   -0.1077476   -0.0009302
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0125588   -0.0342309    0.0593486
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0208709   -0.0426097    0.0843515
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0148639   -0.0463400    0.0760679
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.1249312    0.0930079    0.1568545
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.2755471    0.2358584    0.3152359
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0279416    0.0074962    0.0483870
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0858926    0.0655161    0.1062691
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.1166306   -0.1307645    0.3640258
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.1460341   -0.1579353    0.4500034
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.1422904   -0.2353759   -0.0492048
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0463459   -0.0527338    0.1454257
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low                0.0221925   -0.1566552    0.2010402
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low               -0.0653886   -0.2492528    0.1184755
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0405355   -0.1808516    0.0997807
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.2627315   -0.3921466   -0.1333165
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0704105   -0.0474900    0.1883111
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0444282   -0.0751693    0.1640257
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0796256   -0.0162216    0.1754729
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low               -0.0892396   -0.1817611    0.0032819
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.3882331   -0.5510259   -0.2254402
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               -0.3374071   -0.5008507   -0.1739635
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0911162   -0.2625082    0.0802757
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.5044849   -0.9106311   -0.0983388
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.2230645    0.0125256    0.4336035
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.3073566    0.1269721    0.4877412
3-6 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Medium               Low                0.1066767   -0.0037293    0.2170827
3-6 months     ki1000108-IRC              INDIA                          High                 Low               -0.0797795   -0.1922890    0.0327299
3-6 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.1874499    0.0072311    0.3676686
3-6 months     ki1000109-EE               PAKISTAN                       High                 Low                0.1401914   -0.0059867    0.2863694
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               -0.0488777   -0.1166304    0.0188750
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.1519911    0.0876449    0.2163373
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0457243   -0.0508576    0.1423062
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.2303739    0.1336709    0.3270769
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               -0.0149676   -0.0674870    0.0375519
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low               -0.0154301   -0.0681629    0.0373027
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0452280   -0.1009292    0.0104732
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0168282   -0.0355038    0.0691602
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.1036751   -0.2277900    0.0204399
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0952984   -0.2295075    0.0389107
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0068176   -0.0841534    0.0705181
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0621630   -0.0042447    0.1285708
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0467140    0.0114645    0.0819634
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0525025    0.0020433    0.1029617
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0130225   -0.0631449    0.0371000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0553656    0.0113858    0.0993453
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0138712   -0.0604513    0.0327089
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.1237936   -0.1667288   -0.0808585
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.1208411    0.0943593    0.1473229
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.1664382    0.1330997    0.1997767
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               -0.0016293   -0.0231928    0.0199343
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0108050   -0.0111720    0.0327820
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.1762177   -0.4212765    0.0688411
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.1646876   -0.0440661    0.3734412
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0530636    0.0036371    0.1024901
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0428841   -0.0084152    0.0941835
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               Low                0.1327015    0.0342493    0.2311537
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.1731664    0.0691363    0.2771966
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0354294   -0.0367281    0.1075870
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0187117   -0.0906259    0.0532025
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0079995   -0.0587849    0.0427860
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0066154   -0.0523909    0.0656217
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0128834   -0.0775396    0.0517729
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0366450   -0.0331628    0.1064528
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.1586015   -0.2144968   -0.1027062
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               -0.0719381   -0.1266648   -0.0172113
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0099915   -0.0949024    0.0749195
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.2299147   -0.0829194    0.5427488
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.0806264   -0.1798791    0.0186263
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0864085   -0.1822829    0.0094660
6-12 months    ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Medium               Low                0.0407327   -0.0229163    0.1043816
6-12 months    ki1000108-IRC              INDIA                          High                 Low                0.0819881    0.0111493    0.1528269
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.1006284    0.0660881    0.1351687
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0718448    0.0419361    0.1017535
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low                0.3371704    0.0708213    0.6035194
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               -0.0664095   -0.1832804    0.0504613
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0450031    0.0012451    0.0887610
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.1054770    0.0578878    0.1530663
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0462248    0.0119969    0.0804527
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.1254958    0.0926221    0.1583696
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0255010   -0.0021238    0.0531258
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0391856    0.0110764    0.0672947
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0132806   -0.0791294    0.0525683
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0663830   -0.0052496    0.1380156
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low                0.0232298   -0.0552769    0.1017365
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low                0.0603041   -0.0089911    0.1295994
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0371127   -0.0777329    0.0035075
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               -0.0560092   -0.0934106   -0.0186078
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0126545   -0.0385911    0.0132821
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0019730   -0.0297313    0.0257854
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0343563    0.0053398    0.0633729
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0648253    0.0394726    0.0901780
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0157254   -0.0104787    0.0419295
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0876294   -0.1127453   -0.0625135
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.1191174    0.1015822    0.1366526
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.1607266    0.1394502    0.1820030
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0125796   -0.0124508    0.0376099
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0510171    0.0273038    0.0747303
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0542628   -0.0995484   -0.0089773
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0566013   -0.1011724   -0.0120302
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0264218    0.0137774    0.0390663
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0377765    0.0251375    0.0504154
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0141840   -0.0923190    0.0639510
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0577456    0.0046531    0.1108381
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0168262   -0.0166465    0.0502988
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               -0.0039712   -0.0364939    0.0285515
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               Low                0.0131197   -0.0636953    0.0899347
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0579495   -0.0192567    0.1351556
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0197933   -0.0526528    0.0130662
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0485520    0.0099874    0.0871167
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0244966   -0.0086562    0.0576495
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0637926    0.0275743    0.1000108
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0022023   -0.0398738    0.0354692
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low                0.0424225    0.0011067    0.0837383
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.0643313   -0.0995711   -0.0290915
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0096694   -0.0341033    0.0534421
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.1037905    0.0500596    0.1575214
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0667280   -0.0655357    0.1989918
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.0483137   -0.0101159    0.1067433
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.0395256   -0.0158988    0.0949500
12-24 months   ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Medium               Low                0.0094420   -0.0333484    0.0522324
12-24 months   ki1000108-IRC              INDIA                          High                 Low                0.0376987   -0.0027107    0.0781081
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0052792   -0.0309189    0.0203605
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0416324    0.0163694    0.0668954
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0314098    0.0066559    0.0561636
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0655338    0.0420986    0.0889689
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0378187    0.0133753    0.0622620
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0817140    0.0585045    0.1049236
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0065133   -0.0349836    0.0219571
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0519941    0.0174516    0.0865366
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0184810   -0.0286026    0.0655646
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0198391   -0.0135694    0.0532476
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0451109   -0.0917305    0.0015087
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0066433   -0.0369622    0.0502488
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0455299    0.0281647    0.0628950
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0033797   -0.0136574    0.0204168
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0651993    0.0548769    0.0755216
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.1721323    0.1595461    0.1847185
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0188568    0.0044949    0.0332187
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0742969    0.0602876    0.0883062
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0302514   -0.0563566   -0.0041462
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0182666   -0.0438239    0.0072908
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0008411   -0.0085336    0.0102158
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0156056    0.0061268    0.0250844
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.0211348   -0.0094941    0.0517636
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0046773   -0.0422003    0.0328457
