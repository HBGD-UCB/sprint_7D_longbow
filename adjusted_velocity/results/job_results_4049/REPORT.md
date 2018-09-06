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
![](/tmp/fa0f98e3-23a1-4df4-b203-fd625f9528c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fa0f98e3-23a1-4df4-b203-fd625f9528c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1230999   -0.1762623   -0.0699375
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.1159956   -0.1639750   -0.0680162
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0829631   -0.1249613   -0.0409649
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.1781014    0.1043690    0.2518339
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.1408870    0.0794893    0.2022846
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.1981085    0.1407442    0.2554729
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0844276   -0.1440858   -0.0247695
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                 0.0175275   -0.0577815    0.0928364
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0521905   -0.0172227    0.1216036
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0417057   -0.0085236    0.0919349
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0517341   -0.1025854   -0.0008829
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0239549   -0.0320182    0.0799279
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0408226   -0.0823026    0.0006574
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0861555   -0.1394726   -0.0328383
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                 0.0491928   -0.0017036    0.1000892
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1781109   -0.2348503   -0.1213716
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.3220048   -0.3777971   -0.2662124
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1357710   -0.1928613   -0.0786808
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0785179   -0.1626124    0.0055766
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0424274   -0.0952004    0.0103456
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1002343   -0.0852201    0.2856887
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0058156   -0.2182139    0.2298451
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.2231236   -0.4651550    0.0189079
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0225130   -0.1528419    0.1078159
0-3 months     ki1000108-IRC              INDIA                          Low                  NA                -0.1184219   -0.1926225   -0.0442212
0-3 months     ki1000108-IRC              INDIA                          Medium               NA                -0.2119115   -0.2980577   -0.1257654
0-3 months     ki1000108-IRC              INDIA                          High                 NA                 0.0094673   -0.0707211    0.0896558
0-3 months     ki1000109-EE               PAKISTAN                       Low                  NA                -0.4059331   -0.4524632   -0.3594031
0-3 months     ki1000109-EE               PAKISTAN                       Medium               NA                -0.3741843   -0.4820346   -0.2663341
0-3 months     ki1000109-EE               PAKISTAN                       High                 NA                -0.2064947   -0.4135362    0.0005467
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0297406   -0.0470303   -0.0124509
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                 0.0102761   -0.0025828    0.0231350
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0820503    0.0524620    0.1116387
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1515255   -0.1843255   -0.1187254
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.1650624   -0.2030180   -0.1271067
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1435583   -0.1858611   -0.1012555
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0958092   -0.1205146   -0.0711037
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0668805   -0.0924564   -0.0413047
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0314964   -0.0572310   -0.0057618
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0904595   -0.1138474   -0.0670716
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.1064777   -0.1303134   -0.0826419
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0866675   -0.1094964   -0.0638386
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                -0.4578746   -0.5219121   -0.3938371
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                -0.4302226   -0.4865859   -0.3738593
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.4092032   -0.4537026   -0.3647039
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1229630   -0.1425916   -0.1033345
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.1516719   -0.1697508   -0.1335929
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1191631   -0.1321242   -0.1062020
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.5480081   -0.5759220   -0.5200942
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.5518168   -0.5799708   -0.5236628
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.5429555   -0.5673798   -0.5185313
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.1278772   -0.1400474   -0.1157069
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0613783   -0.0712617   -0.0514948
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                 0.0066904   -0.0076603    0.0210411
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0540067    0.0464994    0.0615139
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                 0.0687005    0.0617567    0.0756443
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1000972    0.0935752    0.1066192
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0646632    0.0427000    0.0866265
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                 0.1471829    0.0172961    0.2770698
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1434617   -0.0034678    0.2903912
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0643339   -0.1035726   -0.0250951
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.1440900   -0.1763903   -0.1117897
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0569729   -0.0926142   -0.0213316
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0773888    0.0207589    0.1340186
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0672133    0.0198792    0.1145475
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0373142   -0.0148148    0.0894432
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0230321   -0.0567069    0.0106426
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0509576   -0.0945662   -0.0073489
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0938684   -0.1325552   -0.0551815
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0254572   -0.0570341    0.0061197
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.0125369   -0.0270376    0.0521114
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0050457   -0.0331925    0.0432838
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0132312   -0.0456636    0.0192011
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0266208   -0.0113406    0.0645823
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0634351   -0.1006447   -0.0262256
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0240485   -0.0806705    0.0325735
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.0511372   -0.0213763    0.1236506
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0005450   -0.0704975    0.0715875
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0236090   -0.0938127    0.0465947
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0711399   -0.1119357   -0.0303442
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.2687726   -0.4324097   -0.1051356
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.2119554   -0.2719902   -0.1519207
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.0984739   -0.1785234   -0.0184245
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0856278   -0.1475704   -0.0236851
3-6 months     ki1000108-IRC              INDIA                          Low                  NA                -0.1145739   -0.1521320   -0.0770157
3-6 months     ki1000108-IRC              INDIA                          Medium               NA                -0.0705585   -0.1113107   -0.0298063
3-6 months     ki1000108-IRC              INDIA                          High                 NA                -0.1690580   -0.2108307   -0.1272852
3-6 months     ki1000109-EE               PAKISTAN                       Low                  NA                 0.0572910    0.0263842    0.0881978
3-6 months     ki1000109-EE               PAKISTAN                       Medium               NA                 0.1411785    0.0687888    0.2135682
3-6 months     ki1000109-EE               PAKISTAN                       High                 NA                 0.1120192    0.0491962    0.1748423
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0196047   -0.0417356    0.0025263
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0426781   -0.0658491   -0.0195072
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0423901    0.0235700    0.0612102
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0432066   -0.0717940   -0.0146192
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.0195134   -0.0488958    0.0098689
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0499479    0.0212066    0.0786892
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0144435   -0.0340345    0.0051475
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0158469   -0.0362177    0.0045240
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0188752   -0.0393240    0.0015737
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0247991    0.0055135    0.0440847
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0000624   -0.0207245    0.0205997
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0278097    0.0092204    0.0463990
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0499465   -0.1019134    0.0020205
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0869285   -0.1057581   -0.0680989
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0834610   -0.1126658   -0.0542561
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1660862   -0.1879159   -0.1442565
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.1829630   -0.2151363   -0.1507896
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1460154   -0.1736462   -0.1183846
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0365963    0.0157085    0.0574842
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0559724    0.0360180    0.0759268
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                 0.0568641    0.0339916    0.0797366
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0198416   -0.0375036   -0.0021797
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0227600   -0.0390815   -0.0064385
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0081616   -0.0034337    0.0197569
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1214405   -0.1369037   -0.1059773
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.1320243   -0.1497915   -0.1142570
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1930346   -0.2082185   -0.1778508
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.1024910   -0.1119810   -0.0930010
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0525836   -0.0606235   -0.0445437
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0418199   -0.0542744   -0.0293655
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0070811   -0.0141181   -0.0000440
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0070364   -0.0143039    0.0002311
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0019115   -0.0097129    0.0058899
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0039271   -0.0233389    0.0154847
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0798247   -0.1821862    0.0225369
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0675955   -0.0246308    0.1598217
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0554848   -0.0690880   -0.0418816
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0301862   -0.0449161   -0.0154563
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0533128   -0.0686340   -0.0379915
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0497657   -0.0802010   -0.0193303
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0108917   -0.0145177    0.0363011
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0265061   -0.0017226    0.0547348
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0821936   -0.0997165   -0.0646707
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0753740   -0.0930513   -0.0576968
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0790022   -0.0959871   -0.0620174
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0319172   -0.0488715   -0.0149629
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0436189   -0.0584438   -0.0287940
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0491120   -0.0714049   -0.0268191
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0467434   -0.0685883   -0.0248984
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0483799   -0.0690337   -0.0277261
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0337271   -0.0574419   -0.0100124
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0946538   -0.1135800   -0.0757276
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.1668438   -0.1853880   -0.1482996
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1306396   -0.1490919   -0.1121873
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1272820   -0.1560951   -0.0984689
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1297143   -0.1508642   -0.1085644
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0344203   -0.1574126    0.0885720
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0768093   -0.1059250   -0.0476935
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.1040965   -0.1344780   -0.0737150
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1121420   -0.1396201   -0.0846638
6-12 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0337052   -0.0551718   -0.0122385
6-12 months    ki1000108-IRC              INDIA                          Medium               NA                -0.0146023   -0.0322495    0.0030448
6-12 months    ki1000108-IRC              INDIA                          High                 NA                 0.0007948   -0.0214798    0.0230694
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1073409   -0.1179140   -0.0967677
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0697101   -0.0773054   -0.0621149
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0876213   -0.0952308   -0.0800118
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.1166994   -0.1495569   -0.0838420
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                 0.0005328   -0.1120785    0.1131441
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1505226   -0.1888091   -0.1122362
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0648768   -0.0775575   -0.0521961
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.0492930   -0.0624943   -0.0360916
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0311254   -0.0457478   -0.0165031
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0814407   -0.0912759   -0.0716055
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0633650   -0.0730410   -0.0536890
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0348399   -0.0438802   -0.0257996
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0327621   -0.0427890   -0.0227352
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0192231   -0.0290164   -0.0094297
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0196964   -0.0297324   -0.0096605
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0639662   -0.1003790   -0.0275533
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0670859   -0.0774666   -0.0567051
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0344927   -0.0509590   -0.0180264
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0768500   -0.0923662   -0.0613338
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -0.0718454   -0.0915164   -0.0521744
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0549743   -0.0701453   -0.0398032
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0631456   -0.0731980   -0.0530932
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0822785   -0.0961523   -0.0684047
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1012741   -0.1138382   -0.0887100
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0468231    0.0278147    0.0658315
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0392984    0.0236131    0.0549836
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0415336    0.0289750    0.0540922
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0697347   -0.0791194   -0.0603501
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0555916   -0.0637072   -0.0474759
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0444088   -0.0499467   -0.0388709
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1083606   -0.1167359   -0.0999852
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.1047186   -0.1128863   -0.0965509
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1437977   -0.1512315   -0.1363638
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.1272820   -0.1328429   -0.1217211
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.0871486   -0.0920473   -0.0822499
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0761975   -0.0833485   -0.0690466
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1109865   -0.1184307   -0.1035422
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.1073413   -0.1149645   -0.0997182
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0954503   -0.1022935   -0.0886072
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0205545    0.0060690    0.0350401
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0065000   -0.0201462    0.0071461
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0105265   -0.0235968    0.0025438
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0851335   -0.0888924   -0.0813746
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0751300   -0.0793544   -0.0709055
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0723992   -0.0765777   -0.0682206
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0391117   -0.0462139   -0.0320096
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0409677   -0.0755847   -0.0063506
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0134639   -0.0355961    0.0086683
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0007137   -0.0074103    0.0059830
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                 0.0112282    0.0023417    0.0201147
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0106077   -0.0182272   -0.0029882
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0112644   -0.0050571    0.0275858
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                -0.0057608   -0.0206165    0.0090949
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0185781    0.0021634    0.0349928
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0126219   -0.0190996   -0.0061442
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0153404   -0.0215650   -0.0091159
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0043929   -0.0035515    0.0123373
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0368527   -0.0440322   -0.0296733
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0299921   -0.0366316   -0.0233526
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0232526   -0.0300052   -0.0165001
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0130224   -0.0240513   -0.0019934
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0117414   -0.0234061   -0.0000766
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0015728   -0.0151793    0.0120338
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0117885   -0.0205191   -0.0030579
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0169345   -0.0253478   -0.0085213
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0062388   -0.0190987    0.0066212
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0643630   -0.0783901   -0.0503359
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0295814   -0.0398264   -0.0193363
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0466314   -0.0933608    0.0000981
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0397453   -0.0557075   -0.0237830
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.0203484   -0.0353715   -0.0053253
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0316167   -0.0454686   -0.0177647
12-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0143053   -0.0241183   -0.0044924
12-24 months   ki1000108-IRC              INDIA                          Medium               NA                -0.0127433   -0.0250414   -0.0004451
12-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0068385   -0.0177723    0.0040952
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0460841   -0.0525631   -0.0396051
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.0542658   -0.0608247   -0.0477068
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0485747   -0.0551208   -0.0420285
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0143471   -0.0190499   -0.0096444
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0076979   -0.0122668   -0.0031290
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0035772   -0.0078029    0.0006485
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0262789   -0.0314634   -0.0210944
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0114087   -0.0174726   -0.0053448
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0021397   -0.0074483    0.0031688
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0166853   -0.0225169   -0.0108538
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0222923   -0.0298047   -0.0147799
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0138814   -0.0234343   -0.0043284
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0479466   -0.0622897   -0.0336034
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0423472   -0.0615647   -0.0231297
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0439935   -0.0582358   -0.0297511
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0489530   -0.0607047   -0.0372013
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0625966   -0.0745481   -0.0506451
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0474147   -0.0587402   -0.0360893
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0375168   -0.0418494   -0.0331841
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.0242388   -0.0287475   -0.0197301
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0323348   -0.0365640   -0.0281056
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0459036   -0.0486566   -0.0431506
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.0364339   -0.0386142   -0.0342536
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0122817   -0.0156330   -0.0089305
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0693492   -0.0730610   -0.0656373
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.0641844   -0.0677797   -0.0605890
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0491908   -0.0525701   -0.0458115
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0029800   -0.0115801    0.0056201
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0267108   -0.0360856   -0.0173360
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0194610   -0.0269836   -0.0119383
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0184269   -0.0207109   -0.0161430
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0206929   -0.0233172   -0.0180687
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0185635   -0.0211859   -0.0159410
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0151923   -0.0179048   -0.0124797
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0110354   -0.0222854    0.0002146
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0183578   -0.0280685   -0.0086471


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0071043   -0.0622604    0.0764690
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0401368   -0.0254036    0.1056772
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.0372145   -0.1234314    0.0490025
0-3 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0200071   -0.0648669    0.1048811
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.1019551    0.0061955    0.1977147
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.1366181    0.0455776    0.2276586
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0934398   -0.1635924   -0.0232872
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0177508   -0.0912663    0.0557646
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0453329   -0.1126488    0.0219831
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0900154    0.0243780    0.1556528
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.1438938   -0.2232728   -0.0645148
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0423399   -0.0373123    0.1219922
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0360905   -0.0631913    0.1353723
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.1787522   -0.0248779    0.3823824
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.2289391   -0.5587397    0.1008614
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0283285   -0.2875096    0.2308525
0-3 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Medium               Low               -0.0934897   -0.2015222    0.0145429
0-3 months     ki1000108-IRC              INDIA                          High                 Low                0.1278892    0.0245130    0.2312653
0-3 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.0317488   -0.0857033    0.1492010
0-3 months     ki1000109-EE               PAKISTAN                       High                 Low                0.1994384   -0.0127637    0.4116405
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0400167    0.0208298    0.0592037
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.1117909    0.0762083    0.1473736
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0135369   -0.0636926    0.0366189
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0079672   -0.0454680    0.0614024
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0289286   -0.0066650    0.0645223
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0643128    0.0286550    0.0999705
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0160181   -0.0494754    0.0174391
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0037920   -0.0289879    0.0365719
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0276520    0.0003922    0.0549117
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0486714    0.0121635    0.0851792
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0287088   -0.0551419   -0.0022758
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0038000   -0.0194060    0.0270059
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0038087   -0.0434212    0.0358039
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0050526   -0.0319712    0.0420764
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0664989    0.0516678    0.0813301
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.1345676    0.1163504    0.1527848
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0146938    0.0052236    0.0241640
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0460905    0.0367230    0.0554580
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.0825197   -0.0494418    0.2144812
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0787985   -0.0691657    0.2267628
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0797562   -0.1311209   -0.0283914
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0073609   -0.0461177    0.0608396
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.0101754   -0.0763314    0.0559806
3-6 months     ki0047075b-MAL-ED          BRAZIL                         High                 Low               -0.0400745   -0.1087544    0.0286053
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0279254   -0.0762685    0.0204176
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0708362   -0.1166465   -0.0250260
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0379941   -0.0081975    0.0841856
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0305029   -0.0150383    0.0760440
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0398521   -0.0042206    0.0839247
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low               -0.0502039   -0.0932862   -0.0071216
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0751857   -0.0168157    0.1671871
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0245935   -0.0662530    0.1154400
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0475309   -0.1287273    0.0336654
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.2451636   -0.4232244   -0.0671028
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.1134815    0.0134938    0.2134692
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.1263277    0.0402170    0.2124383
3-6 months     ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Medium               Low                0.0440154   -0.0064787    0.0945094
3-6 months     ki1000108-IRC              INDIA                          High                 Low               -0.0544841   -0.1064156   -0.0025526
3-6 months     ki1000109-EE               PAKISTAN                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Medium               Low                0.0838874    0.0056758    0.1620991
3-6 months     ki1000109-EE               PAKISTAN                       High                 Low                0.0547282   -0.0144534    0.1239099
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               -0.0230735   -0.0528347    0.0066878
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0619948    0.0342282    0.0897614
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0236932   -0.0156526    0.0630390
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0931545    0.0542619    0.1320471
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               -0.0014034   -0.0267063    0.0238994
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low               -0.0044317   -0.0299110    0.0210476
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0248615   -0.0506327    0.0009097
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0030106   -0.0213167    0.0273378
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0369820   -0.0916006    0.0176366
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0335145   -0.0924049    0.0253760
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0168768   -0.0557306    0.0219770
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0200707   -0.0150760    0.0552175
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0193761    0.0027195    0.0360326
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0202677   -0.0033422    0.0438777
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0029184   -0.0267100    0.0208733
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0280033    0.0071826    0.0488240
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0105837   -0.0319846    0.0108171
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0715941   -0.0914575   -0.0517308
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0499074    0.0376605    0.0621542
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0606710    0.0451368    0.0762053
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0000447   -0.0096631    0.0097524
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0051696   -0.0048503    0.0151894
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0758976   -0.1799746    0.0281794
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0715226   -0.0229760    0.1660212
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0252986    0.0050324    0.0455648
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0021720   -0.0185401    0.0228841
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Medium               Low                0.0606574    0.0211315    0.1001832
6-12 months    ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0762717    0.0348946    0.1176489
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0068196   -0.0151999    0.0288390
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low                0.0031914   -0.0178174    0.0242001
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0117017   -0.0341461    0.0107426
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0171949   -0.0451414    0.0107516
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0016366   -0.0316306    0.0283574
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0130162   -0.0191008    0.0451332
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.0721900   -0.0956162   -0.0487638
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               -0.0359858   -0.0593649   -0.0126066
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0024323   -0.0381746    0.0333100
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0928617   -0.0334605    0.2191839
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               -0.0272872   -0.0667874    0.0122129
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               -0.0353327   -0.0721667    0.0015013
6-12 months    ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Medium               Low                0.0191028   -0.0085667    0.0467724
6-12 months    ki1000108-IRC              INDIA                          High                 Low                0.0345000    0.0036625    0.0653375
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0376307    0.0233549    0.0519065
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0197196    0.0053205    0.0341187
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low                0.1172322    0.0004563    0.2340081
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               -0.0338232   -0.0837669    0.0161205
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low                0.0155838   -0.0027164    0.0338840
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low                0.0337513    0.0144084    0.0530942
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0180757    0.0042815    0.0318698
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0466008    0.0332394    0.0599622
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0135391   -0.0004776    0.0275557
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0130657   -0.0011347    0.0272660
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0031197   -0.0406012    0.0343618
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0294735   -0.0102410    0.0691879
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low                0.0050046   -0.0176858    0.0276950
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low                0.0218757    0.0024801    0.0412714
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0191329   -0.0362727   -0.0019931
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               -0.0381285   -0.0542013   -0.0220557
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0075247   -0.0185390    0.0034895
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0052895   -0.0172183    0.0066393
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0141432    0.0018629    0.0264235
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0253260    0.0145484    0.0361035
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0036420   -0.0072155    0.0144994
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0354371   -0.0458843   -0.0249899
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.0401334    0.0328139    0.0474530
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.0510845    0.0420897    0.0600793
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0036451   -0.0067935    0.0140838
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0155361    0.0055989    0.0254733
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0270546   -0.0458404   -0.0082687
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0310810   -0.0494449   -0.0127171
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0100035    0.0046607    0.0153464
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0127343    0.0073597    0.0181090
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0018560   -0.0368335    0.0331216
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0256478    0.0030596    0.0482360
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0119419    0.0006650    0.0232188
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               -0.0098940   -0.0201622    0.0003741
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               Low               -0.0170252   -0.0389938    0.0049434
12-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 Low                0.0073137   -0.0158687    0.0304961
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0027185   -0.0101294    0.0046923
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0170148    0.0076059    0.0264237
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0068607   -0.0028870    0.0166084
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0136001    0.0037769    0.0234234
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low                0.0012810   -0.0146718    0.0172338
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low                0.0114496   -0.0059709    0.0288701
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.0051460   -0.0172677    0.0069757
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0055497   -0.0099705    0.0210700
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0347816    0.0174115    0.0521517
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0177317   -0.0310577    0.0665210
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low                0.0193969   -0.0025798    0.0413735
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low                0.0081286   -0.0130258    0.0292830
12-24 months   ki1000108-IRC              INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Medium               Low                0.0015621   -0.0141787    0.0173028
12-24 months   ki1000108-IRC              INDIA                          High                 Low                0.0074668   -0.0072096    0.0221431
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               -0.0081817   -0.0174424    0.0010790
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               -0.0024906   -0.0117650    0.0067839
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0066492    0.0007788    0.0125196
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0107699    0.0050469    0.0164930
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0148702    0.0068855    0.0228549
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0241392    0.0166999    0.0315784
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0056070   -0.0151005    0.0038865
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0028040   -0.0083779    0.0139858
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0055994   -0.0105351    0.0217339
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0039531   -0.0078855    0.0157917
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0136435   -0.0284359    0.0011488
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0015383   -0.0126853    0.0157620
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0132779    0.0074897    0.0190662
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0051820   -0.0004782    0.0108422
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0094697    0.0060092    0.0129301
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.0336218    0.0293169    0.0379268
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0051648    0.0001411    0.0101885
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0201584    0.0152211    0.0250957
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0237308   -0.0364595   -0.0110021
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0164810   -0.0279068   -0.0050552
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               -0.0022660   -0.0056568    0.0011247
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               -0.0001365   -0.0034721    0.0031990
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low                0.0041569   -0.0074198    0.0157336
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0031655   -0.0131017    0.0067707
