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
![](/tmp/dbc25836-f6b3-4666-af5c-1a16e50e0e60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dbc25836-f6b3-4666-af5c-1a16e50e0e60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dbc25836-f6b3-4666-af5c-1a16e50e0e60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dbc25836-f6b3-4666-af5c-1a16e50e0e60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.0656033    0.0324058   0.0988009
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.0641314    0.0316620   0.0966008
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.0645697    0.0315395   0.0976000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0567517    0.0474994   0.0660041
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0617905    0.0570994   0.0664816
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0431980    0.0326681   0.0537280
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0783523    0.0490339   0.1076707
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0674340    0.0371598   0.0977081
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.0845678    0.0388863   0.1302493
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0169082    0.0044842   0.0293322
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0567568    0.0331717   0.0803418
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0512821    0.0320749   0.0704892
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0210184    0.0111648   0.0308721
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0398689    0.0276256   0.0521122
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0426493    0.0301563   0.0551423
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0157704    0.0133817   0.0181591
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0155110    0.0131165   0.0179056
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0155378    0.0132346   0.0178409
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.0456204    0.0318281   0.0594127
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0299539    0.0168697   0.0430382
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0143266    0.0000589   0.0285944
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  NA                0.0378788    0.0052691   0.0704884
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Medium               NA                0.0612245    0.0224179   0.1000310
6 months    ki1000304b-SAS-FoodSuppl   INDIA         High                 NA                0.0495050    0.0071447   0.0918652
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0171674    0.0103579   0.0239769
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0075633    0.0053858   0.0097408
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0108696    0.0022191   0.0195200
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0303182    0.0150435   0.0455930
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0328281    0.0153224   0.0503338
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0262769    0.0126148   0.0399391
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0094086    0.0024703   0.0163470
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0172786    0.0088841   0.0256732
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0112108    0.0043001   0.0181214
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0151475    0.0119728   0.0183223
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0137204    0.0107075   0.0167333
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0142022    0.0093249   0.0190795
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.0272727    0.0057284   0.0488171
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.0372671    0.0079792   0.0665550
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.0258621   -0.0030513   0.0547754
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0323092    0.0266010   0.0380173
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0369229    0.0297647   0.0440810
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0399269    0.0314892   0.0483647
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0277624    0.0196514   0.0358734
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0268983    0.0106888   0.0431077
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0205159    0.0018225   0.0392093


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
Birth       ki1119695-PROBIT           BELARUS       Medium               Low               0.9775633   0.9489970   1.0069896
Birth       ki1119695-PROBIT           BELARUS       High                 Low               0.9842448   0.9653663   1.0034924
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.0887866   0.9122161   1.2995345
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7611760   0.5685818   1.0190070
Birth       ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Medium               Low               0.8606509   0.4813187   1.5389389
Birth       ki1135781-COHORTS          GUATEMALA     High                 Low               1.0793277   0.5608106   2.0772578
Birth       ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Medium               Low               3.3567565   1.4431389   7.8078518
Birth       ki1135781-COHORTS          INDIA         High                 Low               3.0329668   1.3294952   6.9190831
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               Low               1.8968570   1.0870058   3.3100710
Birth       ki1135781-COHORTS          PHILIPPINES   High                 Low               2.0291389   1.1694350   3.5208495
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9835540   0.9263681   1.0442702
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.9852512   0.9303483   1.0433941
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
6 months    ki1135781-COHORTS          INDIA         Medium               Low               1.0827850   0.5198973   2.2551054
6 months    ki1135781-COHORTS          INDIA         High                 Low               0.8667043   0.4202112   1.7876162
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               Low               1.8364702   0.7593796   4.4412874
6 months    ki1135781-COHORTS          PHILIPPINES   High                 Low               1.1915439   0.4557076   3.1155434
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9057835   0.6758129   1.2140100
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.9375912   0.6348573   1.3846847
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.3664596   0.4483970   4.1641938
24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               0.9482759   0.2412256   3.7277436
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               1.1427975   0.8774463   1.4883943
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               1.2357761   0.9449378   1.6161302
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               0.9688739   0.5081814   1.8472076
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               0.7389818   0.2826331   1.9321662


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                -0.0001793   -0.0009332    0.0005747
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0039387   -0.0047111    0.0125885
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0031434   -0.0249569    0.0186702
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.0249198    0.0117022    0.0381375
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0196707    0.0102187    0.0291228
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0002936   -0.0002134    0.0008006
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0133139   -0.0252994   -0.0013285
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  NA                 0.0121212   -0.0162700    0.0405125
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0077052   -0.0135968   -0.0018136
6 months    ki1135781-COHORTS          INDIA         Low                  NA                 0.0000067   -0.0123732    0.0123865
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0034720   -0.0027932    0.0097371
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0015315   -0.0038675    0.0008044
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0029084   -0.0138227    0.0196394
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0061967    0.0015344    0.0108589
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0006836   -0.0032780    0.0046451


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                -0.0027402   -0.0140564    0.0084496
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0648983   -0.0886640    0.1967998
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0417950   -0.3763062    0.2114132
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.5957684    0.1987230    0.7960716
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.4834392    0.2107946    0.6618940
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0182780   -0.0135747    0.0491297
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.4121117   -0.8768003   -0.0624782
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  NA                 0.2424242   -0.5835860    0.6375814
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.8143212   -1.5203629   -0.3060664
6 months    ki1135781-COHORTS          INDIA         Low                  NA                 0.0002205   -0.5039718    0.3353870
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.2695503   -0.4051910    0.6202960
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.1124798   -0.2992772    0.0474616
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0963636   -0.6652285    0.5096417
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.1609278    0.0335822    0.2714930
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0240307   -0.1258978    0.1539942
