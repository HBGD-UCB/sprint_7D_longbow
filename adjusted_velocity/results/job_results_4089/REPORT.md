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

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/ed4868cf-43d0-4b6d-8067-003e5bfbc643/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed4868cf-43d0-4b6d-8067-003e5bfbc643/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                3.5783294   3.4560778   3.7005810
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                3.5836225   3.4627479   3.7044972
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                3.6513306   3.5468426   3.7558186
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                3.4046233   3.2533372   3.5559095
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                3.4486999   3.2799188   3.6174810
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                3.4161247   3.2741236   3.5581257
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                3.8498221   3.6384374   4.0612067
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                3.9204167   3.7055933   4.1352402
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                3.8194730   3.5902554   4.0486907
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                3.4702965   3.3960109   3.5445821
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                3.5381532   3.4543494   3.6219569
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                3.3468334   3.2609632   3.4327036
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                3.5680844   3.3471772   3.7889916
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                3.2876630   3.0324563   3.5428697
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                3.5586876   3.3304788   3.7868964
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                3.4798216   3.3080571   3.6515862
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                3.5159225   3.3364663   3.6953788
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                3.5171602   3.4092604   3.6250600
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                3.5277233   3.4985239   3.5569227
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                3.6561899   3.6192916   3.6930882
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                3.7294980   3.6870603   3.7719358
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                3.4190043   3.3697930   3.4682156
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                3.4471238   3.4005292   3.4937183
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                3.5369339   3.4871621   3.5867057
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                3.4702288   3.4185677   3.5218898
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                3.3753543   3.3323127   3.4183960
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                3.3725550   3.3280869   3.4170231
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.7940625   2.6728050   2.9153201
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.8540984   2.7462380   2.9619587
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.8697217   2.7696985   2.9697448
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                3.3784709   3.3341559   3.4227860
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                3.3817776   3.3580080   3.4055471
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                3.4532274   3.3991166   3.5073382
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                2.6046102   2.5532985   2.6559218
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                2.4840572   2.4236734   2.5444410
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                2.4924645   2.4400722   2.5448568
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                3.5667518   3.5217330   3.6117706
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                3.5574535   3.5103287   3.6045782
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                3.7207485   3.6761660   3.7653311
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                3.6926089   3.6791726   3.7060452
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                3.7216625   3.7067152   3.7366097
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                3.7633676   3.7453311   3.7814042
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                3.6383167   3.5939509   3.6826826
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                3.6049530   3.5048837   3.7050224
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                3.6739276   3.5908532   3.7570020
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.9022502   1.8123976   1.9921028
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.9179868   1.8148863   2.0210872
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                2.0698702   2.0005956   2.1391449
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                1.9068753   1.7638628   2.0498878
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                1.8532608   1.6840231   2.0224986
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                1.8918943   1.7762565   2.0075322
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.8428887   1.7119239   1.9738535
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.8972533   1.7050731   2.0894334
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                1.9522615   1.7972942   2.1072288
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                1.7694695   1.6652850   1.8736540
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                1.8610384   1.7638556   1.9582212
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                1.9424103   1.8303769   2.0544437
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                2.0965951   1.9124822   2.2807080
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                2.4902509   2.2726565   2.7078453
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                2.2453593   2.0187637   2.4719549
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.9056328   1.7613150   2.0499507
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.6661193   1.4128697   1.9193689
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8182936   1.7203889   1.9161982
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.8815084   1.8274654   1.9355515
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.9558502   1.8969790   2.0147214
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.9500201   1.8953259   2.0047144
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.9132286   1.8701629   1.9562943
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.9162029   1.8733540   1.9590518
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.9691626   1.9257309   2.0125943
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.9396212   1.8944391   1.9848033
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                2.0144677   1.9691987   2.0597367
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.9657010   1.9249795   2.0064224
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.7999391   1.7526763   1.8472020
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.7721009   1.7153556   1.8288461
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.8216596   1.7553917   1.8879275
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.7321164   1.6765518   1.7876811
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.7152725   1.6579682   1.7725767
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.7554298   1.6896656   1.8211940
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                2.0810810   2.0448050   2.1173569
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                2.0965901   2.0482805   2.1448998
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                2.1327820   2.0909105   2.1746536
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.8723274   1.8321339   1.9125209
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.9754102   1.9530348   1.9977857
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                2.0103035   1.9609881   2.0596189
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                1.6960632   1.6600204   1.7321060
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.6926827   1.6590348   1.7263305
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                1.6858437   1.6551360   1.7165515
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                1.8588210   1.8216902   1.8959519
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                1.8865156   1.8477535   1.9252776
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                1.8905332   1.8574759   1.9235905
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.8951611   1.8795762   1.9107460
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.9119254   1.8957516   1.9280992
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.9392663   1.9194453   1.9590873
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.8971070   1.8547616   1.9394524
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.8266596   1.7546127   1.8987066
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.9404282   1.8635760   2.0172804
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                1.0723676   1.0105572   1.1341780
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                1.1036289   1.0480577   1.1592001
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                1.1466107   1.0914966   1.2017248
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                1.0795245   1.0231974   1.1358515
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                1.0317896   0.9858165   1.0777628
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                1.0780853   1.0334326   1.1227381
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                1.2240546   1.1313207   1.3167885
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                1.1935727   1.1050934   1.2820519
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                1.2225758   1.1670967   1.2780548
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                1.2185820   1.1624155   1.2747486
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                1.1210651   1.0696468   1.1724833
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                1.2485936   1.2016463   1.2955408
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.9825885   0.8856424   1.0795345
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8839773   0.7578124   1.0101422
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                1.0468189   0.9470061   1.1466317
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.9082624   0.8408241   0.9757007
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.9932199   0.8736220   1.1128177
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                1.0082089   0.9610722   1.0553456
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                1.0658985   1.0442897   1.0875074
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                1.1208835   1.0993156   1.1424514
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                1.0961832   1.0813979   1.1109684
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.9751034   0.8663502   1.0838566
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.9186523   0.8372577   1.0000468
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                1.0109017   0.8743432   1.1474602
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                1.1460152   1.1234302   1.1686002
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                1.1735166   1.1487526   1.1982807
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                1.2444815   1.2204758   1.2684871
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                1.2029494   1.1837992   1.2220996
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                1.2460745   1.2244613   1.2676877
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                1.2832235   1.2599965   1.3064504
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                1.1764170   1.1491624   1.2036716
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                1.2103281   1.1780956   1.2425606
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                1.2253047   1.1921349   1.2584745
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                1.1682323   1.1408796   1.1955850
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                1.1527268   1.1218856   1.1835681
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                1.2170111   1.1814721   1.2525500
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                1.4896002   1.4486810   1.5305193
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                1.4539170   1.4152545   1.4925795
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                1.4577499   1.4295021   1.4859977
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                1.1640415   1.1424056   1.1856773
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                1.1971698   1.1851184   1.2092212
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                1.2310894   1.2030099   1.2591689
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.9765190   0.9571809   0.9958572
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                1.0112557   0.9889551   1.0335564
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.9672262   0.9498911   0.9845613
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                1.0408835   1.0167790   1.0649879
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                1.0711388   1.0459785   1.0962991
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                1.1343171   1.1118886   1.1567456
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                1.0284745   1.0090658   1.0478832
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                1.0503285   1.0328394   1.0678177
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                1.0785207   1.0615984   1.0954430
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                1.2793511   1.2409157   1.3177865
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                1.2837784   1.2481058   1.3194510
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                1.2716872   1.2370453   1.3063291
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                1.0889739   1.0803572   1.0975907
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                1.1028093   1.0926382   1.1129804
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                1.1038897   1.0938527   1.1139268
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                1.1990117   1.1812754   1.2167479
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                1.1811574   1.1505329   1.2117819
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                1.2016465   1.1728185   1.2304745
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.8373736   0.8005622   0.8741851
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.8331215   0.7988520   0.8673909
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.8601839   0.8261494   0.8942185
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.8731639   0.8325502   0.9137775
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.8676661   0.8293020   0.9060302
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.8822018   0.8385194   0.9258841
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.8021968   0.7593021   0.8450914
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.8563393   0.8188646   0.8938139
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.8965946   0.8535751   0.9396141
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.8743890   0.8357049   0.9130731
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.8583688   0.8307453   0.8859923
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.8309705   0.7996579   0.8622831
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.8368438   0.7838210   0.8898667
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.8560900   0.7822463   0.9299338
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.9001222   0.8426375   0.9576070
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7526299   0.7067834   0.7984763
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7466753   0.6666893   0.8266614
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.7827285   0.7506471   0.8148099
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.8538142   0.8364425   0.8711859
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8536296   0.8374862   0.8697729
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.9053321   0.8901516   0.9205125
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.7639593   0.7476362   0.7802825
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8362584   0.8198081   0.8527088
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8586791   0.8438628   0.8734954
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.8560380   0.8366470   0.8754289
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.8477092   0.8257904   0.8696279
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.9061326   0.8787713   0.9334940
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8416656   0.7948936   0.8884376
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8663087   0.7984880   0.9341294
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8916203   0.8002362   0.9830044
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7156974   0.6705910   0.7608038
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7141368   0.6824951   0.7457785
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.8100224   0.6333862   0.9866585
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7605607   0.7479436   0.7731778
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7825640   0.7696528   0.7954752
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7689812   0.7553571   0.7826054
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7787986   0.7663101   0.7912870
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.8226814   0.8095764   0.8357865
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.8587711   0.8464951   0.8710470
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6631437   0.6526314   0.6736560
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6776487   0.6669391   0.6883583
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7500202   0.7403878   0.7596526
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.8846201   0.8552055   0.9140348
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.8709827   0.8433457   0.8986196
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.8593353   0.8322036   0.8864671
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.7847339   0.7783748   0.7910931
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.7938693   0.7860776   0.8016611
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.8072109   0.7995117   0.8149101
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.8511923   0.8428146   0.8595700
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.8501394   0.8338361   0.8664426
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.8496992   0.8332526   0.8661459


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0052931   -0.1504544    0.1610406
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0730012   -0.0723048    0.2183072
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0440766   -0.1801476    0.2683008
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.0115013   -0.1948840    0.2178866
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0705947   -0.2290259    0.3702153
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0303490   -0.3411285    0.2804304
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0678567   -0.0297887    0.1655021
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low               -0.1234631   -0.2213842   -0.0255420
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.2804214   -0.6044027    0.0435600
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               -0.0093968   -0.3135584    0.2947648
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0361009   -0.2123050    0.2845068
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0373385   -0.1655057    0.2401827
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.1284666    0.0822792    0.1746540
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.2017747    0.1571251    0.2464244
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0281195   -0.0343989    0.0906378
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.1179296    0.0537670    0.1820922
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0948744   -0.1620980   -0.0276509
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               -0.0976738   -0.1662597   -0.0290878
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0600358    0.0128898    0.1071818
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0756591    0.0220237    0.1292945
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0033066   -0.0464339    0.0530471
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0747565    0.0051206    0.1443923
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.1205530   -0.1997250   -0.0413810
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.1121457   -0.1856568   -0.0386345
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low               -0.0092983   -0.0743999    0.0558032
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.1539968    0.0903083    0.2176852
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0290536    0.0106347    0.0474725
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0707587    0.0499695    0.0915480
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0333637   -0.1383884    0.0716610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0356109   -0.0568043    0.1280261
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0157366   -0.1026085    0.1340816
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.1676200    0.0618010    0.2734391
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0536145   -0.2751861    0.1679572
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0149810   -0.1988959    0.1689339
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0543646   -0.1781972    0.2869264
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.1093728   -0.0935228    0.3122684
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0915688   -0.0516354    0.2347731
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.1729407    0.0199282    0.3259533
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.3936558    0.1054396    0.6818720
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.1487642   -0.1510343    0.4485627
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.2395135   -0.5309989    0.0519719
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0873392   -0.2617308    0.0870523
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0743418    0.0262404    0.1224431
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0685117   -0.0057360    0.1427594
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0029743   -0.0518782    0.0578268
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0559340    0.0013419    0.1105260
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0748465    0.0111688    0.1385242
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0260798   -0.0344438    0.0866033
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0278383   -0.0994627    0.0437861
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0217205   -0.0575343    0.1009753
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0168439   -0.0967279    0.0630400
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0233134   -0.0626389    0.1092657
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0155091   -0.0155421    0.0465604
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0517011    0.0201182    0.0832839
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.1030828    0.0576735    0.1484921
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.1379761    0.0747168    0.2012354
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0033805   -0.0480503    0.0412893
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0102195   -0.0536927    0.0332538
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0276946   -0.0237939    0.0791830
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0317122   -0.0156916    0.0791159
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0167643   -0.0051017    0.0386303
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0441052    0.0192337    0.0689767
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0704474   -0.1497483    0.0088535
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0433212   -0.0417795    0.1284219
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0312613   -0.0515956    0.1141182
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0742431   -0.0082228    0.1567089
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0477349   -0.1128164    0.0173467
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0014392   -0.0645455    0.0616672
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0304820   -0.1586497    0.0976858
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0014788   -0.1095379    0.1065803
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0975170   -0.1736030   -0.0214309
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0300115   -0.0430626    0.1030857
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.0986112   -0.2608837    0.0636613
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0642304   -0.0782490    0.2067099
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0849574   -0.0497221    0.2196370
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0999464    0.0215598    0.1783331
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0549850    0.0268014    0.0831686
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0302846   -0.0014733    0.0620426
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               -0.0564512   -0.1861236    0.0732213
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low                0.0357983   -0.1328302    0.2044268
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0275014   -0.0060169    0.0610198
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0984663    0.0654507    0.1314818
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0431251    0.0142929    0.0719573
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0802740    0.0502942    0.1102539
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0339111   -0.0063137    0.0741359
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0488877    0.0079268    0.0898487
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0155055   -0.0567372    0.0257262
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0487788    0.0039444    0.0936131
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0356832   -0.0545400   -0.0168264
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0318502   -0.0608254   -0.0028751
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0331283    0.0086464    0.0576103
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0670479    0.0317714    0.1023245
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0347367    0.0073614    0.0621120
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0092929   -0.0334019    0.0148162
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.0302553   -0.0029703    0.0634810
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.0934336    0.0616431    0.1252242
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0218540   -0.0036496    0.0473577
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0500462    0.0248294    0.0752631
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low                0.0044274   -0.0444212    0.0532759
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0076638   -0.0561470    0.0408193
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0138354    0.0009524    0.0267183
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0149158    0.0024891    0.0273425
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0178542   -0.0516533    0.0159448
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0026349   -0.0299205    0.0351902
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0042522   -0.0545395    0.0460351
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0228103   -0.0273153    0.0729360
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0054977   -0.0610347    0.0500392
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0090379   -0.0499165    0.0679923
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0541425   -0.0027933    0.1110783
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0943978    0.0337257    0.1550699
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0160202   -0.0634385    0.0313980
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               -0.0434185   -0.0930077    0.0061707
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0192462   -0.0717454    0.1102378
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0632784   -0.0146249    0.1411816
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0059545   -0.0980973    0.0861882
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0300986   -0.0257029    0.0859002
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               -0.0001846   -0.0215583    0.0211891
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0515179    0.0296911    0.0733446
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0722991    0.0488995    0.0956987
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0947198    0.0723189    0.1171207
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0083288   -0.0376626    0.0210049
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0500947    0.0165609    0.0836285
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0246430   -0.0392071    0.0884932
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0499547   -0.0544617    0.1543711
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0015606   -0.0566585    0.0535374
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0943250   -0.0879794    0.2766294
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0220033    0.0054020    0.0386045
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0084205   -0.0090262    0.0258672
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0438829    0.0266153    0.0611504
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.0799725    0.0629607    0.0969843
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0145050   -0.0001251    0.0291352
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0868765    0.0728088    0.1009443
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               -0.0136375   -0.0540887    0.0268138
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0252848   -0.0654725    0.0149028
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0091354   -0.0006587    0.0189295
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0224770    0.0131018    0.0318521
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0010529   -0.0188922    0.0167863
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0014931   -0.0196505    0.0166644
