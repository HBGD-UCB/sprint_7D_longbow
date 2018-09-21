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

**Outcome Variable:** wasted

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
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       26     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        9     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       44     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        5     134
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       42     121
Birth       ki0047075b-MAL-ED          INDIA                          Low              1        6     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0       29     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1        6     121
Birth       ki0047075b-MAL-ED          INDIA                          High             0       34     121
Birth       ki0047075b-MAL-ED          INDIA                          High             1        4     121
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0       17      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        1      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0       19      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        0      64
Birth       ki0047075b-MAL-ED          NEPAL                          High             0       24      64
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        3      64
Birth       ki0047075b-MAL-ED          PERU                           Low              0       62     230
Birth       ki0047075b-MAL-ED          PERU                           Low              1        1     230
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       53     230
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        2     230
Birth       ki0047075b-MAL-ED          PERU                           High             0      111     230
Birth       ki0047075b-MAL-ED          PERU                           High             1        1     230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       29      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       26      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       34      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        1      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       26      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0        6      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0       62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0       65     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0       61     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0       29     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1        4     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0       10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1        2      23
Birth       ki1119695-PROBIT           BELARUS                        Low              0     4187   13359
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1107   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     4744   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1271   13359
Birth       ki1119695-PROBIT           BELARUS                        High             0     1650   13359
Birth       ki1119695-PROBIT           BELARUS                        High             1      400   13359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1779   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      311   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     8051   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1     1517   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0      759   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1      155   12572
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      232     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       79     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      210     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       61     718
Birth       ki1135781-COHORTS          GUATEMALA                      High             0       95     718
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       41     718
Birth       ki1135781-COHORTS          INDIA                          Low              0      359    1291
Birth       ki1135781-COHORTS          INDIA                          Low              1       55    1291
Birth       ki1135781-COHORTS          INDIA                          Medium           0      293    1291
Birth       ki1135781-COHORTS          INDIA                          Medium           1       77    1291
Birth       ki1135781-COHORTS          INDIA                          High             0      418    1291
Birth       ki1135781-COHORTS          INDIA                          High             1       89    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      673    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      100    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      826    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      135    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      818    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      176    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0    12038   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1     1312   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     9382   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      988   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     5940   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      594   30254
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      534     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       26     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      102     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        8     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0       86     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1        2     758
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       35     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       49     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     132
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       52     138
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        2     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       34     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        7     138
6 months    ki0047075b-MAL-ED          INDIA                          High             0       42     138
6 months    ki0047075b-MAL-ED          INDIA                          High             1        1     138
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        1      95
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0      95
6 months    ki0047075b-MAL-ED          PERU                           Low              0       60     224
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     224
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       57     224
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     224
6 months    ki0047075b-MAL-ED          PERU                           High             0      107     224
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       32      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        3      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       19     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      126     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      476    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       72    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      379    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       55    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      311    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       38    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      115     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       17     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0      114     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       82     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1       19     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      189     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      174     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        5     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      195     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      213     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      207     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      274     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        5     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0     1038    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       44    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0      534    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       30    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      358    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       13    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      432    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       54    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0      342    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1       24    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0      248    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1       24    1124
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5900   15207
6 months    ki1119695-PROBIT           BELARUS                        Low              1       58   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     6685   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       52   15207
6 months    ki1119695-PROBIT           BELARUS                        High             0     2494   15207
6 months    ki1119695-PROBIT           BELARUS                        High             1       18   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1329    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       69    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     5914    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      168    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0      535    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1       17    8032
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      394     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       12     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      322     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1       12     905
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      160     905
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        5     905
6 months    ki1135781-COHORTS          INDIA                          Low              0      399    1385
6 months    ki1135781-COHORTS          INDIA                          Low              1       51    1385
6 months    ki1135781-COHORTS          INDIA                          Medium           0      344    1385
6 months    ki1135781-COHORTS          INDIA                          Medium           1       47    1385
6 months    ki1135781-COHORTS          INDIA                          High             0      483    1385
6 months    ki1135781-COHORTS          INDIA                          High             1       61    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      699    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       45    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      871    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       55    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      843    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       49    2562
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      285     812
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        5     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      265     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        6     812
6 months    ki1148112-LCNI-5           MALAWI                         High             0      248     812
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0    11411   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1     1160   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0    10142   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      932   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     7894   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      629   32168
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     3674    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      231    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      760    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       35    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0      638    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1       33    5371
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       30     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        5     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       37     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        3     117
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       47     132
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        4     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       32     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        7     132
24 months   ki0047075b-MAL-ED          INDIA                          High             0       41     132
24 months   ki0047075b-MAL-ED          INDIA                          High             1        1     132
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       26      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        1      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       24      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        2      91
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       37      91
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1      91
24 months   ki0047075b-MAL-ED          PERU                           Low              0       44     164
24 months   ki0047075b-MAL-ED          PERU                           Low              1        0     164
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       43     164
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        0     164
24 months   ki0047075b-MAL-ED          PERU                           High             0       75     164
24 months   ki0047075b-MAL-ED          PERU                           High             1        2     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       33      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       45     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        2     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       16     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      113     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      169     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       28     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      159     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       20     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      185     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       17     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      127     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      147     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       12     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      195     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      370     994
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       70     994
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0      268     994
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       54     994
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0      176     994
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       56     994
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1473    3852
24 months   ki1119695-PROBIT           BELARUS                        Low              1       15    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1724    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       20    3852
24 months   ki1119695-PROBIT           BELARUS                        High             0      612    3852
24 months   ki1119695-PROBIT           BELARUS                        High             1        8    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       74     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       26     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      241     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       46     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0       11     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1        2     400
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      446    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       19    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      341    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       18    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      170    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        8    1002
24 months   ki1135781-COHORTS          INDIA                          Low              0      393    1370
24 months   ki1135781-COHORTS          INDIA                          Low              1       55    1370
24 months   ki1135781-COHORTS          INDIA                          Medium           0      353    1370
24 months   ki1135781-COHORTS          INDIA                          Medium           1       33    1370
24 months   ki1135781-COHORTS          INDIA                          High             0      504    1370
24 months   ki1135781-COHORTS          INDIA                          High             1       32    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      642    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       51    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      753    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       75    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      769    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       29    2319
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      189     555
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      188     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        3     555
24 months   ki1148112-LCNI-5           MALAWI                         High             0      168     555
24 months   ki1148112-LCNI-5           MALAWI                         High             1        2     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5197   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1     1529   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4409   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1     1259   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     3273   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      824   16491
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     3066    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      756    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      612    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      157    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0      534    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1      113    5238


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
![](/tmp/efa36860-3f4a-4b95-90ff-63cc55359a42/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/efa36860-3f4a-4b95-90ff-63cc55359a42/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/efa36860-3f4a-4b95-90ff-63cc55359a42/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/efa36860-3f4a-4b95-90ff-63cc55359a42/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2571429   0.1118044   0.4024813
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1400000   0.0434610   0.2365390
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1020408   0.0169678   0.1871138
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                0.2061242   0.1407805   0.2714679
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                0.2086404   0.1429595   0.2743213
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                0.2067789   0.1415835   0.2719744
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1564657   0.1498138   0.1631176
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1571768   0.1508005   0.1635530
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1560890   0.1493682   0.1628099
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2941514   0.2526637   0.3356391
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2403316   0.2002311   0.2804320
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3925656   0.3423832   0.4427480
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1651177   0.1447607   0.1854747
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1731091   0.1524387   0.1937796
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1687080   0.1479215   0.1894946
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1523553   0.1388622   0.1658484
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1442852   0.1310692   0.1575012
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1482976   0.1349386   0.1616566
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0954160   0.0899585   0.1008734
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0950428   0.0895504   0.1005353
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0947422   0.0892910   0.1001934
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1328564   0.1009635   0.1647494
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1289079   0.0953940   0.1624218
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1072733   0.0813500   0.1331966
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1281752   0.0724757   0.1838747
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2287773   0.1623299   0.2952247
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1931623   0.1187093   0.2676153
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0550000   0.0233769   0.0866231
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0279330   0.0037727   0.0520932
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0394089   0.0126209   0.0661968
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0448430   0.0176609   0.0720252
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0281690   0.0059337   0.0504043
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0179211   0.0023434   0.0334989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0403719   0.0286743   0.0520695
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0542621   0.0354480   0.0730762
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0331103   0.0154646   0.0507561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1068711   0.0709783   0.1427639
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0639354   0.0294350   0.0984357
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0791231   0.0378847   0.1203615
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0097137   0.0060364   0.0133911
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0078578   0.0053354   0.0103803
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0072302   0.0031184   0.0113419
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0494794   0.0381832   0.0607756
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0276170   0.0234996   0.0317344
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0306237   0.0163048   0.0449427
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0295567   0.0130736   0.0460397
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0359281   0.0159577   0.0558986
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0303030   0.0041328   0.0564732
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1016202   0.0765701   0.1266702
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1087851   0.0816779   0.1358923
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1081395   0.0845917   0.1316874
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0568997   0.0417198   0.0720795
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0587093   0.0445219   0.0728967
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0547502   0.0408512   0.0686492
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0888070   0.0813837   0.0962304
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0835786   0.0763812   0.0907760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0844134   0.0751549   0.0936718
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0596954   0.0462290   0.0731618
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0500585   0.0301553   0.0699617
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0555933   0.0302208   0.0809658
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1397710   0.0917346   0.1878073
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1092670   0.0638828   0.1546512
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0832924   0.0452382   0.1213465
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1152968   0.0666605   0.1639331
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0724878   0.0341171   0.1108586
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0751109   0.0405637   0.1096581
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1728418   0.1284514   0.2172321
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1917924   0.1395634   0.2440215
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2956394   0.2302804   0.3609984
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0100806   0.0044919   0.0156694
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0114679   0.0005363   0.0223995
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0129032   0.0046689   0.0211375
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0408602   0.0228578   0.0588626
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0501393   0.0275534   0.0727251
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0449438   0.0144926   0.0753950
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1346492   0.1059876   0.1633108
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0963231   0.0699171   0.1227292
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0675424   0.0482186   0.0868662
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0675021   0.0486521   0.0863522
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0854022   0.0663717   0.1044328
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0336258   0.0210293   0.0462224
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2159556   0.2026850   0.2292262
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2227466   0.2079783   0.2375149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2301766   0.2132534   0.2470997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1982149   0.1776158   0.2188141
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2041062   0.1562853   0.2519271
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1719617   0.1316168   0.2123067


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1567164   0.0949338   0.2184990
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2079497   0.1424160   0.2734834
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1577315   0.1513599   0.1641031
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2520891   0.2203065   0.2838718
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1711851   0.1506302   0.1917400
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1506598   0.1372339   0.1640858
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0956568   0.0903208   0.1009928
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431334   0.0342652   0.0520016
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0907473   0.0669775   0.1145172
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0084172   0.0066782   0.0101561
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0316235   0.0277962   0.0354508
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0320442   0.0205636   0.0435248
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1148014   0.0980067   0.1315962
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0581577   0.0490934   0.0672220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845872   0.0796525   0.0895218
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0556693   0.0447722   0.0665664
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1810865   0.1471967   0.2149763
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0111630   0.0050745   0.0172515
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449102   0.0320802   0.0577401
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0875912   0.0726161   0.1025664
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0668392   0.0566723   0.0770060
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2190286   0.2088944   0.2291627
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1958763   0.1777261   0.2140265


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.5444444   0.2232211   1.3279198
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.3968254   0.1449304   1.0865246
Birth       ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Medium               Low               1.0122072   0.9994570   1.0251201
Birth       ki1119695-PROBIT           BELARUS                        High                 Low               1.0031760   0.9917289   1.0147553
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0045445   0.9887015   1.0206414
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9975926   0.9764613   1.0191813
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8170336   0.6610956   1.0097541
Birth       ki1135781-COHORTS          GUATEMALA                      High                 Low               1.3345698   1.1109049   1.6032665
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               1.0483982   1.0126890   1.0853665
Birth       ki1135781-COHORTS          INDIA                          High                 Low               1.0217440   0.9788023   1.0665695
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9470311   0.9227754   0.9719243
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9733669   0.9523092   0.9948901
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9960890   0.9715539   1.0212438
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9929380   0.9680693   1.0184455
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9702796   0.7511217   1.2533822
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8074380   0.5981952   1.0898719
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.7848794   1.0600171   3.0054179
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               1.5070179   0.8445212   2.6892195
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.5078720   0.1797603   1.4348774
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7165249   0.2941563   1.7453574
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.6281690   0.2321919   1.6994407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.3996416   0.1384965   1.1531947
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3440570   0.8554560   2.1117265
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8201336   0.4471058   1.5043850
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.5982478   0.3168645   1.1295064
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7403604   0.3981778   1.3766048
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.8089389   0.4767457   1.3726021
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.7443241   0.3651085   1.5174077
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.5581516   0.4249904   0.7330357
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6189189   0.3678924   1.0412300
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2155689   0.5531277   2.6713682
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0252525   0.3667455   2.8661370
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.0705067   0.7546748   1.5185143
6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0641543   0.7669379   1.4765529
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0318039   0.7199308   1.4787801
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9622242   0.6658792   1.3904555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9411259   0.8357601   1.0597753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9505257   0.8327832   1.0849152
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.8385655   0.5322886   1.3210732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9312830   0.5588128   1.5520189
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.7817572   0.4559268   1.3404440
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.5959203   0.3364574   1.0554711
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.6287064   0.3197280   1.2362748
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6514574   0.3494568   1.2144471
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1096417   0.7631258   1.6135016
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.7104627   1.2195382   2.3990088
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.1376147   0.4356663   2.9705466
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.2800000   0.5535061   2.9600399
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2270928   0.6534716   2.3042420
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0999409   0.4902032   2.4680988
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7153636   0.5067991   1.0097594
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.5016175   0.3524375   0.7139425
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.2651786   0.8853008   1.8080599
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.4981451   0.3122309   0.7947599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0314464   0.9479629   1.1222819
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0658514   0.9708687   1.1701265
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0297219   0.7991087   1.3268872
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8675519   0.6778943   1.1102708


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1004264   -0.2183494    0.0174965
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0018255    0.0002510    0.0033999
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0012658   -0.0008659    0.0033974
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0420623   -0.0726481   -0.0114764
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.0060674    0.0017311    0.0104037
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0016955   -0.0038707    0.0004798
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0002408   -0.0009485    0.0014301
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0088895   -0.0271550    0.0093761
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0534037    0.0045511    0.1022564
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0137629   -0.0377239    0.0101981
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0154724   -0.0362416    0.0052968
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0027615   -0.0054847    0.0110077
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0161237   -0.0413887    0.0091412
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0012966   -0.0040449    0.0014518
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0178559   -0.0277344   -0.0079774
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0024875   -0.0101507    0.0151258
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0131813   -0.0077098    0.0340723
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0012580   -0.0115314    0.0140475
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0042199   -0.0097895    0.0013497
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0040261   -0.0099464    0.0018943
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0273142   -0.0643821    0.0097536
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0277481   -0.0667897    0.0112934
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0082447   -0.0268237    0.0433131
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0010824   -0.0042494    0.0064142
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0040500   -0.0096575    0.0177575
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0470580   -0.0687836   -0.0253323
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0006630   -0.0161561    0.0148302
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0030730   -0.0067828    0.0129288
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0023386   -0.0124987    0.0078214


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.6408163   -1.5691781   -0.0479142
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0087783    0.0010396    0.0164572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0080249   -0.0055751    0.0214410
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1668547   -0.2993629   -0.0478596
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.0354435    0.0100708    0.0601660
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0112537   -0.0258815    0.0031655
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0025171   -0.0099934    0.0148727
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0717085   -0.2295003    0.0658326
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.2941076   -0.0249045    0.5138239
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3337500   -1.0416461    0.1286986
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.5267990   -1.3752445    0.0185788
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0640223   -0.1475545    0.2365902
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1776774   -0.4925066    0.0707418
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1540389   -0.5203789    0.1240304
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5646396   -0.9024816   -0.2867915
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0776287   -0.4131012    0.3979420
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.1148180   -0.0854845    0.2781590
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0216315   -0.2247073    0.2184215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0498879   -0.1179242    0.0140077
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0723211   -0.1818043    0.0270195
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2428866   -0.6162477    0.0442262
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3169454   -0.8441996    0.0595676
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0455293   -0.1676055    0.2197585
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0969617   -0.4895867    0.4525474
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0901792   -0.2710851    0.3487660
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.5372451   -0.8056233   -0.3087572
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0099187   -0.2704100    0.1971602
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0140300   -0.0319346    0.0579472
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0119394   -0.0652002    0.0386584
