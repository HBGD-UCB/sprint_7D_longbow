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
![](/tmp/224021b6-6985-48ec-926c-5e9d35a169bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/224021b6-6985-48ec-926c-5e9d35a169bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/224021b6-6985-48ec-926c-5e9d35a169bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/224021b6-6985-48ec-926c-5e9d35a169bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2571429   0.1118044   0.4024813
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1400000   0.0434610   0.2365390
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1020408   0.0169678   0.1871138
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                0.2061080   0.1407667   0.2714493
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                0.2086347   0.1429531   0.2743163
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                0.2067427   0.1415525   0.2719330
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1564508   0.1497952   0.1631064
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1571690   0.1507929   0.1635451
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1560519   0.1493319   0.1627718
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2918632   0.2501647   0.3335616
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2385635   0.1979477   0.2791792
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3844014   0.3330666   0.4357362
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1654259   0.1450922   0.1857596
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1734348   0.1527632   0.1941063
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1689088   0.1481468   0.1896709
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1523492   0.1388529   0.1658455
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1443782   0.1311519   0.1576045
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1483549   0.1349837   0.1617260
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0954188   0.0899618   0.1008759
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0950443   0.0895522   0.1005365
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0947436   0.0892937   0.1001934
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1328564   0.1009635   0.1647494
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1289079   0.0953940   0.1624218
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1072733   0.0813500   0.1331966
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1286855   0.0725731   0.1847979
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2285706   0.1619090   0.2952322
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1929630   0.1180982   0.2678279
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0550000   0.0233769   0.0866231
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0279330   0.0037727   0.0520932
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0394089   0.0126209   0.0661968
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0448430   0.0176609   0.0720252
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0281690   0.0059337   0.0504043
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0179211   0.0023434   0.0334989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0404351   0.0287262   0.0521441
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0537798   0.0351173   0.0724422
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0334196   0.0155838   0.0512554
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1068180   0.0710333   0.1426027
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0639606   0.0294890   0.0984321
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0788909   0.0378357   0.1199461
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0097137   0.0060364   0.0133910
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0078579   0.0053354   0.0103803
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0072302   0.0031184   0.0113419
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0520923   0.0407209   0.0634637
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0277669   0.0236430   0.0318907
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0364108   0.0224407   0.0503810
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0295567   0.0130736   0.0460397
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0359281   0.0159577   0.0558986
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0303030   0.0041328   0.0564732
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1016668   0.0767086   0.1266251
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1088363   0.0818455   0.1358271
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1083781   0.0849155   0.1318407
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0570495   0.0417746   0.0723244
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0579554   0.0437074   0.0722034
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0534343   0.0394669   0.0674018
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0888248   0.0813876   0.0962620
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0835563   0.0763475   0.0907651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0843947   0.0751000   0.0936893
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0597139   0.0462771   0.0731506
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0500117   0.0305388   0.0694845
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0558224   0.0308744   0.0807705
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1396580   0.0911579   0.1881581
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1091450   0.0632721   0.1550180
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0837164   0.0454985   0.1219343
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1156698   0.0660644   0.1652752
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0722881   0.0334416   0.1111347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0748358   0.0399698   0.1097017
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1725827   0.1286788   0.2164865
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1926270   0.1410150   0.2442391
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2982898   0.2342576   0.3623220
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0100806   0.0044919   0.0156694
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0114679   0.0005363   0.0223995
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0129032   0.0046689   0.0211375
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0408602   0.0228578   0.0588626
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0501393   0.0275534   0.0727251
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0449438   0.0144926   0.0753950
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1318452   0.1035281   0.1601623
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0947939   0.0686455   0.1209423
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0661716   0.0470271   0.0853160
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0676154   0.0488991   0.0863317
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0854131   0.0665029   0.1043233
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0336144   0.0211034   0.0461254
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2159405   0.2026855   0.2291956
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2228733   0.2081260   0.2376207
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2304861   0.2135550   0.2474172
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1982786   0.1777886   0.2187686
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2049296   0.1581730   0.2516862
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1718540   0.1326781   0.2110300


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
Birth       ki1119695-PROBIT           BELARUS                        Medium               Low               1.0122589   0.9994596   1.0252220
Birth       ki1119695-PROBIT           BELARUS                        High                 Low               1.0030796   0.9915978   1.0146942
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0045903   0.9886715   1.0207653
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9974502   0.9762600   1.0191004
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8173812   0.6599271   1.0124027
Birth       ki1135781-COHORTS          GUATEMALA                      High                 Low               1.3170603   1.0919959   1.5885113
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               1.0484139   1.0148291   1.0831101
Birth       ki1135781-COHORTS          INDIA                          High                 Low               1.0210545   0.9805018   1.0632844
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9476797   0.9233058   0.9726969
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9737818   0.9524877   0.9955520
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9960750   0.9715711   1.0211970
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9929229   0.9681124   1.0183693
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9702796   0.7511217   1.2533822
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8074380   0.5981952   1.0898719
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.7761961   1.0527088   2.9969092
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               1.4994936   0.8378258   2.6837096
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.5078720   0.1797603   1.4348774
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7165249   0.2941563   1.7453574
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.6281690   0.2321919   1.6994407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.3996416   0.1384965   1.1531947
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3300261   0.8464338   2.0899087
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8264994   0.4503153   1.5169401
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.5987810   0.3174660   1.1293766
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7385549   0.3976505   1.3717155
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.8089418   0.4767475   1.3726067
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.7443236   0.3651080   1.5174073
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.5330320   0.4093846   0.6940250
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6989677   0.4495256   1.0868253
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2155689   0.5531277   2.6713682
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0252525   0.3667455   2.8661370
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.0705194   0.7560907   1.5157068
6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0660125   0.7697780   1.4762471
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0158789   0.7062643   1.4612234
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9366305   0.6442638   1.3616731
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9406864   0.8351115   1.0596081
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9501253   0.8320048   1.0850155
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.8375218   0.5357561   1.3092575
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9348320   0.5658050   1.5445442
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.7815166   0.4530205   1.3482132
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.5994390   0.3378129   1.0636867
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.6249524   0.3142356   1.2429066
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6469773   0.3435107   1.2185347
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1161436   0.7717113   1.6143037
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.7283883   1.2401720   2.4088000
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.1376147   0.4356663   2.9705466
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.2800000   0.5535061   2.9600399
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2270928   0.6534716   2.3042420
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0999409   0.4902032   2.4680988
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7189787   0.5087131   1.0161531
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.5018884   0.3518652   0.7158764
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.2632193   0.8864949   1.8000363
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.4971413   0.3126803   0.7904222
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0321050   0.9487749   1.1227540
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0673592   0.9724338   1.1715507
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0335436   0.8074078   1.3230145
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8667300   0.6821025   1.1013314


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1004264   -0.2183494    0.0174965
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0018417    0.0002602    0.0034231
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0012807   -0.0008629    0.0034242
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0397740   -0.0701421   -0.0094060
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.0057593    0.0016609    0.0098576
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0016894   -0.0038731    0.0004943
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0002379   -0.0009483    0.0014242
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0088895   -0.0271550    0.0093761
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0528935    0.0037511    0.1020359
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0137629   -0.0377239    0.0101981
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0154724   -0.0362416    0.0052968
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0026982   -0.0055457    0.0109422
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0160706   -0.0412780    0.0091368
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0012966   -0.0040449    0.0014518
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0204688   -0.0304243   -0.0105133
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0024875   -0.0101507    0.0151258
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0131346   -0.0076685    0.0339377
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0011082   -0.0117504    0.0139667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0042376   -0.0098269    0.0013517
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0040445   -0.0099448    0.0018558
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0272012   -0.0646504    0.0102479
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0281212   -0.0680486    0.0118062
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0085039   -0.0262901    0.0432978
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0010824   -0.0042494    0.0064142
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0040500   -0.0096575    0.0177575
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0442539   -0.0656040   -0.0229039
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0007762   -0.0161584    0.0146059
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0030880   -0.0067488    0.0129249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0024023   -0.0124488    0.0076442


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.6408163   -1.5691781   -0.0479142
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0088564    0.0010830    0.0165694
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0081192   -0.0055572    0.0216096
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1577777   -0.2887166   -0.0401427
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.0336435    0.0096909    0.0570168
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0112132   -0.0258962    0.0032597
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0024874   -0.0099907    0.0148113
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0717085   -0.2295003    0.0658326
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.2912975   -0.0302404    0.5124834
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3337500   -1.0416461    0.1286986
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.5267990   -1.3752445    0.0185788
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0625559   -0.1489546    0.2351296
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1770920   -0.4913569    0.0709497
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1540378   -0.5203777    0.1240314
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.6472655   -0.9865611   -0.3659200
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0776287   -0.4131012    0.3979420
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.1144115   -0.0849107    0.2771138
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0190546   -0.2287409    0.2168781
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0500977   -0.1183829    0.0140182
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0726529   -0.1817934    0.0264082
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2418817   -0.6191157    0.0474614
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3212064   -0.8609197    0.0619765
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0469603   -0.1641914    0.2198149
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0969617   -0.4895867    0.4525474
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0901792   -0.2710851    0.3487660
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.5052326   -0.7684756   -0.2811741
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0116136   -0.2699667    0.1941820
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0140987   -0.0317747    0.0579325
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0122645   -0.0649239    0.0377910
