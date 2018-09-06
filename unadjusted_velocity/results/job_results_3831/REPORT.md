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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        feducyrs    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low             38     138
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          50     138
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High            50     138
0-3 months     ki0047075b-MAL-ED          INDIA                          Low             48     116
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium          32     116
0-3 months     ki0047075b-MAL-ED          INDIA                          High            36     116
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low             21      68
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium          22      68
0-3 months     ki0047075b-MAL-ED          NEPAL                          High            25      68
0-3 months     ki0047075b-MAL-ED          PERU                           Low             61     223
0-3 months     ki0047075b-MAL-ED          PERU                           Medium          55     223
0-3 months     ki0047075b-MAL-ED          PERU                           High           107     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low             29      82
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          22      82
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            31      82
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             51     186
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          17     186
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           118     186
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low            500    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         374    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High           291    1165
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low            216     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         202     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High           216     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            232     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         209     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           279     720
0-3 months     ki1119695-PROBIT           BELARUS                        Low           4850   12311
0-3 months     ki1119695-PROBIT           BELARUS                        Medium        5568   12311
0-3 months     ki1119695-PROBIT           BELARUS                        High          1893   12311
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1364    7627
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        5734    7627
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High           529    7627
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low            300     693
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium         258     693
0-3 months     ki1135781-COHORTS          GUATEMALA                      High           135     693
0-3 months     ki1135781-COHORTS          INDIA                          Low            430    1330
0-3 months     ki1135781-COHORTS          INDIA                          Medium         383    1330
0-3 months     ki1135781-COHORTS          INDIA                          High           517    1330
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low          16688   38648
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium       13172   38648
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High          8788   38648
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low           1516    2062
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         288    2062
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High           258    2062
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low             34     129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium          45     129
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High            50     129
3-6 months     ki0047075b-MAL-ED          INDIA                          Low             52     131
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium          37     131
3-6 months     ki0047075b-MAL-ED          INDIA                          High            42     131
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low             27      93
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium          28      93
3-6 months     ki0047075b-MAL-ED          NEPAL                          High            38      93
3-6 months     ki0047075b-MAL-ED          PERU                           Low             60     220
3-6 months     ki0047075b-MAL-ED          PERU                           Medium          55     220
3-6 months     ki0047075b-MAL-ED          PERU                           High           105     220
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      89
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      89
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High            32      89
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54     194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          17     194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           123     194
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low            470    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium         364    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High           287    1121
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low            199     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium         175     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High           200     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low            220     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium         204     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High           271     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            881    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         464    1655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           310    1655
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low            420     940
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium         286     940
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High           234     940
3-6 months     ki1119695-PROBIT           BELARUS                        Low           5034   12835
3-6 months     ki1119695-PROBIT           BELARUS                        Medium        5693   12835
3-6 months     ki1119695-PROBIT           BELARUS                        High          2108   12835
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low           1025    5711
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium        4295    5711
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High           391    5711
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low            334     761
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium         285     761
3-6 months     ki1135781-COHORTS          GUATEMALA                      High           142     761
3-6 months     ki1135781-COHORTS          INDIA                          Low            431    1343
3-6 months     ki1135781-COHORTS          INDIA                          Medium         384    1343
3-6 months     ki1135781-COHORTS          INDIA                          High           528    1343
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low           9546   24162
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium        8318   24162
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High          6298   24162
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low           1558    2134
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium         310    2134
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High           266    2134
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low             32     121
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          43     121
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High            46     121
6-12 months    ki0047075b-MAL-ED          INDIA                          Low             50     129
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium          37     129
6-12 months    ki0047075b-MAL-ED          INDIA                          High            42     129
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low             26      91
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium          26      91
6-12 months    ki0047075b-MAL-ED          NEPAL                          High            39      91
6-12 months    ki0047075b-MAL-ED          PERU                           Low             54     193
6-12 months    ki0047075b-MAL-ED          PERU                           Medium          49     193
6-12 months    ki0047075b-MAL-ED          PERU                           High            90     193
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             33      87
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          22      87
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            32      87
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             50     182
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          15     182
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           117     182
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low            470    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         370    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High           294    1134
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            116     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         127     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            89     332
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low            185     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         168     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High           192     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            206     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         206     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           264     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low            564    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         307    1078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           207    1078
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low            410     948
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium         310     948
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High           228     948
6-12 months    ki1119695-PROBIT           BELARUS                        Low           4923   12459
6-12 months    ki1119695-PROBIT           BELARUS                        Medium        5500   12459
6-12 months    ki1119695-PROBIT           BELARUS                        High          2036   12459
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low            799    4433
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3345    4433
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           289    4433
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low            360     816
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium         305     816
6-12 months    ki1135781-COHORTS          GUATEMALA                      High           151     816
6-12 months    ki1135781-COHORTS          INDIA                          Low            374    1164
6-12 months    ki1135781-COHORTS          INDIA                          Medium         330    1164
6-12 months    ki1135781-COHORTS          INDIA                          High           460    1164
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low            679    2296
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium         829    2296
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High           788    2296
6-12 months    ki1148112-LCNI-5           MALAWI                         Low            142     429
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium         158     429
6-12 months    ki1148112-LCNI-5           MALAWI                         High           129     429
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           7575   18893
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        6403   18893
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4915   18893
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           2518    3485
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         517    3485
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High           450    3485
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             33     114
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     114
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High            39     114
12-24 months   ki0047075b-MAL-ED          INDIA                          Low             51     131
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium          38     131
12-24 months   ki0047075b-MAL-ED          INDIA                          High            42     131
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low             26      89
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      89
12-24 months   ki0047075b-MAL-ED          NEPAL                          High            37      89
12-24 months   ki0047075b-MAL-ED          PERU                           Low             44     157
12-24 months   ki0047075b-MAL-ED          PERU                           Medium          42     157
12-24 months   ki0047075b-MAL-ED          PERU                           High            71     157
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             33      89
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      89
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      89
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             44     170
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          14     170
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           112     170
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            159     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         144     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High           155     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            134     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         156     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           205     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           2       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       2
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low            326     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         224     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High           184     734
12-24 months   ki1119695-PROBIT           BELARUS                        Low            987    2464
12-24 months   ki1119695-PROBIT           BELARUS                        Medium        1120    2464
12-24 months   ki1119695-PROBIT           BELARUS                        High           357    2464
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low             71     284
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         204     284
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             9     284
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low            378     827
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium         299     827
12-24 months   ki1135781-COHORTS          GUATEMALA                      High           150     827
12-24 months   ki1135781-COHORTS          INDIA                          Low            366    1126
12-24 months   ki1135781-COHORTS          INDIA                          Medium         317    1126
12-24 months   ki1135781-COHORTS          INDIA                          High           443    1126
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low            646    2136
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         764    2136
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High           726    2136
12-24 months   ki1148112-LCNI-5           MALAWI                         Low            105     306
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium         111     306
12-24 months   ki1148112-LCNI-5           MALAWI                         High            90     306
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3753    8961
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        3023    8961
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2185    8961
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           2896    4011
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         594    4011
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           521    4011


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8edf0654-5fc8-4813-93c6-a4737ce6a46d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8edf0654-5fc8-4813-93c6-a4737ce6a46d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                3.5579534   3.4103347   3.7055721
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                3.5634091   3.4153861   3.7114321
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                3.6873447   3.5650271   3.8096623
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                3.5325773   3.3733640   3.6917906
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                3.7106962   3.5317287   3.8896636
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                3.6291443   3.4750187   3.7832700
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                3.8497356   3.6388438   4.0606273
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                3.9276481   3.7072597   4.1480366
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                3.8132792   3.5814441   4.0451143
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                3.2925352   3.1774391   3.4076313
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                3.3708720   3.2322795   3.5094645
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                3.2944245   3.1824949   3.4063541
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                3.5775194   3.3309589   3.8240799
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                3.2871359   3.0012679   3.5730040
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                3.5458080   3.2931766   3.7984393
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                3.4798412   3.3080770   3.6516054
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                3.5158445   3.3363283   3.6953606
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                3.5171630   3.4092639   3.6250620
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                3.5111942   3.4770691   3.5453193
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                3.6366032   3.5908739   3.6823325
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                3.7144883   3.6485139   3.7804627
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                3.4268960   3.3599554   3.4938367
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                3.4579399   3.3949463   3.5209336
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                3.5615729   3.4901633   3.6329826
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                3.3298942   3.2550198   3.4047686
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                3.2846140   3.2191112   3.3501169
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                3.2940625   3.2355975   3.3525275
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.8032614   2.6739621   2.9325606
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.8525216   2.7435502   2.9614931
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.8746357   2.7611784   2.9880930
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                3.3503740   3.2994508   3.4012973
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                3.3788848   3.3543900   3.4033797
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                3.3945408   3.3174039   3.4716777
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                2.6495015   2.5850582   2.7139448
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                2.5693040   2.4908928   2.6477152
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                2.6569409   2.5604213   2.7534604
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                3.4893535   3.4334711   3.5452359
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                3.5029061   3.4440483   3.5617639
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                3.6447744   3.5935303   3.6960185
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                3.6894271   3.6748448   3.7040094
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                3.7219371   3.7062433   3.7376310
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                3.7670322   3.7473009   3.7867635
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                3.6367316   3.5902112   3.6832519
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                3.6082636   3.4815567   3.7349704
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                3.6556265   3.5406203   3.7706328
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.9013656   1.7869534   2.0157779
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.9257674   1.7917247   2.0598101
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                2.0639805   1.9796295   2.1483314
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.9068753   1.7638628   2.0498878
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.8532608   1.6840231   2.0224986
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.8918943   1.7762565   2.0075322
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.8428887   1.7119239   1.9738535
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.8972533   1.7050731   2.0894334
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.9522615   1.7972942   2.1072288
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                1.9952473   1.8690228   2.1214718
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                2.0904985   1.9714663   2.2095307
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                2.0428730   1.9200601   2.1656859
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.8199741   1.6265189   2.0134293
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                2.0098810   1.7784037   2.2413584
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.9333237   1.6904907   2.1761567
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.9056219   1.7613027   2.0499412
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.6661310   1.4128995   1.9193624
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8182968   1.7203909   1.9162026
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.8913437   1.8303254   1.9523621
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.9758522   1.9151164   2.0365881
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.9746162   1.9126068   2.0366255
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.9389510   1.8793310   1.9985710
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.9528815   1.8921326   2.0136305
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                2.0028007   1.9416409   2.0639605
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.9809547   1.9148391   2.0470702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                2.0374840   1.9680136   2.1069544
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                2.0021119   1.9465225   2.0577014
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.7985993   1.7478760   1.8493225
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.7694312   1.7051846   1.8336778
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8146201   1.7338460   1.8953942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.7110806   1.6505425   1.7716187
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.6836273   1.6166390   1.7506157
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.7215573   1.6429479   1.8001667
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.0788092   2.0410029   2.1166154
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.0939329   2.0438601   2.1440057
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.1237500   2.0763105   2.1711894
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.9332557   1.8840904   1.9824209
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.9793194   1.9559513   2.0026874
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                2.0238111   1.9524941   2.0951281
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.7556850   1.7059156   1.8054543
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.7522394   1.7021120   1.8023668
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                1.7610061   1.6919622   1.8300500
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.8374902   1.7862283   1.8887522
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.8864071   1.8364722   1.9363419
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                1.8987895   1.8578691   1.9397100
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.8990661   1.8817160   1.9164162
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.9237067   1.9061533   1.9412601
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.9430141   1.9222928   1.9637353
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.8960883   1.8524596   1.9397169
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.8253914   1.7414981   1.9092848
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.9506817   1.8638188   2.0375446
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.0736091   1.0107312   1.1364869
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.1018442   1.0463519   1.1573364
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.1474178   1.0921612   1.2026744
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                1.1193294   1.0487977   1.1898610
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                1.0822089   1.0223500   1.1420679
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                1.1368603   1.0790231   1.1946976
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.2240625   1.1313229   1.3168021
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.1935919   1.1051019   1.2820820
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                1.2225579   1.1670751   1.2780406
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                1.2150390   1.1411209   1.2889572
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                1.1350686   1.0652463   1.2048909
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                1.2463399   1.1927318   1.2999480
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                1.1390232   1.0366310   1.2414153
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                1.1558914   1.0177783   1.2940044
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.1952664   1.0931879   1.2973449
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9366626   0.8516942   1.0216310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.0648113   0.9337823   1.1958403
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.0087627   0.9592974   1.0582280
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.0656493   1.0388000   1.0924986
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.1308091   1.1032565   1.1583617
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.1138565   1.0926920   1.1350210
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                1.0237762   0.8906416   1.1569108
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.9570971   0.8606393   1.0535548
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                1.0791211   0.9028881   1.2553540
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.1380546   1.1101083   1.1660008
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.1593725   1.1284656   1.1902795
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.2190956   1.1892940   1.2488972
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.1971741   1.1684299   1.2259183
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.2274404   1.1963400   1.2585407
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.2528263   1.2230956   1.2825571
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1747887   1.1445142   1.2050631
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.2148304   1.1754378   1.2542231
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2301267   1.1813358   1.2789176
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.1652428   1.1351733   1.1953123
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.1484187   1.1141630   1.1826744
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.2013567   1.1621990   1.2405145
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                1.4917970   1.4478278   1.5357661
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                1.4535508   1.4137517   1.4933500
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                1.4577919   1.4277919   1.4877919
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.1775069   1.1516312   1.2033825
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.1985251   1.1858341   1.2112161
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.2375030   1.1929657   1.2820402
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.0034880   0.9768052   1.0301709
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.0287569   0.9984715   1.0590422
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                1.0287864   0.9923448   1.0652280
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                1.0495343   1.0177593   1.0813094
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                1.0866146   1.0542635   1.1189656
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                1.1558855   1.1289969   1.1827741
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                1.0350909   1.0116439   1.0585379
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                1.0592351   1.0390154   1.0794548
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                1.0999913   1.0790445   1.1209382
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                1.2804589   1.2314686   1.3294493
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                1.2815670   1.2394253   1.3237088
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                1.2719435   1.2269904   1.3168966
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.0886483   1.0787021   1.0985944
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.1109685   1.0998221   1.1221148
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.1283610   1.1162560   1.1404660
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.2003575   1.1822156   1.2184994
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.1994044   1.1637939   1.2350149
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.2171731   1.1850011   1.2493451
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.8373313   0.8005067   0.8741560
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8331406   0.7988647   0.8674166
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.8601996   0.8261520   0.8942471
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8733322   0.8319358   0.9147286
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8663994   0.8281155   0.9046833
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.8831410   0.8384599   0.9278221
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8022961   0.7593337   0.8452585
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.8563676   0.8188858   0.8938493
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8965133   0.8533783   0.9396484
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8600034   0.8115433   0.9084634
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.8463829   0.8120636   0.8807022
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8283312   0.7932441   0.8634184
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8361377   0.7829947   0.8892807
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8583387   0.7849832   0.9316941
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.8992681   0.8411942   0.9573420
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7524282   0.7062855   0.7985710
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7471475   0.6671748   0.8271202
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7827477   0.7506024   0.8148929
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8363638   0.8150812   0.8576464
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8383357   0.8179988   0.8586726
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8971393   0.8780766   0.9162020
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8421723   0.8201128   0.8642318
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8833742   0.8619330   0.9048154
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8914689   0.8736761   0.9092618
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.8338421   0.8115697   0.8561145
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.8189335   0.7922602   0.8456067
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.8681185   0.8346431   0.9015938
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8449937   0.7961714   0.8938161
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8650292   0.7928229   0.9372355
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8912432   0.7876850   0.9948014
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7156974   0.6705910   0.7608038
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7141368   0.6824951   0.7457785
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.8100224   0.6333862   0.9866585
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7733696   0.7566468   0.7900924
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7940369   0.7756454   0.8124284
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7713186   0.7462595   0.7963777
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7833056   0.7661926   0.8004187
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.8234546   0.8060190   0.8408903
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.8635868   0.8481175   0.8790561
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6711838   0.6575941   0.6847735
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6842643   0.6716304   0.6968983
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7577083   0.7456944   0.7697222
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8536850   0.8232863   0.8840838
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.8445633   0.8161681   0.8729585
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.8235189   0.7952956   0.8517421
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.7848852   0.7774597   0.7923107
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.7980245   0.7886373   0.8074117
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.8148044   0.8038485   0.8257602
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.8513395   0.8427825   0.8598964
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.8493026   0.8316304   0.8669748
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.8496939   0.8323743   0.8670136


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.6068110   3.5255940   3.6880279
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.6116826   3.5155281   3.7078371
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8615395   3.7322218   3.9908572
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3127625   3.2416069   3.3839181
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4876232   3.3349303   3.6403160
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5068091   3.4220819   3.5915362
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6022342   3.5739584   3.6305100
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8365156   2.7232236   2.9498075
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3748719   3.3536408   3.3961030
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6210936   2.5764523   2.6657350
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5536717   3.5216431   3.5857004
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7181534   3.7077552   3.7285517
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6351196   3.5944306   3.6758086
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9729069   1.9071430   2.0386707
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8869292   1.8038848   1.9699736
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9039465   1.8096675   1.9982256
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0417906   1.9674458   2.1161353
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9098061   1.7797304   2.0398817
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8292696   1.7515547   1.9069846
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9401040   1.8974682   1.9827398
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7934225   1.7576031   1.8292420
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7053358   1.6661973   1.7444743
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0928984   2.0517324   2.1340643
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9740980   1.9538278   1.9943683
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7553875   1.7238344   1.7869406
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8755767   1.8484594   1.9026940
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9190042   1.9082849   1.9297235
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8926233   1.8561309   1.9291158
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1117026   1.0780038   1.1454013
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1143902   1.0768288   1.1519515
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2147118   1.1709584   1.2584651
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2093319   1.1718101   1.2468537
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1639758   1.0994369   1.2285148
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9935744   0.9522996   1.0348491
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0994077   1.0886490   1.1101664
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1968182   1.1752193   1.2184170
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1684269   1.1487669   1.1880868
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4693563   1.4313558   1.5073568
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1972779   1.1862308   1.2083250
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0176143   0.9999244   1.0353043
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.1020756   1.0845199   1.1196312
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0660827   1.0536639   1.0785015
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2783065   1.2521010   1.3045119
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1065440   1.0996782   1.1134098
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2023874   1.1873818   1.2173930
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8436107   0.8232704   0.8639511
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8744660   0.8501852   0.8987468
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8572612   0.8314640   0.8830584
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8420366   0.8191247   0.8649486
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8652829   0.8300082   0.9005576
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7719685   0.7466771   0.7972599
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8608017   0.8072564   0.9143469
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7175656   0.6915102   0.7436210
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7804698   0.7693440   0.7915956
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8261936   0.8163954   0.8359917
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7052710   0.6977488   0.7127933
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8415038   0.8246015   0.8584060
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966131   0.7912619   0.8019642
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8508241   0.8436631   0.8579851


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0054557   -0.2035947    0.2145061
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.1293913   -0.0623191    0.3211016
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.1781189   -0.0614187    0.4176564
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.0965671   -0.1250262    0.3181603
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0779126   -0.2271225    0.3829477
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0364563   -0.3498616    0.2769489
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0783368   -0.1018159    0.2584895
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0018893   -0.1586577    0.1624363
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.2903835   -0.6678919    0.0871250
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               -0.0317114   -0.3847195    0.3212966
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0360033   -0.2124499    0.2844564
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0373217   -0.1655209    0.2401644
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.1254090    0.0641730    0.1866451
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.2032941    0.1301652    0.2764231
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0310439   -0.0608759    0.1229637
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.1346769    0.0367974    0.2325563
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0452802   -0.1447628    0.0542025
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               -0.0358317   -0.1308281    0.0591647
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0492602   -0.0152777    0.1137982
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0713743    0.0000744    0.1426743
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0285108   -0.0279974    0.0850190
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0441668   -0.0482631    0.1365966
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0801975   -0.1816926    0.0212976
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0074394   -0.1086164    0.1234952
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0135526   -0.0676083    0.0947135
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.1554209    0.0796000    0.2312417
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0325100    0.0122632    0.0527568
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0776051    0.0548247    0.1003854
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0284680   -0.1628374    0.1059014
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0188950   -0.1073730    0.1451630
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0244018   -0.1518299    0.2006335
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.1626148    0.0204697    0.3047600
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0536145   -0.2751861    0.1679572
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0149810   -0.1988959    0.1689339
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0543646   -0.1781972    0.2869264
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.1093728   -0.0935228    0.3122684
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0952512   -0.0782460    0.2687484
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0476257   -0.1284868    0.2237383
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.1899069   -0.1117662    0.4915801
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.1133496   -0.1971223    0.4238215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.2394910   -0.5309600    0.0519781
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0873252   -0.2617201    0.0870698
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0845085    0.0309765    0.1380405
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0832724   -0.0072266    0.1737714
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0139305   -0.0711869    0.0990479
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0638497   -0.0215614    0.1492608
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0565294   -0.0393737    0.1524325
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0211573   -0.0652224    0.1075370
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0291681   -0.1110245    0.0526883
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0160209   -0.0793589    0.1114007
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0274533   -0.1177434    0.0628369
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0104767   -0.0887418    0.1096952
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0151237   -0.0191215    0.0493688
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0449408    0.0077267    0.0821549
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0460637   -0.0083724    0.1004998
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0905554    0.0039336    0.1771772
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0034456   -0.0740837    0.0671925
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0053211   -0.0797908    0.0904331
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0489168   -0.0226462    0.1204799
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0612993   -0.0042924    0.1268910
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0246405    0.0000279    0.0492532
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0439480    0.0170094    0.0708865
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0706968   -0.1637237    0.0223300
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0545935   -0.0425262    0.1517131
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0282351   -0.0556280    0.1120982
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0738087   -0.0098986    0.1575160
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0371204   -0.1296288    0.0553880
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low                0.0175310   -0.0736823    0.1087443
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0304706   -0.1586545    0.0977133
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0015046   -0.1095739    0.1065646
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0799705   -0.1816516    0.0217107
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0313009   -0.0600103    0.1226120
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0168682   -0.1550602    0.1887965
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0562432   -0.0883395    0.2008260
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.1281487   -0.0280186    0.2843160
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0721001   -0.0262180    0.1704182
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0651598    0.0263080    0.1040116
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0482072    0.0077594    0.0886550
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               -0.0666791   -0.2310839    0.0977256
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low                0.0553449   -0.1655235    0.2762133
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0213180   -0.0203502    0.0629861
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0810410    0.0401860    0.1218960
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0302663   -0.0120831    0.0726156
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0556522    0.0142983    0.0970062
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0400418   -0.0096405    0.0897240
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0553380   -0.0020823    0.1127584
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0168241   -0.0624051    0.0287569
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0361140   -0.0132572    0.0854851
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0382461   -0.0589227   -0.0175695
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0340051   -0.0673390   -0.0006711
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0210182   -0.0078021    0.0498385
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0599961    0.0084877    0.1115045
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0252688   -0.0150942    0.0656319
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0252984   -0.0198676    0.0704643
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.0370802   -0.0082656    0.0824261
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.1063511    0.0647260    0.1479763
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0241442   -0.0068170    0.0551054
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0649005    0.0334595    0.0963414
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low                0.0011081   -0.0635138    0.0657299
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0085154   -0.0750048    0.0579740
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0223202    0.0078732    0.0367672
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0397128    0.0249544    0.0544712
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0009531   -0.0403610    0.0384548
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0168156   -0.0196072    0.0532384
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0041907   -0.0544987    0.0461173
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0228682   -0.0272844    0.0730209
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0069328   -0.0633183    0.0494527
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0098088   -0.0511015    0.0707191
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0540715   -0.0029430    0.1110859
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0942172    0.0333370    0.1550974
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0136204   -0.0730022    0.0457613
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               -0.0316722   -0.0915009    0.0281566
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0222010   -0.0683815    0.1127835
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0631304   -0.0155891    0.1418499
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0052807   -0.0976105    0.0870491
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0303194   -0.0259164    0.0865553
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0019719   -0.0274651    0.0314089
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0607755    0.0322040    0.0893471
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0412019    0.0104392    0.0719647
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0492966    0.0209557    0.0776376
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0149086   -0.0496581    0.0198408
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0342764   -0.0059313    0.0744841
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0200354   -0.0482765    0.0883473
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0462494   -0.0690199    0.1615188
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0015606   -0.0566585    0.0535374
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0943250   -0.0879794    0.2766294
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0206673   -0.0041903    0.0455249
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0020510   -0.0321775    0.0280756
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0401490    0.0157183    0.0645797
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.0802812    0.0572127    0.1033496
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0130805   -0.0054747    0.0316358
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0865245    0.0683857    0.1046633
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0091218   -0.0507195    0.0324760
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0301661   -0.0716467    0.0113144
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0131393    0.0012651    0.0250135
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0299192    0.0171822    0.0426561
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0020368   -0.0215339    0.0174603
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0016455   -0.0209589    0.0176679
