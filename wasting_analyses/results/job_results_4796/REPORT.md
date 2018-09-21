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

agecat      studyid                    country                        meducyrs    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       54     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        9     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       45     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1       15     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       63     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        9     195
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              0       48     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              1        3     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           0       65     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           1        3     182
Birth       ki0047075b-MAL-ED          BRAZIL                         High             0       63     182
Birth       ki0047075b-MAL-ED          BRAZIL                         High             1        0     182
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       48     180
Birth       ki0047075b-MAL-ED          INDIA                          Low              1       12     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0       55     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1       14     180
Birth       ki0047075b-MAL-ED          INDIA                          High             0       47     180
Birth       ki0047075b-MAL-ED          INDIA                          High             1        4     180
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0       61     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        4     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0       45     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        8     155
Birth       ki0047075b-MAL-ED          NEPAL                          High             0       30     155
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        7     155
Birth       ki0047075b-MAL-ED          PERU                           Low              0       98     278
Birth       ki0047075b-MAL-ED          PERU                           Low              1        0     278
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       94     278
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        4     278
Birth       ki0047075b-MAL-ED          PERU                           High             0       80     278
Birth       ki0047075b-MAL-ED          PERU                           High             1        2     278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      120     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       54     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        3     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       66     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        6     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       34     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       63     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        2     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        4     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       12      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       18      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             0       44      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             1        4      88
Birth       ki1000108-IRC              INDIA                          Low              0       92     343
Birth       ki1000108-IRC              INDIA                          Low              1       34     343
Birth       ki1000108-IRC              INDIA                          Medium           0       82     343
Birth       ki1000108-IRC              INDIA                          Medium           1       34     343
Birth       ki1000108-IRC              INDIA                          High             0       77     343
Birth       ki1000108-IRC              INDIA                          High             1       24     343
Birth       ki1000109-EE               PAKISTAN                       Low              0        2       2
Birth       ki1000109-EE               PAKISTAN                       Low              1        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium           0        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium           1        0       2
Birth       ki1000109-EE               PAKISTAN                       High             0        0       2
Birth       ki1000109-EE               PAKISTAN                       High             1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0       71     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0       58     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1        5     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0       26     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1        3     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           1        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0       10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1        1      23
Birth       ki1119695-PROBIT           BELARUS                        Low              0     3895   13824
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1047   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     5255   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1387   13824
Birth       ki1119695-PROBIT           BELARUS                        High             0     1786   13824
Birth       ki1119695-PROBIT           BELARUS                        High             1      454   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     2307   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      389   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     2686   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      499   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0     5847   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1     1168   12896
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      258     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       86     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      177     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       70     748
Birth       ki1135781-COHORTS          GUATEMALA                      High             0      124     748
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       33     748
Birth       ki1135781-COHORTS          INDIA                          Low              0     1297    4879
Birth       ki1135781-COHORTS          INDIA                          Low              1      305    4879
Birth       ki1135781-COHORTS          INDIA                          Medium           0     2170    4879
Birth       ki1135781-COHORTS          INDIA                          Medium           1      451    4879
Birth       ki1135781-COHORTS          INDIA                          High             0      558    4879
Birth       ki1135781-COHORTS          INDIA                          High             1       98    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      727    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      111    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      792    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      141    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      929    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      199    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0    11106   31370
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1     1308   31370
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     8744   31370
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      916   31370
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     8508   31370
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      788   31370
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      550     600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       36     600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0        6     600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        0     600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0        8     600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1        0     600
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       60     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        4     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       58     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        1     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       72     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     196
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              0       55     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High             0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High             1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       65     208
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        7     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       72     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        5     208
6 months    ki0047075b-MAL-ED          INDIA                          High             0       54     208
6 months    ki0047075b-MAL-ED          INDIA                          High             1        5     208
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       92     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        1     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       73     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        2     221
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0     221
6 months    ki0047075b-MAL-ED          PERU                           Low              0       94     272
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       97     272
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     272
6 months    ki0047075b-MAL-ED          PERU                           High             0       81     272
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      122     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        5     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       55     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      131     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        1     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        9     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       91     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1       16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             0      136     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             1       21     368
6 months    ki1000108-IRC              INDIA                          Low              0      126     408
6 months    ki1000108-IRC              INDIA                          Low              1       19     408
6 months    ki1000108-IRC              INDIA                          Medium           0      117     408
6 months    ki1000108-IRC              INDIA                          Medium           1       22     408
6 months    ki1000108-IRC              INDIA                          High             0      111     408
6 months    ki1000108-IRC              INDIA                          High             1       13     408
6 months    ki1000109-EE               PAKISTAN                       Low              0      558     746
6 months    ki1000109-EE               PAKISTAN                       Low              1       92     746
6 months    ki1000109-EE               PAKISTAN                       Medium           0       60     746
6 months    ki1000109-EE               PAKISTAN                       Medium           1        6     746
6 months    ki1000109-EE               PAKISTAN                       High             0       30     746
6 months    ki1000109-EE               PAKISTAN                       High             1        0     746
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      501    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       95    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      403    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       46    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      264    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       25    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      248     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       56     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1        3     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              0      180     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              1       14     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           0      174     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           1       13     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             0      148     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             1        7     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      171     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1        9     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      192     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        7     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      195     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      217     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       12     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      237     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        3     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       72    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        2    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0     1370    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       64    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      491    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       21    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              0       73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           0       84     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           1        3     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             0      117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             1        0     277
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      718    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       80    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0      174    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1       14    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0      126    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1        8    1120
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5585   15757
6 months    ki1119695-PROBIT           BELARUS                        Low              1       57   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     7401   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       58   15757
6 months    ki1119695-PROBIT           BELARUS                        High             0     2641   15757
6 months    ki1119695-PROBIT           BELARUS                        High             1       15   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1638    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       79    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     1995    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       74    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0     4353    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1      112    8251
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      430     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       19     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      313     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1        6     953
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      179     953
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        6     953
6 months    ki1135781-COHORTS          INDIA                          Low              0     1479    5407
6 months    ki1135781-COHORTS          INDIA                          Low              1      295    5407
6 months    ki1135781-COHORTS          INDIA                          Medium           0     2557    5407
6 months    ki1135781-COHORTS          INDIA                          Medium           1      339    5407
6 months    ki1135781-COHORTS          INDIA                          High             0      677    5407
6 months    ki1135781-COHORTS          INDIA                          High             1       60    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      764    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       60    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      818    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       49    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      963    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       52    2706
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      254     813
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        7     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      250     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        4     813
6 months    ki1148112-LCNI-5           MALAWI                         High             0      295     813
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0    10141   33489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1     1074   33489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     9611   33489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      872   33489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0    10900   33489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      891   33489
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     3510    3991
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      218    3991
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      129    3991
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        3    3991
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0      123    3991
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1        8    3991
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       52     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        7     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       45     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       60     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        4     171
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              0       40     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           0       63     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High             0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High             1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       60     199
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        9     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       66     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        9     199
24 months   ki0047075b-MAL-ED          INDIA                          High             0       51     199
24 months   ki0047075b-MAL-ED          INDIA                          High             1        4     199
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       89     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        2     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       73     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        1     213
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       47     213
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1     213
24 months   ki0047075b-MAL-ED          PERU                           Low              0       73     200
24 months   ki0047075b-MAL-ED          PERU                           Low              1        1     200
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       65     200
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        2     200
24 months   ki0047075b-MAL-ED          PERU                           High             0       59     200
24 months   ki0047075b-MAL-ED          PERU                           High             1        0     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      119     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       51     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       51     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        3     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      114     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              1       10     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0      102     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             0      152     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             1        6     372
24 months   ki1000108-IRC              INDIA                          Low              0      136     409
24 months   ki1000108-IRC              INDIA                          Low              1       10     409
24 months   ki1000108-IRC              INDIA                          Medium           0      126     409
24 months   ki1000108-IRC              INDIA                          Medium           1       13     409
24 months   ki1000108-IRC              INDIA                          High             0      116     409
24 months   ki1000108-IRC              INDIA                          High             1        8     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              0      131     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              1       21     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           0      128     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           1       18     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             0      116     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             1       14     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      149     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       24     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      183     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       21     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      181     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       20     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      132     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       14     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      163     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       14     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      174     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       17     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      584     990
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1      116     990
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0      132     990
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       42     990
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       94     990
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       22     990
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1367    3971
24 months   ki1119695-PROBIT           BELARUS                        Low              1       14    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1917    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       19    3971
24 months   ki1119695-PROBIT           BELARUS                        High             0      643    3971
24 months   ki1119695-PROBIT           BELARUS                        High             1       11    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       89     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       25     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      108     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       21     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0      150     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1       30     423
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      485    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       27    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      334    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       13    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      200    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        9    1068
24 months   ki1135781-COHORTS          INDIA                          Low              0     1067    4166
24 months   ki1135781-COHORTS          INDIA                          Low              1      197    4166
24 months   ki1135781-COHORTS          INDIA                          Medium           0     2131    4166
24 months   ki1135781-COHORTS          INDIA                          Medium           1      170    4166
24 months   ki1135781-COHORTS          INDIA                          High             0      584    4166
24 months   ki1135781-COHORTS          INDIA                          High             1       17    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      681    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       67    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      737    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       53    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      864    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       47    2449
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      167     556
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      166     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        4     556
24 months   ki1148112-LCNI-5           MALAWI                         High             0      213     556
24 months   ki1148112-LCNI-5           MALAWI                         High             1        1     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     4671   17146
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1     1317   17146
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4137   17146
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1     1216   17146
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     4594   17146
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1     1211   17146
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     2893    3908
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      737    3908
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      129    3908
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       13    3908
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0      108    3908
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1       28    3908


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/b314b1ab-f70a-4559-8cb6-d0bc80d662f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b314b1ab-f70a-4559-8cb6-d0bc80d662f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b314b1ab-f70a-4559-8cb6-d0bc80d662f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b314b1ab-f70a-4559-8cb6-d0bc80d662f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                0.1428571   0.0562264   0.2294878
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               NA                0.2500000   0.1401527   0.3598473
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                0.1250000   0.0484126   0.2015874
Birth       ki1000108-IRC              INDIA         Low                  NA                0.2673883   0.1995211   0.3352556
Birth       ki1000108-IRC              INDIA         Medium               NA                0.2382797   0.1727703   0.3037892
Birth       ki1000108-IRC              INDIA         High                 NA                0.2396455   0.1738795   0.3054116
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.2083205   0.1429053   0.2737357
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.2081582   0.1430557   0.2732607
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.2067390   0.1414910   0.2719871
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1579430   0.1514954   0.1643906
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1573301   0.1509462   0.1637139
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1589105   0.1525685   0.1652525
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.2501754   0.2101798   0.2901710
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.2809118   0.2343591   0.3274645
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.2186110   0.1713194   0.2659027
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.1732061   0.1624260   0.1839862
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.1736872   0.1629871   0.1843873
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.1809840   0.1697283   0.1922396
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.1522038   0.1391468   0.1652608
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.1523845   0.1389033   0.1658657
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1539692   0.1408161   0.1671224
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0952714   0.0899188   0.1006239
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0935762   0.0881827   0.0989698
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0932898   0.0880076   0.0985720
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097642   0.1201059
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    ki1000108-IRC              INDIA         Low                  NA                0.1263262   0.0733173   0.1793351
6 months    ki1000108-IRC              INDIA         Medium               NA                0.1512297   0.0930675   0.2093920
6 months    ki1000108-IRC              INDIA         High                 NA                0.1005817   0.0489395   0.1522239
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1600526   0.1334918   0.1866134
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0996164   0.0581738   0.1410589
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0811120   0.0601169   0.1021070
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0721649   0.0357188   0.1086111
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0695187   0.0330318   0.1060057
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0451613   0.0124396   0.0778830
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.0500000   0.0181337   0.0818663
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0351759   0.0095581   0.0607937
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0394089   0.0126209   0.0661968
6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1002506   0.0707552   0.1297460
6 months    ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.0744681   0.0213487   0.1275875
6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                0.0597015   0.0029177   0.1164853
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0100478   0.0067552   0.0133405
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0077701   0.0052527   0.0102876
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0056285   0.0027336   0.0085234
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0456327   0.0366056   0.0546599
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0349954   0.0276761   0.0423148
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0244677   0.0201749   0.0287606
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.1507584   0.1361125   0.1654042
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.1169491   0.1058380   0.1280602
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0860967   0.0700573   0.1021361
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0726483   0.0567401   0.0885565
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0578593   0.0438352   0.0718833
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0521533   0.0396908   0.0646158
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0890622   0.0816060   0.0965184
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0832109   0.0757642   0.0906576
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0798934   0.0722804   0.0875063
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1000108-IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1055232   0.0617989   0.1492474
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1158971   0.0645854   0.1672089
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.1029299   0.0493516   0.1565083
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1380220   0.0866199   0.1894242
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.1025379   0.0608485   0.1442272
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.1003644   0.0589872   0.1417416
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0958904   0.0480833   0.1436975
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0790960   0.0392973   0.1188947
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0890052   0.0485830   0.1294274
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1627562   0.1254402   0.2000722
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2952759   0.2173038   0.3732481
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.2287277   0.1580440   0.2994113
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0098885   0.0050394   0.0147377
24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0101599   0.0010053   0.0193145
24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0166281   0.0053028   0.0279533
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2184351   0.1437005   0.2931698
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1625872   0.0996296   0.2255448
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1674737   0.1135067   0.2214407
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1602112   0.1401030   0.1803195
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0737696   0.0631047   0.0844346
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0283827   0.0153432   0.0414221
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0769787   0.0591677   0.0947898
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0609832   0.0452660   0.0767003
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0484105   0.0353639   0.0614571
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2080019   0.1945291   0.2214747
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.2268141   0.2114097   0.2422184
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.2324455   0.2173336   0.2475574
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.2029569   0.1808670   0.2250468
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0911381   0.0184210   0.1638553
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.2068049   0.1059317   0.3076781


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1692308   0.1164681   0.2219935
Birth       ki1000108-IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1594293   0.1531109   0.1657477
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2526738   0.2215120   0.2838356
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.1750359   0.1643722   0.1856996
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0960153   0.0908094   0.1012212
6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.0817308   0.0444108   0.1190507
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA         NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0910714   0.0672209   0.1149220
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0321173   0.0283128   0.0359219
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0325289   0.0212599   0.0437978
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1283521   0.1194359   0.1372684
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0847144   0.0799093   0.0895194
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1818182   0.1478065   0.2158299
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0110803   0.0050506   0.0171100
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1796690   0.1430402   0.2162979
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0458801   0.0333262   0.0584341
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0921747   0.0833896   0.1009599
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.2183600   0.2084428   0.2282771
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1990788   0.1780707   0.2200869


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               Low               1.7500000   0.8275784   3.7005556
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 Low               0.8750000   0.3695066   2.0720199
Birth       ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA         Medium               Low               0.8911374   0.6274213   1.2656980
Birth       ki1000108-IRC              INDIA         High                 Low               0.8962452   0.6323062   1.2703584
Birth       ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Medium               Low               0.9992209   0.9854136   1.0132216
Birth       ki1119695-PROBIT           BELARUS       High                 Low               0.9924085   0.9741173   1.0110431
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.9961193   0.9822083   1.0102273
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               1.0061256   0.9930919   1.0193304
Birth       ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Medium               Low               1.1228595   0.8977352   1.4044380
Birth       ki1135781-COHORTS          GUATEMALA     High                 Low               0.8738312   0.6733350   1.1340283
Birth       ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Medium               Low               1.0027781   0.9820045   1.0239911
Birth       ki1135781-COHORTS          INDIA         High                 Low               1.0449055   1.0167821   1.0738068
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               Low               1.0011876   0.9697338   1.0336615
Birth       ki1135781-COHORTS          PHILIPPINES   High                 Low               1.0115994   0.9900130   1.0336565
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9822073   0.9567453   1.0083469
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.9792007   0.9533218   1.0057822
6 months    ki0047075b-MAL-ED          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA         Medium               Low               0.6679035   0.2213503   2.0153351
6 months    ki0047075b-MAL-ED          INDIA         High                 Low               0.8716707   0.2908945   2.6119773
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               1.7279335   0.7986041   3.7387163
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               1.5456476   0.7363336   3.2444893
6 months    ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Medium               Low               1.1971368   0.6777632   2.1145094
6 months    ki1000108-IRC              INDIA         High                 Low               0.7962061   0.4105665   1.5440716
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.6223976   0.4383359   0.8837486
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.5067831   0.3907425   0.6572849
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.9633308   0.4649920   1.9957468
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.6258065   0.2587448   1.5135905
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.7035176   0.2672878   1.8517005
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.7881773   0.3104212   2.0012275
6 months    ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL         Medium               Low               0.7428191   0.3433810   1.6069041
6 months    ki1113344-GMS-Nepal        NEPAL         High                 Low               0.5955224   0.2200477   1.6116816
6 months    ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       Medium               Low               0.7733131   0.4705749   1.2708140
6 months    ki1119695-PROBIT           BELARUS       High                 Low               0.5601684   0.3069431   1.0223024
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7668929   0.5752665   1.0223518
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.5361880   0.4117863   0.6981717
6 months    ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Medium               Low               0.4444811   0.1794478   1.1009520
6 months    ki1135781-COHORTS          GUATEMALA     High                 Low               0.7664296   0.3109232   1.8892584
6 months    ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Medium               Low               0.7757389   0.6787323   0.8866099
6 months    ki1135781-COHORTS          INDIA         High                 Low               0.5710906   0.4634469   0.7037365
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7964303   0.5745723   1.1039537
6 months    ki1135781-COHORTS          PHILIPPINES   High                 Low               0.7178879   0.5192456   0.9925226
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9343008   0.8286812   1.0533822
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.8970511   0.7931250   1.0145949
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.6743119   0.2662643   1.7076886
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.3987342   0.1492164   1.0654927
24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Medium               Low               1.3654676   0.6184860   3.0146223
24 months   ki1000108-IRC              INDIA         High                 Low               0.9419355   0.3831720   2.3155201
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               1.0983097   0.5997459   2.0113256
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.9754250   0.5003287   1.9016576
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.7429093   0.4282528   1.2887579
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.7271621   0.4174071   1.2667840
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               0.8248588   0.4062119   1.6749679
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.9281975   0.4728800   1.8219222
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.8142218   1.2790960   2.5732241
24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               1.4053387   0.9567534   2.0642485
24 months   ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       Medium               Low               1.0274432   0.3846143   2.7446708
24 months   ki1119695-PROBIT           BELARUS       High                 Low               1.6815479   0.8548466   3.3077320
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7443270   0.4449779   1.2450566
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7666976   0.4805032   1.2233534
24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.7104280   0.3717077   1.3578085
24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.8165869   0.3906266   1.7070373
24 months   ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Medium               Low               0.4604523   0.3802301   0.5576001
24 months   ki1135781-COHORTS          INDIA         High                 Low               0.1771578   0.1100318   0.2852347
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7922084   0.5603777   1.1199484
24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.6288815   0.4410544   0.8966964
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               1.0904423   0.9978733   1.1915987
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               1.1175164   1.0229190   1.2208620
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               0.4490516   0.2006202   1.0051200
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               1.0189596   0.6183312   1.6791629


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                 0.0263736   -0.0473792    0.1001264
Birth       ki1000108-IRC              INDIA         Low                  NA                 0.0008332   -0.0481614    0.0498279
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                 0.0005915   -0.0012673    0.0024504
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0014863   -0.0000831    0.0030556
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0024984   -0.0265978    0.0315946
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.0018298   -0.0005165    0.0041761
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0033671    0.0007719    0.0059623
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0007439   -0.0005633    0.0020511
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.0154915   -0.0687889    0.0378060
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.0384615   -0.0107097    0.0876328
6 months    ki1000108-IRC              INDIA         Low                  NA                 0.0060267   -0.0367001    0.0487535
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0356148   -0.0468408   -0.0243889
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0087321   -0.0368986    0.0194344
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0087629   -0.0342335    0.0167077
6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0091792   -0.0232897    0.0049313
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.0017975   -0.0044273    0.0008323
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0135154   -0.0214041   -0.0056268
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0097874   -0.0219126    0.0023378
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.0224062   -0.0337898   -0.0110227
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0131509   -0.0259766   -0.0003251
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0043479   -0.0103526    0.0016569
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0334101   -0.0778754    0.0110551
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0073015   -0.0264763    0.0410792
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                 0.0183086   -0.0164396    0.0530568
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0255653   -0.0670209    0.0158903
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0083418   -0.0481579    0.0314743
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0190619   -0.0032776    0.0414015
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                 0.0011918   -0.0044937    0.0068773
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0387661   -0.1006643    0.0231321
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0068542   -0.0200093    0.0063009
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.0680365   -0.0834961   -0.0525769
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0087876   -0.0229113    0.0053360
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0103581   -0.0007644    0.0214806
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0038781   -0.0087787    0.0010225


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                 0.1558442   -0.4116257    0.4951926
Birth       ki1000108-IRC              INDIA         Low                  NA                 0.0031065   -0.1973655    0.1700140
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                 0.0028315   -0.0061641    0.0117467
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0093225   -0.0005617    0.0191091
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0098879   -0.1120714    0.1184721
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.0104539   -0.0030187    0.0237455
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0216436    0.0050001    0.0380087
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0077480   -0.0059620    0.0212711
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.1895425   -1.0502290    0.3098277
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.3076923   -0.2094506    0.6037127
6 months    ki1000108-IRC              INDIA         Low                  NA                 0.0455354   -0.3383126    0.3192901
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.2862058   -0.4029749   -0.1791554
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.1376592   -0.6779854    0.2286772
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.2125000   -1.0095838    0.2684275
6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.1007912   -0.2651374    0.0422058
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.2178758   -0.5782162    0.0601913
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.4208143   -0.6902296   -0.1943426
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.3008837   -0.7145811    0.0129960
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.1745683   -0.2672362   -0.0886769
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.2210326   -0.4582590   -0.0223977
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0513237   -0.1249054    0.0174448
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.5403727   -1.4159784    0.0178936
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0963323   -0.4780653    0.4475107
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                 0.1478506   -0.1814265    0.3853544
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.2273345   -0.6537504    0.0891310
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0952816   -0.6581031    0.2764975
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.1048406   -0.0247413    0.2180365
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                 0.1075587   -0.5223308    0.4768211
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.2157639   -0.6124627    0.0833388
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.1493941   -0.4717164    0.1023360
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.7381249   -0.9051019   -0.5857831
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.1288675   -0.3557857    0.0600713
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0474357   -0.0045164    0.0967010
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0194803   -0.0442525    0.0047044
