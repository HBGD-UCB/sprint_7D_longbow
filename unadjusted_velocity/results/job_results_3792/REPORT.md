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
![](/tmp/a68c5db4-d914-4db0-809c-fdd7d7155637/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a68c5db4-d914-4db0-809c-fdd7d7155637/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0201452   -0.0995791    0.0592888
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0520650   -0.1251139    0.0209838
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0272564   -0.0340788    0.0885915
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0372120   -0.1216724    0.0472485
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                 0.0364394   -0.0538545    0.1267333
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0066519   -0.0798338    0.0665300
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.1008311    0.0143627    0.1872996
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.1138055    0.0120400    0.2155710
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0656298   -0.0334235    0.1646831
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1766643   -0.2400785   -0.1132501
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                -0.1455507   -0.2149717   -0.0761298
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.1663294   -0.2226884   -0.1099704
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0230928   -0.1371376    0.0909520
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.1650659   -0.3039112   -0.0262205
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0490630   -0.1765463    0.0784202
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0265520   -0.1126094    0.0595053
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0322013   -0.1153560    0.0509533
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0376326   -0.0921074    0.0168423
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0220602   -0.0440908   -0.0000297
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                 0.0249895    0.0028649    0.0471141
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0558165    0.0246435    0.0869894
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0712921   -0.1014254   -0.0411588
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0497948   -0.0798361   -0.0197535
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0034056   -0.0365504    0.0297391
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1208554   -0.1556341   -0.0860768
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.1233830   -0.1550685   -0.0916974
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1221276   -0.1504954   -0.0937599
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                -0.4517487   -0.5191702   -0.3843272
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                -0.4308556   -0.4872947   -0.3744165
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.4197148   -0.4798505   -0.3595791
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1502211   -0.1754145   -0.1250277
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.1394574   -0.1516922   -0.1272225
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1298669   -0.1681191   -0.0916147
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.5248313   -0.5577586   -0.4919040
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.5680062   -0.6069077   -0.5291046
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.5142163   -0.5621994   -0.4662331
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.1086277   -0.1361139   -0.0811415
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0831937   -0.1119280   -0.0544593
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0246903   -0.0498237    0.0004432
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0559254    0.0488253    0.0630256
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                 0.0739264    0.0663423    0.0815105
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0925204    0.0828955    0.1021453
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0670137    0.0455457    0.0884818
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                 0.0548886   -0.0067506    0.1165277
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0807613    0.0305386    0.1309839
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0308300   -0.0867392    0.0250792
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0290524   -0.0906399    0.0325352
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0374712   -0.0024547    0.0773971
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0305963   -0.0942082    0.0330156
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0579733   -0.1371107    0.0211641
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0395121   -0.0938183    0.0147940
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0812994   -0.1505268   -0.0120720
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0547116   -0.1457982    0.0363750
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0319415   -0.1049359    0.0410530
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0168814   -0.0421550    0.0759178
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0560741   -0.0010715    0.1132197
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                 0.0381792   -0.0199960    0.0963545
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0773587   -0.1692084    0.0144910
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.0232937   -0.0821039    0.1286913
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0240782   -0.1377590    0.0896027
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0308210   -0.0990297    0.0373876
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1486658   -0.2715166   -0.0258151
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0792217   -0.1249028   -0.0335405
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0332628   -0.0600287   -0.0064970
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0030394   -0.0308564    0.0247776
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0076258   -0.0348848    0.0196333
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0372790   -0.0654316   -0.0091264
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0309669   -0.0592684   -0.0026654
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0139982   -0.0427416    0.0147452
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0126626   -0.0175760    0.0429012
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0459977    0.0137168    0.0782785
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0237589   -0.0019297    0.0494475
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0824255   -0.1059173   -0.0589336
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0970975   -0.1271052   -0.0670899
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0771806   -0.1144976   -0.0398636
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1609954   -0.1897378   -0.1322530
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.1747870   -0.2066896   -0.1428843
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1643639   -0.2014155   -0.1273124
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0430753    0.0257155    0.0604350
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0472291    0.0233254    0.0711329
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                 0.0589212    0.0366368    0.0812055
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0184383   -0.0415514    0.0046747
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.0006229   -0.0103033    0.0115491
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0215010   -0.0116112    0.0546132
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0996771   -0.1233828   -0.0759714
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.1020443   -0.1258788   -0.0782099
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0933166   -0.1258616   -0.0607716
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.0754127   -0.0993428   -0.0514827
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0494202   -0.0725129   -0.0263276
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0505066   -0.0696742   -0.0313391
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0114611   -0.0194619   -0.0034603
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0005771   -0.0087079    0.0075536
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0027100   -0.0069577    0.0123777
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0103222   -0.0303009    0.0096564
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0402002   -0.0786518   -0.0017486
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0158425   -0.0252189    0.0569038
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0988111   -0.1274228   -0.0701995
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0873323   -0.1095181   -0.0651464
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0703739   -0.0931386   -0.0476093
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0828128   -0.1125087   -0.0531170
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0937896   -0.1197244   -0.0678549
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0738474   -0.0988039   -0.0488909
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0489445   -0.0867468   -0.0111422
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0568697   -0.0942037   -0.0195357
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0496096   -0.0725559   -0.0266633
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0356512   -0.0677162   -0.0035861
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0687798   -0.0982600   -0.0392996
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0220952   -0.0454035    0.0012131
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0775887   -0.1218621   -0.0333152
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0631962   -0.1203001   -0.0060922
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0506883   -0.0929481   -0.0084284
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1518825   -0.1864375   -0.1173275
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0954336   -0.1547107   -0.0361565
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1230179   -0.1441319   -0.1019040
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0948687   -0.1054510   -0.0842863
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0749691   -0.0863399   -0.0635983
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0849384   -0.0954599   -0.0744169
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.1029916   -0.1575966   -0.0483867
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -0.1298428   -0.1685899   -0.0910957
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0834008   -0.1555402   -0.0112614
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0737645   -0.0850539   -0.0624751
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0674724   -0.0798512   -0.0550935
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0476222   -0.0596784   -0.0355659
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0423126   -0.0546308   -0.0299943
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0293277   -0.0423664   -0.0162890
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0249265   -0.0372097   -0.0126432
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0671243   -0.0800813   -0.0541673
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0530088   -0.0698330   -0.0361845
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0483066   -0.0688894   -0.0277238
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0603414   -0.0727961   -0.0478866
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0698005   -0.0840825   -0.0555185
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0516500   -0.0686253   -0.0346746
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0529417    0.0340439    0.0718394
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0340535    0.0169978    0.0511091
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0336182    0.0200639    0.0471725
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0543803   -0.0654349   -0.0433258
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0497328   -0.0551458   -0.0443198
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0364668   -0.0555801   -0.0173534
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1152261   -0.1263277   -0.1041244
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.1056667   -0.1179170   -0.0934164
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1038786   -0.1192534   -0.0885038
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.1052886   -0.1187300   -0.0918471
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.0949015   -0.1086262   -0.0811768
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0722778   -0.0836493   -0.0609064
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1090879   -0.1189431   -0.0992326
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.1026252   -0.1111126   -0.0941379
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0906481   -0.0994608   -0.0818354
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0063395   -0.0271164    0.0144374
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0053970   -0.0229473    0.0121534
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0101941   -0.0288634    0.0084752
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0797967   -0.0840216   -0.0755718
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0722583   -0.0770001   -0.0675165
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0713572   -0.0764842   -0.0662302
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0394818   -0.0469810   -0.0319826
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0398819   -0.0547247   -0.0250391
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0320856   -0.0452648   -0.0189064
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0171272   -0.0300414   -0.0042129
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0231796   -0.0343936   -0.0119657
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0194011   -0.0299399   -0.0088624
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0155921   -0.0264936   -0.0046906
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0153589   -0.0286599   -0.0020579
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0109656   -0.0249337    0.0030024
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0486954   -0.0659209   -0.0314699
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0239085   -0.0373406   -0.0104765
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0164014   -0.0302131   -0.0025896
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0033059   -0.0198466    0.0132349
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0074581   -0.0204741    0.0055579
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0169300   -0.0284869   -0.0053731
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0291418   -0.0459758   -0.0123079
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0175213   -0.0419782    0.0069356
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0071672   -0.0263546    0.0120202
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0454502   -0.0611834   -0.0297171
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0469104   -0.0750389   -0.0187820
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0355356   -0.0460122   -0.0250591
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0119008   -0.0187138   -0.0050878
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0148765   -0.0212182   -0.0085347
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0018824   -0.0045502    0.0083150
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0150513   -0.0223387   -0.0077639
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0012905   -0.0086298    0.0060489
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0030216   -0.0091546    0.0031114
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0134374   -0.0211399   -0.0057349
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0228431   -0.0313228   -0.0143634
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0104740   -0.0208442   -0.0001037
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0462750   -0.0630432   -0.0295069
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0426223   -0.0661249   -0.0191197
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0347242   -0.0699966    0.0005482
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0428678   -0.0580223   -0.0277134
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0534261   -0.0647533   -0.0420989
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0176386   -0.0804099    0.0451327
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0299976   -0.0355188   -0.0244764
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.0265201   -0.0328334   -0.0202068
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0338170   -0.0422215   -0.0254124
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0405243   -0.0463951   -0.0346534
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.0353737   -0.0412371   -0.0295102
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0290289   -0.0341708   -0.0238869
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0649384   -0.0696480   -0.0602287
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.0654064   -0.0697361   -0.0610766
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0442265   -0.0484780   -0.0399750
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0134722   -0.0239680   -0.0029764
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0123508   -0.0218031   -0.0028985
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0229578   -0.0330621   -0.0128535
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0197086   -0.0223237   -0.0170936
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0175597   -0.0210160   -0.0141033
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0189772   -0.0227151   -0.0152392
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0136674   -0.0166298   -0.0107050
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0139830   -0.0200865   -0.0078796
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0152309   -0.0212605   -0.0092012


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0145359   -0.0558285    0.0267568
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0074102   -0.0562743    0.0414539
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0920870    0.0359791    0.1481950
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1640316   -0.2004678   -0.1275955
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0710012   -0.1451419    0.0031396
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0340979   -0.0766349    0.0084390
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0124966   -0.0032603    0.0282535
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4373735   -0.4964330   -0.3783141
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1407172   -0.1512982   -0.1301361
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5388372   -0.5612692   -0.5164052
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0686752   -0.0843829   -0.0529675
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0703817    0.0653899    0.0753735
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0670403    0.0481864    0.0858943
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0037366   -0.0345660    0.0270929
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0411872   -0.0791877   -0.0031868
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0531267   -0.0985458   -0.0077076
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0368444    0.0016620    0.0720269
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321904   -0.0931294    0.0287487
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0718346   -0.1083792   -0.0352901
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0168853   -0.0357401    0.0019694
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855565   -0.1021743   -0.0689388
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1660301   -0.1845910   -0.1474692
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0475202    0.0282208    0.0668197
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0013688   -0.0108519    0.0081144
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0993768   -0.1143719   -0.0843817
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0581890   -0.0708287   -0.0455492
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0040204   -0.0089971    0.0009563
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0114011   -0.0281285    0.0053262
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0839210   -0.0980120   -0.0698300
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0830422   -0.0990315   -0.0670530
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0514939   -0.0695948   -0.0333930
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0377406   -0.0539224   -0.0215589
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0640548   -0.0912245   -0.0368851
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1286743   -0.1461022   -0.1112465
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0858013   -0.0900320   -0.0815706
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0594910   -0.0686980   -0.0502839
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0613442   -0.0695826   -0.0531058
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0414458    0.0250263    0.0578652
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0497056   -0.0544193   -0.0449919
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1095532   -0.1168450   -0.1022614
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0892983   -0.0966919   -0.0819047
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1004258   -0.1056343   -0.0952173
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0071514   -0.0181345    0.0038317
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0750463   -0.0779548   -0.0721379
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0385861   -0.0447852   -0.0323871
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0201350   -0.0267873   -0.0134826
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0140412   -0.0213272   -0.0067551
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0280287   -0.0370734   -0.0189840
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0105779   -0.0184396   -0.0027162
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0179909   -0.0295422   -0.0064396
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0390385   -0.0474129   -0.0306641
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0429411   -0.0603274   -0.0255548
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0496524   -0.0588854   -0.0404194
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0294331   -0.0331658   -0.0257003
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0345516   -0.0377982   -0.0313051
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0580661   -0.0606531   -0.0554790
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0158553   -0.0216714   -0.0100392
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188053   -0.0206648   -0.0169458
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0139172   -0.0164137   -0.0114208


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0319199   -0.1398360    0.0759962
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0474015   -0.0529566    0.1477596
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0736513   -0.0499875    0.1972902
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.0305601   -0.0811949    0.1423150
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0129743   -0.1205660    0.1465146
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0352014   -0.1666865    0.0962838
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0311135   -0.0629111    0.1251382
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0103349   -0.0745044    0.0951741
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.1419730   -0.3216512    0.0377051
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               -0.0259702   -0.1970205    0.1450801
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0056493   -0.1253179    0.1140192
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0110805   -0.1129303    0.0907692
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0470498    0.0177272    0.0763723
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0778767    0.0416620    0.1140914
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0214973   -0.0210526    0.0640472
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0678864    0.0230914    0.1126815
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0025275   -0.0495757    0.0445206
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               -0.0012722   -0.0461530    0.0436086
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0208931   -0.0120363    0.0538226
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0320339   -0.0055685    0.0696364
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0107637   -0.0172434    0.0387709
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0203542   -0.0254491    0.0661574
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0431749   -0.0941410    0.0077912
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0106150   -0.0475794    0.0688095
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0254340   -0.0143297    0.0651978
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0839374    0.0466925    0.1211823
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0180009    0.0079921    0.0280097
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0365950    0.0255183    0.0476716
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0121252   -0.0773080    0.0530577
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0137475   -0.0418129    0.0693080
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0017776   -0.0814021    0.0849573
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0683012   -0.0004005    0.1370028
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0273770   -0.1289112    0.0741572
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0089159   -0.0925558    0.0747240
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0265878   -0.0878203    0.1409959
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0493580   -0.0512433    0.1499593
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0391927   -0.0429713    0.1213567
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0212979   -0.0615856    0.1041813
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.1006524   -0.0391511    0.2404559
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0532805   -0.0928691    0.1994301
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.1178448   -0.2583607    0.0226712
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0484006   -0.1304932    0.0336920
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0302235    0.0068254    0.0536215
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0256371   -0.0144184    0.0656925
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0063121   -0.0336072    0.0462313
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0232808   -0.0169529    0.0635146
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0333351   -0.0108964    0.0775666
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0110963   -0.0285808    0.0507735
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0146721   -0.0527815    0.0234373
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0052448   -0.0388508    0.0493404
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0137916   -0.0567323    0.0291491
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low               -0.0033686   -0.0502615    0.0435244
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0041539   -0.0124543    0.0207620
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0158459   -0.0015521    0.0332438
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0190613   -0.0065042    0.0446267
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0399394   -0.0004417    0.0803204
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0023673   -0.0359833    0.0312488
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0063605   -0.0339028    0.0466239
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0259925   -0.0072629    0.0592478
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0249061   -0.0057540    0.0555662
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0108840   -0.0005174    0.0222853
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0141711    0.0016911    0.0266511
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0298780   -0.0726411    0.0128852
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0261647   -0.0194189    0.0717483
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0114788   -0.0247267    0.0476843
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0284372   -0.0081258    0.0650002
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0109768   -0.0504034    0.0284497
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low                0.0089654   -0.0298247    0.0477555
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0079252   -0.0610556    0.0452052
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0006652   -0.0448867    0.0435564
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0331286   -0.0766861    0.0104288
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0135560   -0.0260854    0.0531974
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0143925   -0.0578639    0.0866490
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0269004   -0.0343044    0.0881053
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0564490   -0.0121646    0.1250625
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0288646   -0.0116304    0.0693596
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0198996    0.0039412    0.0358580
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0099303   -0.0076472    0.0275077
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               -0.0268512   -0.0938067    0.0401043
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low                0.0195908   -0.0708846    0.1100662
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0062922   -0.0104616    0.0230459
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0261424    0.0096256    0.0426591
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0129849   -0.0049525    0.0309222
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0173861   -0.0000099    0.0347821
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0141156   -0.0071198    0.0353509
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0188177   -0.0055038    0.0431392
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0094591   -0.0284090    0.0094907
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0086914   -0.0123629    0.0297457
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0188882   -0.0281647   -0.0096117
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0193234   -0.0338996   -0.0047473
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0046476   -0.0076611    0.0169562
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0179136   -0.0041663    0.0399935
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0095594   -0.0069729    0.0260916
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0113475   -0.0076165    0.0303114
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.0103871   -0.0088233    0.0295975
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.0330108    0.0154045    0.0506171
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0064626   -0.0065436    0.0194688
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0184398    0.0052190    0.0316606
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low                0.0009425   -0.0262548    0.0281399
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0038546   -0.0317871    0.0240779
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0075384    0.0014241    0.0136526
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0084394    0.0021796    0.0146993
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0004001   -0.0167540    0.0159538
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0073962   -0.0075853    0.0223777
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0060525   -0.0231560    0.0110511
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               -0.0022740   -0.0189426    0.0143946
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0002332   -0.0169644    0.0174309
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0046265   -0.0130921    0.0223451
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0247869    0.0029434    0.0466304
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0322940    0.0102150    0.0543731
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0041522   -0.0252001    0.0168957
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               -0.0136241   -0.0338023    0.0065540
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0116205   -0.0180699    0.0413110
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0219747   -0.0035506    0.0474999
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0014602   -0.0336897    0.0307693
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0099146   -0.0089875    0.0288167
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               -0.0029757   -0.0122835    0.0063321
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0137831    0.0044132    0.0231531
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0137608    0.0034181    0.0241035
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0120297    0.0025050    0.0215544
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0094057   -0.0208615    0.0020501
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0029634   -0.0099544    0.0158813
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0036528   -0.0181378    0.0254433
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0115508   -0.0289290    0.0520306
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0105583   -0.0294782    0.0083617
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0252292   -0.0393455    0.0898039
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0034775   -0.0049095    0.0118645
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0038194   -0.0138752    0.0062364
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0051506   -0.0031468    0.0134480
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.0114954    0.0036911    0.0192997
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               -0.0004680   -0.0068655    0.0059294
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0207119    0.0143671    0.0270566
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low                0.0011214   -0.0130033    0.0152461
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0094857   -0.0240548    0.0050834
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0021490   -0.0021596    0.0064575
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0007315   -0.0037457    0.0052087
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0003156   -0.0070356    0.0064044
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0015635   -0.0082587    0.0051318
