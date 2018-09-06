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
![](/tmp/09dbb57a-0c7c-4e37-820f-1c7a76a42a7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/09dbb57a-0c7c-4e37-820f-1c7a76a42a7f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0297524   -0.1044626    0.0449578
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0560655   -0.1297374    0.0176064
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0199075   -0.0404006    0.0802156
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0423159   -0.1237931    0.0391614
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                 0.0362880   -0.0542920    0.1268680
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0115542   -0.0838062    0.0606977
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.1003739    0.0157398    0.1850080
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.1130683    0.0146059    0.2115307
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0672723   -0.0285837    0.1631283
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1654520   -0.2178147   -0.1130893
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               NA                -0.1312614   -0.1886527   -0.0738701
0-3 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.1641146   -0.2159167   -0.1123125
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0470613   -0.0504029    0.1445254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0799344   -0.1967263    0.0368575
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0099009   -0.1030951    0.1228970
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0282260   -0.1135964    0.0571443
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0280195   -0.1070516    0.0510126
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0361321   -0.0903065    0.0180423
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0170631   -0.0365160    0.0023898
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                 0.0332490    0.0135528    0.0529451
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0624391    0.0398479    0.0850302
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0863819   -0.1130417   -0.0597222
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0664958   -0.0928053   -0.0401863
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0146021   -0.0431541    0.0139499
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0625814   -0.0866077   -0.0385551
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0845815   -0.1055887   -0.0635743
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0797050   -0.1007238   -0.0586862
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  NA                -0.4553954   -0.5200045   -0.3907863
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               NA                -0.4297253   -0.4847934   -0.3746572
0-3 months     ki1119695-PROBIT           BELARUS                        High                 NA                -0.4184268   -0.4695231   -0.3673304
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1416619   -0.1635674   -0.1197565
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.1380048   -0.1498357   -0.1261739
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1050066   -0.1321486   -0.0778646
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.5536133   -0.5784853   -0.5287414
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.6203900   -0.6484606   -0.5923195
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.6015243   -0.6258234   -0.5772252
0-3 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.0592179   -0.0808393   -0.0375965
0-3 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0386394   -0.0617964   -0.0154824
0-3 months     ki1135781-COHORTS          INDIA                          High                 NA                 0.0244704    0.0029510    0.0459898
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0552405    0.0489326    0.0615484
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                 0.0698593    0.0628752    0.0768433
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0938386    0.0853136    0.1023636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0671158    0.0458953    0.0883364
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                 0.0498112   -0.0041070    0.1037293
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0829828    0.0402244    0.1257412
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0238787   -0.0786020    0.0308445
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0222254   -0.0833450    0.0388941
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0480246    0.0094527    0.0865966
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0347064   -0.0871062    0.0176935
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0554404   -0.1197856    0.0089048
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0413814   -0.0878926    0.0051298
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0812994   -0.1505268   -0.0120720
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0547116   -0.1457982    0.0363750
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0319415   -0.1049359    0.0410530
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0714006   -0.1246208   -0.0181805
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0366471   -0.0883281    0.0150340
3-6 months     ki0047075b-MAL-ED          PERU                           High                 NA                -0.0026131   -0.0575353    0.0523091
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0715579   -0.1614423    0.0183264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.0191458   -0.0823064    0.1205980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0222185   -0.1236957    0.0792588
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0628854   -0.1224689   -0.0033020
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1958083   -0.2816363   -0.1099802
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0818322   -0.1262467   -0.0374177
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0388529   -0.0635833   -0.0141225
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0138182   -0.0387840    0.0111476
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0174871   -0.0436824    0.0087082
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0488620   -0.0728465   -0.0248776
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0446727   -0.0680846   -0.0212608
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0215092   -0.0458802    0.0028619
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0122667   -0.0339219    0.0093885
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0340420    0.0121081    0.0559759
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0068818   -0.0125069    0.0262705
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0821562   -0.1038260   -0.0604863
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0954083   -0.1214982   -0.0693184
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0726224   -0.1020162   -0.0432285
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1517977   -0.1784379   -0.1251574
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.1618822   -0.1892111   -0.1345533
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1501829   -0.1814814   -0.1188844
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0437705    0.0269934    0.0605476
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0490135    0.0259675    0.0720595
3-6 months     ki1119695-PROBIT           BELARUS                        High                 NA                 0.0648274    0.0451580    0.0844968
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0477999   -0.0666724   -0.0289274
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0013653   -0.0118401    0.0091094
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0170739   -0.0061795    0.0403272
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1164126   -0.1334946   -0.0993306
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.1144643   -0.1304094   -0.0985193
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0941425   -0.1087138   -0.0795712
3-6 months     ki1135781-COHORTS          INDIA                          Low                  NA                -0.0663370   -0.0840706   -0.0486033
3-6 months     ki1135781-COHORTS          INDIA                          Medium               NA                -0.0503297   -0.0686134   -0.0320460
3-6 months     ki1135781-COHORTS          INDIA                          High                 NA                -0.0533469   -0.0689829   -0.0377110
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0157498   -0.0229702   -0.0085293
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0087809   -0.0161869   -0.0013749
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0038938   -0.0052393    0.0130268
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0097558   -0.0291527    0.0096411
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0377661   -0.0712531   -0.0042791
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0101198   -0.0259738    0.0462134
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0993433   -0.1271698   -0.0715168
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0861354   -0.1082207   -0.0640501
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0711215   -0.0937851   -0.0484579
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0828932   -0.1116313   -0.0541552
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0927984   -0.1176964   -0.0679004
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0739749   -0.0979785   -0.0499712
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0482255   -0.0857196   -0.0107315
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0574801   -0.0933288   -0.0216313
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0496859   -0.0724650   -0.0269068
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0712917   -0.0945349   -0.0480484
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -0.1089168   -0.1299865   -0.0878470
6-12 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0379535   -0.0580015   -0.0179056
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0772264   -0.1214200   -0.0330328
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0637537   -0.1207819   -0.0067256
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0506769   -0.0928822   -0.0084717
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1518832   -0.1809936   -0.1227727
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.1007375   -0.1537770   -0.0476980
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1217049   -0.1418025   -0.1016074
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0953810   -0.1039659   -0.0867961
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.0775492   -0.0874986   -0.0675999
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0903402   -0.0977484   -0.0829320
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.1157464   -0.1613834   -0.0701094
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -0.1376732   -0.1703324   -0.1050140
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0970466   -0.1541091   -0.0399840
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0709064   -0.0801768   -0.0616360
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0622386   -0.0723059   -0.0521712
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0386580   -0.0484573   -0.0288587
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0408476   -0.0489570   -0.0327383
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0179988   -0.0269418   -0.0090559
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0087594   -0.0182625    0.0007438
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0656890   -0.0776360   -0.0537420
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0519168   -0.0662888   -0.0375448
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0454270   -0.0614997   -0.0293543
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0589954   -0.0703237   -0.0476671
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0690806   -0.0820197   -0.0561415
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0474838   -0.0629093   -0.0320583
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0513017    0.0337827    0.0688206
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.0345229    0.0179937    0.0510521
6-12 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0350381    0.0225145    0.0475616
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0607757   -0.0698353   -0.0517162
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0500377   -0.0551642   -0.0449113
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0377094   -0.0499792   -0.0254395
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1270772   -0.1351932   -0.1189611
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.1120856   -0.1212799   -0.1028913
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1339208   -0.1414631   -0.1263785
6-12 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.1135283   -0.1233208   -0.1037358
6-12 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.1038105   -0.1141352   -0.0934859
6-12 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0814093   -0.0905689   -0.0722498
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1140621   -0.1222042   -0.1059201
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.1069114   -0.1142816   -0.0995411
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0982262   -0.1054158   -0.0910366
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0090610   -0.0252519    0.0071298
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0040459   -0.0188174    0.0107257
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0111418   -0.0256993    0.0034157
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0803426   -0.0840151   -0.0766701
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0767398   -0.0810048   -0.0724747
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0788888   -0.0830677   -0.0747098
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0401485   -0.0474087   -0.0328883
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0503403   -0.0620448   -0.0386357
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0387226   -0.0500797   -0.0273656
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0172158   -0.0272181   -0.0072134
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0218881   -0.0308183   -0.0129579
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0199639   -0.0283305   -0.0115973
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0205090   -0.0308235   -0.0101945
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.0244755   -0.0367513   -0.0121997
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0191976   -0.0322652   -0.0061300
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0486954   -0.0659209   -0.0314699
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0239085   -0.0373406   -0.0104765
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0164014   -0.0302131   -0.0025896
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0166962    0.0033363    0.0300562
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0118619    0.0016142    0.0221097
12-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0096177   -0.0199143    0.0006788
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0395468   -0.0536699   -0.0254236
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.0340843   -0.0521478   -0.0160207
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0133670   -0.0295842    0.0028502
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0428013   -0.0550104   -0.0305921
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.0431254   -0.0697924   -0.0164584
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0368600   -0.0468452   -0.0268747
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0086287   -0.0147998   -0.0024577
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.0110639   -0.0167296   -0.0053982
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0075745    0.0018344    0.0133146
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0511917   -0.0566861   -0.0456973
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.0247475   -0.0303123   -0.0191826
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0205016   -0.0256401   -0.0153630
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0059234   -0.0123736    0.0005269
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.0130861   -0.0197366   -0.0064357
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0007601   -0.0089562    0.0074359
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0479608   -0.0636986   -0.0322231
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0430253   -0.0655009   -0.0205497
12-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0359962   -0.0676670   -0.0043255
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0428678   -0.0580223   -0.0277134
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.0534261   -0.0647533   -0.0420989
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0176386   -0.0804099    0.0451327
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0327754   -0.0369778   -0.0285730
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.0278273   -0.0321517   -0.0235029
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0333912   -0.0376707   -0.0291117
12-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0446309   -0.0492818   -0.0399800
12-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.0368561   -0.0415215   -0.0321907
12-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0309111   -0.0352440   -0.0265782
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0676717   -0.0712385   -0.0641049
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.0669675   -0.0706041   -0.0633308
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0442695   -0.0476705   -0.0408686
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0057025   -0.0156498    0.0042447
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0053282   -0.0143432    0.0036868
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0138302   -0.0232755   -0.0043849
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0203312   -0.0225289   -0.0181335
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.0190984   -0.0218972   -0.0162996
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0182168   -0.0209176   -0.0155160
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0136510   -0.0165329   -0.0107691
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.0140226   -0.0197138   -0.0083314
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0152944   -0.0210161   -0.0095726


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0263132   -0.1319071    0.0792807
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0496599   -0.0438319    0.1431516
0-3 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Medium               Low                0.0786039   -0.0432026    0.2004104
0-3 months     ki0047075b-MAL-ED          INDIA                          High                 Low                0.0307617   -0.0773262    0.1388495
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0126945   -0.1160930    0.1414819
0-3 months     ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0331016   -0.1603728    0.0941697
0-3 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0341906   -0.0428965    0.1112778
0-3 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0013374   -0.0713571    0.0740319
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               -0.1269957   -0.2769964    0.0230050
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               -0.0371604   -0.1821990    0.1078783
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0002065   -0.1163083    0.1167213
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0079060   -0.1087209    0.0929088
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0503120    0.0245035    0.0761206
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0795022    0.0549869    0.1040174
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0198861   -0.0169471    0.0567193
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0717798    0.0334244    0.1101353
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               -0.0220001   -0.0539448    0.0099445
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               -0.0171237   -0.0492689    0.0150216
0-3 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0256701   -0.0037199    0.0550602
0-3 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0369687    0.0029524    0.0709850
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0036572   -0.0208891    0.0282035
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0366553    0.0019741    0.0713366
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low               -0.0667767   -0.1040417   -0.0295116
0-3 months     ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0479109   -0.0825193   -0.0133026
0-3 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0205785   -0.0111598    0.0523169
0-3 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0836883    0.0529921    0.1143846
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0146188    0.0060711    0.0231665
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0385981    0.0289556    0.0482406
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0173047   -0.0750543    0.0404449
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0158670   -0.0327116    0.0644455
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0016533   -0.0801777    0.0834844
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0719034    0.0050345    0.1387723
3-6 months     ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0207340   -0.0972120    0.0557440
3-6 months     ki0047075b-MAL-ED          INDIA                          High                 Low               -0.0066750   -0.0704440    0.0570940
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0265878   -0.0878203    0.1409959
3-6 months     ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0493580   -0.0512433    0.1499593
3-6 months     ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Medium               Low                0.0347536   -0.0384096    0.1079168
3-6 months     ki0047075b-MAL-ED          PERU                           High                 Low                0.0687875   -0.0058366    0.1434116
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0907037   -0.0451398    0.2265472
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0493395   -0.0844270    0.1831059
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.1329228   -0.2374570   -0.0283887
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               -0.0189468   -0.0912692    0.0533757
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0250347    0.0034168    0.0466525
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0213658   -0.0144734    0.0572049
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0041894   -0.0292023    0.0375810
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0273528   -0.0066675    0.0613732
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0463087    0.0155842    0.0770331
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0191485   -0.0098320    0.0481290
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0132521   -0.0459877    0.0194835
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0095338   -0.0258564    0.0449240
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0100846   -0.0482737    0.0281046
3-6 months     ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0016148   -0.0394249    0.0426544
3-6 months     ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Medium               Low                0.0052430   -0.0097969    0.0202829
3-6 months     ki1119695-PROBIT           BELARUS                        High                 Low                0.0210569    0.0062840    0.0358297
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0464346    0.0251628    0.0677064
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0648737    0.0351284    0.0946191
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0019483   -0.0187427    0.0226392
3-6 months     ki1135781-COHORTS          GUATEMALA                      High                 Low                0.0222701    0.0022399    0.0423003
3-6 months     ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Medium               Low                0.0160072   -0.0084332    0.0404477
3-6 months     ki1135781-COHORTS          INDIA                          High                 Low                0.0129900   -0.0094616    0.0354416
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0069689   -0.0030447    0.0169824
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0196436    0.0083212    0.0309659
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0280103   -0.0647829    0.0087623
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0198756   -0.0197850    0.0595361
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low                0.0132078   -0.0220578    0.0484735
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low                0.0282218   -0.0074058    0.0638494
6-12 months    ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0099052   -0.0473465    0.0275361
6-12 months    ki0047075b-MAL-ED          INDIA                          High                 Low                0.0089184   -0.0278609    0.0456977
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               -0.0092545   -0.0606385    0.0421295
6-12 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               -0.0014603   -0.0451208    0.0422002
6-12 months    ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0376251   -0.0690243   -0.0062260
6-12 months    ki0047075b-MAL-ED          PERU                           High                 Low                0.0333381    0.0028062    0.0638701
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0134727   -0.0586243    0.0855697
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0265495   -0.0345034    0.0876023
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0511457   -0.0083425    0.1106338
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0301782   -0.0042804    0.0646369
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low                0.0178318    0.0046632    0.0310003
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low                0.0050408   -0.0080706    0.0181521
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               -0.0219268   -0.0754866    0.0316330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low                0.0186998   -0.0521359    0.0895355
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low                0.0086678   -0.0050166    0.0223523
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0322484    0.0187473    0.0457494
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0228488    0.0107829    0.0349147
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0320883    0.0196057    0.0445709
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low                0.0137722   -0.0041391    0.0316835
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0202620    0.0011240    0.0393999
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0100851   -0.0272855    0.0071152
6-12 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0115116   -0.0076251    0.0306484
6-12 months    ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Medium               Low               -0.0167787   -0.0249421   -0.0086154
6-12 months    ki1119695-PROBIT           BELARUS                        High                 Low               -0.0162636   -0.0290995   -0.0034277
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low                0.0107380    0.0004781    0.0209979
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0230664    0.0078972    0.0382355
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0149916    0.0035206    0.0264626
6-12 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0068436   -0.0172211    0.0035339
6-12 months    ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Medium               Low                0.0097177   -0.0038639    0.0232994
6-12 months    ki1135781-COHORTS          INDIA                          High                 Low                0.0321189    0.0192588    0.0449790
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0071508   -0.0035783    0.0178799
6-12 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0158359    0.0051903    0.0264816
6-12 months    ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Medium               Low                0.0050152   -0.0153099    0.0253402
6-12 months    ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0020807   -0.0224137    0.0182522
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0036029   -0.0018258    0.0090315
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0014538   -0.0037818    0.0066895
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0101918   -0.0232632    0.0028797
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low                0.0014259   -0.0115077    0.0143595
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               -0.0046723   -0.0167916    0.0074470
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               -0.0027481   -0.0140044    0.0085082
12-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               -0.0039665   -0.0199271    0.0119940
12-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low                0.0013114   -0.0152114    0.0178341
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low                0.0247869    0.0029434    0.0466304
12-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low                0.0322940    0.0102150    0.0543731
12-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               -0.0048343   -0.0217068    0.0120382
12-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               -0.0263140   -0.0431410   -0.0094869
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low                0.0054625   -0.0174092    0.0283342
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low                0.0261798    0.0047553    0.0476043
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               -0.0003241   -0.0289855    0.0283372
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low                0.0059413   -0.0091586    0.0210412
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               -0.0024351   -0.0108119    0.0059416
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low                0.0162032    0.0077705    0.0246360
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low                0.0264442    0.0184961    0.0343923
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low                0.0306901    0.0229085    0.0384717
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               -0.0071628   -0.0163814    0.0020559
12-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low                0.0051632   -0.0051115    0.0154379
12-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low                0.0049356   -0.0157276    0.0255987
12-24 months   ki1119695-PROBIT           BELARUS                        High                 Low                0.0119646   -0.0247069    0.0486360
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               -0.0105583   -0.0294782    0.0083617
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low                0.0252292   -0.0393455    0.0898039
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low                0.0049481   -0.0006002    0.0104963
12-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               -0.0006158   -0.0061464    0.0049149
12-24 months   ki1135781-COHORTS          INDIA                          Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Medium               Low                0.0077748    0.0012199    0.0143297
12-24 months   ki1135781-COHORTS          INDIA                          High                 Low                0.0137198    0.0073695    0.0200701
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low                0.0007042   -0.0042178    0.0056262
12-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low                0.0234022    0.0185779    0.0282265
12-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low                0.0003743   -0.0130687    0.0138173
12-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               -0.0081277   -0.0218780    0.0056226
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low                0.0012328   -0.0022021    0.0046676
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low                0.0021144   -0.0011955    0.0054243
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               -0.0003716   -0.0065461    0.0058028
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               -0.0016434   -0.0078834    0.0045966
