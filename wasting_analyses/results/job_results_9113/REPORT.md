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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        feducyrs    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       32     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        3     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       49     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1        1     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       47     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        2     134
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       46     121
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        2     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       35     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        0     121
Birth       ki0047075b-MAL-ED          INDIA                          High              0       38     121
Birth       ki0047075b-MAL-ED          INDIA                          High              1        0     121
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       18      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        0      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0       19      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        0      64
Birth       ki0047075b-MAL-ED          NEPAL                          High              0       27      64
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        0      64
Birth       ki0047075b-MAL-ED          PERU                           Low               0       63     230
Birth       ki0047075b-MAL-ED          PERU                           Low               1        0     230
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       55     230
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        0     230
Birth       ki0047075b-MAL-ED          PERU                           High              0      112     230
Birth       ki0047075b-MAL-ED          PERU                           High              1        0     230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       26      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       27      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        6      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        1      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0       67     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0       63     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0       31     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        2     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1      23
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4949   13359
Birth       ki1119695-PROBIT           BELARUS                        Low               1      345   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     5617   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium            1      398   13359
Birth       ki1119695-PROBIT           BELARUS                        High              0     1919   13359
Birth       ki1119695-PROBIT           BELARUS                        High              1      131   13359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1974   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      116   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     8967   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      601   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0      868   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1       46   12572
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      287     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       24     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      252     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       19     718
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      125     718
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       11     718
Birth       ki1135781-COHORTS          INDIA                          Low               0      407    1291
Birth       ki1135781-COHORTS          INDIA                          Low               1        7    1291
Birth       ki1135781-COHORTS          INDIA                          Medium            0      349    1291
Birth       ki1135781-COHORTS          INDIA                          Medium            1       21    1291
Birth       ki1135781-COHORTS          INDIA                          High              0      481    1291
Birth       ki1135781-COHORTS          INDIA                          High              1       26    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      753    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       20    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      919    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       42    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0      945    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       49    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0    13134   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1      216   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0    10214   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      156   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     6420   30254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1      114   30254
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      556     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1        4     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      110     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        0     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0       88     758
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1        0     758
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       36     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       44     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        2     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       50     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        0     132
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       53     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               1        1     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       39     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        2     138
6 months    ki0047075b-MAL-ED          INDIA                          High              0       42     138
6 months    ki0047075b-MAL-ED          INDIA                          High              1        1     138
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       28      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0      95
6 months    ki0047075b-MAL-ED          PERU                           Low               0       60     224
6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       57     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     224
6 months    ki0047075b-MAL-ED          PERU                           High              0      107     224
6 months    ki0047075b-MAL-ED          PERU                           High              1        0     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       34      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        1      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       19     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      127     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      523    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       25    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      421    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1       13    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      344    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        5    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      127     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0      138     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        9     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       96     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        5     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      198     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      179     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      200     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        3     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      213     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1079    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        3    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      559    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        5    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      367    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      478    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1        8    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      364    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        2    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      268    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        4    1124
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5947   15207
6 months    ki1119695-PROBIT           BELARUS                        Low               1       11   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     6734   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium            1        3   15207
6 months    ki1119695-PROBIT           BELARUS                        High              0     2510   15207
6 months    ki1119695-PROBIT           BELARUS                        High              1        2   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1374    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       24    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     6036    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       46    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      546    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1        6    8032
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      405     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        1     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      332     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        2     905
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      163     905
6 months    ki1135781-COHORTS          GUATEMALA                      High              1        2     905
6 months    ki1135781-COHORTS          INDIA                          Low               0      435    1385
6 months    ki1135781-COHORTS          INDIA                          Low               1       15    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            0      378    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            1       13    1385
6 months    ki1135781-COHORTS          INDIA                          High              0      530    1385
6 months    ki1135781-COHORTS          INDIA                          High              1       14    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      737    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      910    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       16    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0      882    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1       10    2562
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      290     812
6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      271     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     812
6 months    ki1148112-LCNI-5           MALAWI                         High              0      251     812
6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0    12383   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1      188   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0    10928   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      146   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     8419   32168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      104   32168
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     3881    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       24    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      791    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        4    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0      665    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        6    5371
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       42     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       40     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        0     117
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       51     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               1        0     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       39     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        0     132
24 months   ki0047075b-MAL-ED          INDIA                          High              0       42     132
24 months   ki0047075b-MAL-ED          INDIA                          High              1        0     132
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       26      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       38      91
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        0      91
24 months   ki0047075b-MAL-ED          PERU                           Low               0       44     164
24 months   ki0047075b-MAL-ED          PERU                           Low               1        0     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       43     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            1        0     164
24 months   ki0047075b-MAL-ED          PERU                           High              0       76     164
24 months   ki0047075b-MAL-ED          PERU                           High              1        1     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       47     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       16     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      114     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      191     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1        6     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      179     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1        0     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      199     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1        3     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      142     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      159     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      209     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1        2     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      428     994
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1       12     994
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      310     994
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       12     994
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      226     994
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1        6     994
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1485    3852
24 months   ki1119695-PROBIT           BELARUS                        Low               1        3    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1743    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium            1        1    3852
24 months   ki1119695-PROBIT           BELARUS                        High              0      620    3852
24 months   ki1119695-PROBIT           BELARUS                        High              1        0    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0       90     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       10     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      268     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       19     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       13     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1        0     400
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      464    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1        1    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      356    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1        3    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High              0      178    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High              1        0    1002
24 months   ki1135781-COHORTS          INDIA                          Low               0      442    1370
24 months   ki1135781-COHORTS          INDIA                          Low               1        6    1370
24 months   ki1135781-COHORTS          INDIA                          Medium            0      383    1370
24 months   ki1135781-COHORTS          INDIA                          Medium            1        3    1370
24 months   ki1135781-COHORTS          INDIA                          High              0      534    1370
24 months   ki1135781-COHORTS          INDIA                          High              1        2    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      686    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      812    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1       16    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      796    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1        2    2319
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      194     555
24 months   ki1148112-LCNI-5           MALAWI                         Low               1        0     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      191     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1        0     555
24 months   ki1148112-LCNI-5           MALAWI                         High              0      169     555
24 months   ki1148112-LCNI-5           MALAWI                         High              1        1     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6475   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      251   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5446   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      222   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     3935   16491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      162   16491
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     3715    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      107    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      744    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       25    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      630    5238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       17    5238


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
![](/tmp/a94187d6-cfe7-4eeb-a6c2-dffe0ceb9cab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a94187d6-cfe7-4eeb-a6c2-dffe0ceb9cab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a94187d6-cfe7-4eeb-a6c2-dffe0ceb9cab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a94187d6-cfe7-4eeb-a6c2-dffe0ceb9cab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.0651681    0.0261785   0.1041577
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.0661679    0.0369848   0.0953510
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.0639024    0.0287466   0.0990583
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0555024    0.0456861   0.0653187
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0628135    0.0579518   0.0676753
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0503282    0.0361545   0.0645020
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0771704    0.0474909   0.1068499
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0701107    0.0396897   0.1005317
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.0808824    0.0350266   0.1267381
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0169082    0.0044842   0.0293322
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0567568    0.0331717   0.0803418
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0512821    0.0320749   0.0704892
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0258732    0.0146796   0.0370669
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0437045    0.0307767   0.0566323
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0492958    0.0358352   0.0627563
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0161798    0.0126408   0.0197188
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0150434    0.0111068   0.0189800
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0174472    0.0126221   0.0222723
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.0456204    0.0318281   0.0594127
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0299539    0.0168697   0.0430382
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0143266    0.0000589   0.0285944
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  NA                0.0378788    0.0052691   0.0704884
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Medium               NA                0.0612245    0.0224179   0.1000310
6 months    ki1000304b-SAS-FoodSuppl   INDIA         High                 NA                0.0495050    0.0071447   0.0918652
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0171674    0.0103579   0.0239769
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0075633    0.0053858   0.0097408
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0108696    0.0022191   0.0195200
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0333333    0.0167422   0.0499245
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0332481    0.0154711   0.0510250
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0257353    0.0124244   0.0390462
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0094086    0.0024703   0.0163470
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0172786    0.0088841   0.0256732
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0112108    0.0043001   0.0181214
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0149551    0.0114128   0.0184974
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0131840    0.0100904   0.0162776
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0122023    0.0081021   0.0163025
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.0272727    0.0057284   0.0488171
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.0372671    0.0079792   0.0665550
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.0258621   -0.0030513   0.0547754
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0373179    0.0308349   0.0438009
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0391673    0.0310178   0.0473167
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0395411    0.0309606   0.0481216
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0279958    0.0198522   0.0361394
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0325098    0.0155348   0.0494847
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0262751    0.0068641   0.0456861


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.0654241   0.0324258   0.0984223
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0606904   0.0565167   0.0648642
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0752089   0.0559050   0.0945128
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0418280   0.0309034   0.0527527
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0406891   0.0332739   0.0481044
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0160640   0.0136675   0.0184604
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0323065   0.0236135   0.0409996
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0094622   0.0073448   0.0115795
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0303249   0.0212906   0.0393592
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0128806   0.0085134   0.0172477
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0136160   0.0114425   0.0157895
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0301811   0.0151247   0.0452374
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0385059   0.0340839   0.0429278
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0284460   0.0214208   0.0354712


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Medium               Low               1.0153418   0.7935133   1.2991832
Birth       ki1119695-PROBIT           BELARUS       High                 Low               0.9805783   0.7180716   1.3390501
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.1317268   0.9330346   1.3727311
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.9067758   0.6502382   1.2645250
Birth       ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Medium               Low               0.9085178   0.5087724   1.6223456
Birth       ki1135781-COHORTS          GUATEMALA     High                 Low               1.0481005   0.5282929   2.0793668
Birth       ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Medium               Low               3.3567565   1.4431389   7.8078518
Birth       ki1135781-COHORTS          INDIA         High                 Low               3.0329668   1.3294952   6.9190831
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               Low               1.6891779   1.0001523   2.8528877
Birth       ki1135781-COHORTS          PHILIPPINES   High                 Low               1.9052817   1.1422872   3.1779209
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9297653   0.6690024   1.2921681
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 Low               1.0783338   0.7651174   1.5197718
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.6565899   0.3500562   1.2315457
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.3140401   0.1134781   0.8690767
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Medium               Low               1.6163265   0.5549340   4.7077878
6 months    ki1000304b-SAS-FoodSuppl   INDIA         High                 Low               1.3069307   0.3882428   4.3994837
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.4405623   0.2698667   0.7192260
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.6331522   0.2602129   1.5405909
6 months    ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Medium               Low               0.9974425   0.4804402   2.0707914
6 months    ki1135781-COHORTS          INDIA         High                 Low               0.7720588   0.3766227   1.5826844
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               Low               1.8364702   0.7593796   4.4412874
6 months    ki1135781-COHORTS          PHILIPPINES   High                 Low               1.1915439   0.4557076   3.1155434
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.8815771   0.6390291   1.2161860
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.8159299   0.5435745   1.2247476
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.3664596   0.4483970   4.1641938
24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               0.9482759   0.2412256   3.7277436
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               1.0495576   0.7992499   1.3782563
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               1.0595762   0.8082557   1.3890427
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               1.1612362   0.6542958   2.0609478
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               0.9385373   0.4219939   2.0873580


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                 0.0002559   -0.0091846    0.0096965
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0051880   -0.0038531    0.0142292
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0019615   -0.0241069    0.0201839
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.0249198    0.0117022    0.0381375
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0148159    0.0043625    0.0252694
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0001158   -0.0025950    0.0023634
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0133139   -0.0252994   -0.0013285
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  NA                 0.0121212   -0.0162700    0.0405125
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0077052   -0.0135968   -0.0018136
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.0030084   -0.0163505    0.0103336
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0034720   -0.0027932    0.0097371
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0013390   -0.0039389    0.0012609
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0029084   -0.0138227    0.0196394
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0011880   -0.0039322    0.0063082
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0004502   -0.0035352    0.0044355


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                 0.0039121   -0.1526259    0.1391907
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0854835   -0.0761874    0.2228673
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0260807   -0.3670453    0.2298414
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.5957684    0.1987230    0.7960716
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.3641248    0.0598207    0.5699360
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0072077   -0.1739291    0.1358360
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.4121117   -0.8768003   -0.0624782
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  NA                 0.2424242   -0.5835860    0.6375814
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.8143212   -1.5203629   -0.3060664
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.0992063   -0.6388727    0.2627526
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.2695503   -0.4051910    0.6202960
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0983430   -0.3058976    0.0762237
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0963636   -0.6652285    0.5096417
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0308520   -0.1113921    0.1548905
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0158250   -0.1348899    0.1465248
