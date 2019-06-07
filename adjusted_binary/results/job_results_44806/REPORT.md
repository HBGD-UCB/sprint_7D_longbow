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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        feducyrs    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ---------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       48    138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        3    138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       38    138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        0    138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       45    138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        4    138
0-24 months   ki0047075b-MAL-ED          INDIA                          High                0       43    139
0-24 months   ki0047075b-MAL-ED          INDIA                          High                1        0    139
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       51    139
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1        4    139
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       32    139
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        9    139
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       40     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        1     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       27     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        0     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       27     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        1     96
0-24 months   ki0047075b-MAL-ED          PERU                           High                0      110    234
0-24 months   ki0047075b-MAL-ED          PERU                           High                1        1    234
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       63    234
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0    234
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       60    234
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        0    234
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       38     99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35     99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1     99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25     99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     99
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129    206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0    206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58    206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0    206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19    206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0    206
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      112    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1        6    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      151    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       17    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      131    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1        9    426
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       23     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0       25     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       28     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1       10     94
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      216    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        4    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      208    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        8    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        3    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      282    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        4    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      215    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      207    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        8    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      393   2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1        9   2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1123   2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       29   2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      581   2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       20   2155
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      122    591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       23    591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      218    591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       38    591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      166    591
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       24    591
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     1200   7675
0-24 months   ki1119695-PROBIT           BELARUS                        High                1        9   7675
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     2641   7675
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       41   7675
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     3744   7675
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       40   7675
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      599   9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9   9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1537   9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       45   9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     6758   9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1      108   9056
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      123    478
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        5    478
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      146    478
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       10    478
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      184    478
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       10    478
0-24 months   ki1135781-COHORTS          INDIA                          High                0      454   1242
0-24 months   ki1135781-COHORTS          INDIA                          High                1       33   1242
0-24 months   ki1135781-COHORTS          INDIA                          Low                 0      366   1242
0-24 months   ki1135781-COHORTS          INDIA                          Low                 1       38   1242
0-24 months   ki1135781-COHORTS          INDIA                          Medium              0      324   1242
0-24 months   ki1135781-COHORTS          INDIA                          Medium              1       27   1242
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0      892   2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       31   2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      736   2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       44   2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      897   2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       59   2659
0-24 months   ki1148112-LCNI-5           MALAWI                         High                0      214    712
0-24 months   ki1148112-LCNI-5           MALAWI                         High                1        2    712
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      258    712
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        1    712
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      234    712
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3    712
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     1880   7464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1       93   7464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     2729   7464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      172   7464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     2427   7464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      163   7464
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      100    762
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1        6    762
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0      502    762
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1       41    762
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      103    762
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       10    762
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                0       49    138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                1        2    138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 0       36    138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 1        2    138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              0       47    138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2    138
0-6 months    ki0047075b-MAL-ED          INDIA                          High                0       41    138
0-6 months    ki0047075b-MAL-ED          INDIA                          High                1        1    138
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 0       50    138
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 1        5    138
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              0       37    138
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              1        4    138
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       40     96
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        1     96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 0       27     96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 1        0     96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              0       28     96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              1        0     96
0-6 months    ki0047075b-MAL-ED          PERU                           High                0      111    234
0-6 months    ki0047075b-MAL-ED          PERU                           High                1        0    234
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 0       63    234
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 1        0    234
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              0       60    234
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              1        0    234
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       37     98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35     98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1     98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25     98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     98
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129    206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0    206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58    206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0    206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19    206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0    206
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      213    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        6    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      209    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        6    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        2    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                0       75    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                1        1    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      102    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1        2    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0       68    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        2    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      364   2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       13   2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1076   2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       23   2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      559   2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       16   2051
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0      116    541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1       15    541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      212    541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       28    541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0      148    541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       22    541
0-6 months    ki1119695-PROBIT           BELARUS                        High                0      867   6409
0-6 months    ki1119695-PROBIT           BELARUS                        High                1       94   6409
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 0     2032   6409
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 1      213   6409
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              0     2910   6409
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              1      293   6409
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                0       42    594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                1        2    594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0       99    594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1        2    594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0      439    594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       10    594
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                0      259    804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                1       18    804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 0      209    804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 1       11    804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              0      288    804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              1       19    804
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                0       10     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 0        8     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              0        5     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       48    138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        3    138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       38    138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        0    138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       45    138
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        4    138
6-24 months   ki0047075b-MAL-ED          INDIA                          High                0       43    139
6-24 months   ki0047075b-MAL-ED          INDIA                          High                1        0    139
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       51    139
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1        4    139
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       32    139
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        9    139
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       40     96
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        1     96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       27     96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        0     96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       27     96
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        1     96
6-24 months   ki0047075b-MAL-ED          PERU                           High                0      110    234
6-24 months   ki0047075b-MAL-ED          PERU                           High                1        1    234
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       63    234
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0    234
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       60    234
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        0    234
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       38     99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35     99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1     99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25     99
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     99
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129    206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0    206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58    206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0    206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19    206
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0    206
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      112    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1        6    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      151    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       17    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      131    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1        9    426
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       23     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0       25     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       28     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1       10     94
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      216    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        4    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      208    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        8    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        3    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      282    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        4    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      215    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      207    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        8    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      393   2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1        9   2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1123   2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       29   2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      581   2155
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       20   2155
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      122    591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       23    591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      218    591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       38    591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      166    591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       24    591
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     1200   7675
6-24 months   ki1119695-PROBIT           BELARUS                        High                1        9   7675
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     2641   7675
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       41   7675
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     3744   7675
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       40   7675
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      599   9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9   9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1537   9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       45   9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     6758   9056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1      108   9056
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      123    478
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        5    478
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      146    478
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       10    478
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      184    478
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       10    478
6-24 months   ki1135781-COHORTS          INDIA                          High                0      454   1242
6-24 months   ki1135781-COHORTS          INDIA                          High                1       33   1242
6-24 months   ki1135781-COHORTS          INDIA                          Low                 0      366   1242
6-24 months   ki1135781-COHORTS          INDIA                          Low                 1       38   1242
6-24 months   ki1135781-COHORTS          INDIA                          Medium              0      324   1242
6-24 months   ki1135781-COHORTS          INDIA                          Medium              1       27   1242
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0      892   2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       31   2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      736   2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       44   2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      897   2659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       59   2659
6-24 months   ki1148112-LCNI-5           MALAWI                         High                0      214    712
6-24 months   ki1148112-LCNI-5           MALAWI                         High                1        2    712
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      258    712
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        1    712
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      234    712
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3    712
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     1880   7464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1       93   7464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     2729   7464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      172   7464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     2427   7464
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      163   7464
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      100    762
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1        6    762
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0      502    762
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1       41    762
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      103    762
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       10    762


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/ffb07de4-a614-48db-bbba-b68c3e89a3d7/650a73c3-959b-40f9-ae7a-c4c6b28e9787/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ffb07de4-a614-48db-bbba-b68c3e89a3d7/650a73c3-959b-40f9-ae7a-c4c6b28e9787/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ffb07de4-a614-48db-bbba-b68c3e89a3d7/650a73c3-959b-40f9-ae7a-c4c6b28e9787/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ffb07de4-a614-48db-bbba-b68c3e89a3d7/650a73c3-959b-40f9-ae7a-c4c6b28e9787/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0508475   0.0109061   0.0907888
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1011905   0.0854021   0.1169788
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0642857   0.0488298   0.0797417
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1586207   0.0991083   0.2181331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1484375   0.1048486   0.1920264
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1263158   0.0790393   0.1735923
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0074442   0.0020141   0.0128743
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0152871   0.0071141   0.0234601
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0105708   0.0017344   0.0194072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0148026   0.0052031   0.0244022
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0284450   0.0202527   0.0366373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0157297   0.0127864   0.0186730
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0390625   0.0054636   0.0726614
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0641026   0.0256263   0.1025788
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0515464   0.0203999   0.0826929
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0677618   0.0454305   0.0900931
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0940594   0.0655831   0.1225357
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0769231   0.0490351   0.1048110
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0335861   0.0219612   0.0452111
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0564103   0.0402163   0.0726042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0617155   0.0464586   0.0769723
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0471363   0.0369400   0.0573327
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0592899   0.0500016   0.0685782
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0629344   0.0528260   0.0730427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0566038   0.0166371   0.0965705
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0755064   0.0485627   0.1024502
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0884956   0.0317277   0.1452635
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0344828   0.0160596   0.0529059
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0209281   0.0124631   0.0293931
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0278261   0.0143793   0.0412729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1145038   0.0599258   0.1690818
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1166667   0.0760149   0.1573185
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1294118   0.0789086   0.1799149
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0978148   0.0407328   0.1548968
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0948775   0.0419991   0.1477560
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0914767   0.0447504   0.1382030
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0649819   0.0359361   0.0940278
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0500000   0.0211827   0.0788173
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0618893   0.0349191   0.0888594
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0508475   0.0109061   0.0907888
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1011905   0.0854021   0.1169788
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0642857   0.0488298   0.0797417
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1586207   0.0991083   0.2181331
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1484375   0.1048486   0.1920264
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1263158   0.0790393   0.1735923
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0074442   0.0020141   0.0128743
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0152871   0.0071141   0.0234601
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0105708   0.0017344   0.0194072
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0148026   0.0052031   0.0244022
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0284450   0.0202527   0.0366373
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0157297   0.0127864   0.0186730
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0390625   0.0054636   0.0726614
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0641026   0.0256263   0.1025788
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0515464   0.0203999   0.0826929
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0677618   0.0454305   0.0900931
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0940594   0.0655831   0.1225357
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0769231   0.0490351   0.1048110
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0335861   0.0219612   0.0452111
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0564103   0.0402163   0.0726042
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0617155   0.0464586   0.0769723
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0471363   0.0369400   0.0573327
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0592899   0.0500016   0.0685782
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0629344   0.0528260   0.0730427
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0566038   0.0166371   0.0965705
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0755064   0.0485627   0.1024502
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0884956   0.0317277   0.1452635


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0751174   0.0517075   0.0985272
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1438240   0.1155088   0.1721392
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0117264   0.0044979   0.0189548
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178887   0.0151586   0.0206188
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0523013   0.0323220   0.0722805
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0573419   0.0514451   0.0632387
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0748031   0.0530263   0.0965800
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253535   0.0185487   0.0321583
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1201479   0.0927249   0.1475708
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0936183   0.0451320   0.1421047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0597015   0.0433139   0.0760891
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0751174   0.0517075   0.0985272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1438240   0.1155088   0.1721392
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0117264   0.0044979   0.0189548
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178887   0.0151586   0.0206188
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0523013   0.0323220   0.0722805
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0573419   0.0514451   0.0632387
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0748031   0.0530263   0.0965800


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.9900794   1.0314072   3.839818
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2642857   0.6895423   2.318086
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9358016   0.5811227   1.506953
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7963387   0.4687533   1.352855
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.0535670   1.1826494   3.565839
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.4200141   0.5489462   3.673292
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9216182   0.9451494   3.906913
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0626274   0.5410654   2.086951
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.6410256   0.5749130   4.684126
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.3195876   0.4612384   3.775296
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3880888   0.8872928   2.171539
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1351981   0.6954913   1.852898
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6795699   1.0712826   2.633250
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.8375287   1.2009106   2.811626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2578384   0.9707351   1.629855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3351559   1.0284724   1.733290
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3339472   0.6040752   2.945685
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.5634218   0.6063153   4.031381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6069154   0.3105289   1.186190
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8069565   0.3926323   1.658495
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0188889   0.5645557   1.838852
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1301961   0.6104029   2.092623
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9699711   0.7071601   1.330454
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              0.9352037   0.6850202   1.276759
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.7694444   0.3710385   1.595642
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9524068   0.5101642   1.778013
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.9900794   1.0314072   3.839818
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2642857   0.6895423   2.318086
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231822
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9358016   0.5811227   1.506953
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7963387   0.4687533   1.352855
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.0535670   1.1826494   3.565839
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.4200141   0.5489462   3.673292
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9216182   0.9451494   3.906913
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0626274   0.5410654   2.086951
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.6410256   0.5749130   4.684126
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.3195876   0.4612384   3.775296
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3880888   0.8872928   2.171539
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1351981   0.6954913   1.852898
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6795699   1.0712826   2.633250
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.8375287   1.2009106   2.811626
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2578384   0.9707351   1.629855
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3351559   1.0284724   1.733290
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3339472   0.6040752   2.945685
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.5634218   0.6063153   4.031381


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0242699    0.0072146   0.0413252
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0147967   -0.0658415   0.0362482
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0042822   -0.0018227   0.0103871
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0030861   -0.0062537   0.0124258
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0132388   -0.0171499   0.0436274
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0111432   -0.0070936   0.0293800
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0168088    0.0062977   0.0273198
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0102056    0.0015620   0.0188491
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0181994   -0.0220417   0.0584404
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0091293   -0.0252829   0.0070244
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0056441   -0.0421911   0.0534792
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0041964   -0.0285458   0.0201529
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0052805   -0.0283215   0.0177605
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0242699    0.0072146   0.0413252
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0147967   -0.0658415   0.0362482
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0042822   -0.0018227   0.0103871
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0030861   -0.0062537   0.0124258
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0132388   -0.0171499   0.0436274
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0111432   -0.0070936   0.0293800
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0168088    0.0062977   0.0273198
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0102056    0.0015620   0.0188491
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0181994   -0.0220417   0.0584404


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3230932   -0.0925159   0.5805985
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1028803   -0.5210479   0.2003243
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3651778   -0.1974058   0.6634398
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1725146   -0.5539660   0.5593648
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2531250   -0.6098525   0.6534948
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1412228   -0.1222469   0.3428378
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3335409    0.0979768   0.5075872
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1779775    0.0123899   0.3158018
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2432969   -0.5090809   0.6205641
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3600796   -1.1618510   0.1443368
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0469759   -0.4470583   0.3723440
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0448248   -0.3375056   0.1838098
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0884477   -0.5507252   0.2360230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3230932   -0.0925159   0.5805985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1028803   -0.5210479   0.2003243
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3651778   -0.1974058   0.6634398
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1725146   -0.5539660   0.5593648
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2531250   -0.6098525   0.6534948
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1412228   -0.1222469   0.3428378
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3335409    0.0979768   0.5075872
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1779775    0.0123899   0.3158018
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2432969   -0.5090809   0.6205641
