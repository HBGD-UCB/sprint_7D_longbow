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
![](/tmp/c8d3a0f0-fa8c-4dd6-b840-edf546f825dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8d3a0f0-fa8c-4dd6-b840-edf546f825dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8d3a0f0-fa8c-4dd6-b840-edf546f825dd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8d3a0f0-fa8c-4dd6-b840-edf546f825dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                0.1428571   0.0562264   0.2294878
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               NA                0.2500000   0.1401527   0.3598473
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                0.1250000   0.0484126   0.2015874
Birth       ki1000108-IRC              INDIA         Low                  NA                0.2741869   0.2074821   0.3408918
Birth       ki1000108-IRC              INDIA         Medium               NA                0.2408244   0.1768332   0.3048155
Birth       ki1000108-IRC              INDIA         High                 NA                0.2463493   0.1821580   0.3105406
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.2082747   0.1428673   0.2736821
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.2081220   0.1430250   0.2732189
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.2065704   0.1413404   0.2718003
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1579513   0.1515030   0.1643996
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1573594   0.1509762   0.1637426
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1588277   0.1524883   0.1651672
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.2515643   0.2113659   0.2917627
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.2815117   0.2344589   0.3285646
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.2218820   0.1738939   0.2698701
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.1731637   0.1623856   0.1839419
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.1736860   0.1629856   0.1843864
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.1810917   0.1698345   0.1923489
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.1521671   0.1391114   0.1652228
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.1523540   0.1388712   0.1658367
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1539194   0.1407685   0.1670703
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0953011   0.0899455   0.1006566
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0935899   0.0881936   0.0989862
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0933311   0.0880449   0.0986172
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097642   0.1201059
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    ki1000108-IRC              INDIA         Low                  NA                0.1274655   0.0733155   0.1816155
6 months    ki1000108-IRC              INDIA         Medium               NA                0.1531324   0.0934542   0.2128107
6 months    ki1000108-IRC              INDIA         High                 NA                0.1011400   0.0481251   0.1541549
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0456786   0.0367470   0.0546102
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0349698   0.0277058   0.0422337
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0244177   0.0201400   0.0286954
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.1507795   0.1360691   0.1654899
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.1172511   0.1061032   0.1283989
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0875847   0.0714533   0.1037161
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0723212   0.0565020   0.0881404
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0576586   0.0436892   0.0716279
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0520840   0.0396621   0.0645058
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0891374   0.0816669   0.0966079
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0832444   0.0757865   0.0907023
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0798699   0.0722423   0.0874976
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1000108-IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1041619   0.0605470   0.1477768
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1162969   0.0649546   0.1676393
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.1047717   0.0512372   0.1583063
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1374329   0.0861349   0.1887309
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.1021275   0.0604603   0.1437947
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.1011720   0.0598177   0.1425264
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0958904   0.0480833   0.1436975
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0790960   0.0392973   0.1188947
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0890052   0.0485830   0.1294274
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1620144   0.1248266   0.1992023
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2948236   0.2178640   0.3717833
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.2243373   0.1551051   0.2935695
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0098886   0.0050394   0.0147378
24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0101599   0.0010053   0.0193145
24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0166281   0.0053028   0.0279534
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2192982   0.1432534   0.2953431
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1627907   0.0990086   0.2265728
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1666667   0.1121588   0.2211746
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1602199   0.1401134   0.1803263
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0737562   0.0630917   0.0844208
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0283781   0.0153421   0.0414141
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0768943   0.0590102   0.0947784
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0609714   0.0451860   0.0767568
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0485899   0.0354831   0.0616967
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2075776   0.1940602   0.2210951
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.2259375   0.2104444   0.2414306
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.2316163   0.2164394   0.2467932
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.2029859   0.1808936   0.2250781
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0911081   0.0180948   0.1641215
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.2065465   0.1053921   0.3077008


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
Birth       ki1000108-IRC              INDIA         Medium               Low               0.8783217   0.6296056   1.2252894
Birth       ki1000108-IRC              INDIA         High                 Low               0.8984721   0.6475103   1.2467014
Birth       ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Medium               Low               0.9992668   0.9853385   1.0133920
Birth       ki1119695-PROBIT           BELARUS       High                 Low               0.9918169   0.9733681   1.0106153
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.9962526   0.9823666   1.0103350
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               1.0055489   0.9925201   1.0187487
Birth       ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Medium               Low               1.1190449   0.8941804   1.4004573
Birth       ki1135781-COHORTS          GUATEMALA     High                 Low               0.8820092   0.6801422   1.1437906
Birth       ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Medium               Low               1.0030161   0.9822385   1.0242331
Birth       ki1135781-COHORTS          INDIA         High                 Low               1.0457830   1.0176364   1.0747080
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               Low               1.0012281   0.9696568   1.0338273
Birth       ki1135781-COHORTS          PHILIPPINES   High                 Low               1.0115157   0.9898550   1.0336505
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9820445   0.9564753   1.0082973
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.9793289   0.9533579   1.0060074
6 months    ki0047075b-MAL-ED          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA         Medium               Low               0.6679035   0.2213503   2.0153351
6 months    ki0047075b-MAL-ED          INDIA         High                 Low               0.8716707   0.2908945   2.6119773
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               1.7279335   0.7986041   3.7387163
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               1.5456476   0.7363336   3.2444893
6 months    ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Medium               Low               1.2013640   0.6750573   2.1380042
6 months    ki1000108-IRC              INDIA         High                 Low               0.7934697   0.4042499   1.5574382
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
6 months    ki1119695-PROBIT           BELARUS       Medium               Low               0.7733132   0.4705749   1.2708141
6 months    ki1119695-PROBIT           BELARUS       High                 Low               0.5601684   0.3069431   1.0223024
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7655617   0.5761222   1.0172923
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.5345552   0.4115371   0.6943463
6 months    ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Medium               Low               0.4444811   0.1794478   1.1009520
6 months    ki1135781-COHORTS          GUATEMALA     High                 Low               0.7664296   0.3109232   1.8892584
6 months    ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Medium               Low               0.7776329   0.6798891   0.8894287
6 months    ki1135781-COHORTS          INDIA         High                 Low               0.5808792   0.4721101   0.7147075
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7972568   0.5757213   1.1040382
6 months    ki1135781-COHORTS          PHILIPPINES   High                 Low               0.7201755   0.5215890   0.9943706
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9338884   0.8282318   1.0530234
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.8960317   0.7921014   1.0135985
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.6743119   0.2662643   1.7076886
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.3987342   0.1492164   1.0654927
24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Medium               Low               1.3654676   0.6184860   3.0146223
24 months   ki1000108-IRC              INDIA         High                 Low               0.9419355   0.3831720   2.3155201
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               1.1165019   0.6085298   2.0485053
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               1.0058549   0.5185940   1.9509366
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.7431078   0.4278079   1.2907879
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.7361557   0.4235757   1.2794060
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               0.8248588   0.4062119   1.6749679
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.9281975   0.4728800   1.8219222
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.8197368   1.2860601   2.5748737
24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               1.3846749   0.9433154   2.0325383
24 months   ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       Medium               Low               1.0274354   0.3846084   2.7446711
24 months   ki1119695-PROBIT           BELARUS       High                 Low               1.6815436   0.8548450   3.3077213
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7423256   0.4399102   1.2526358
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7600000   0.4718483   1.2241223
24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.7104280   0.3717077   1.3578085
24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.8165869   0.3906266   1.7070373
24 months   ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Medium               Low               0.4603438   0.3801388   0.5574710
24 months   ki1135781-COHORTS          INDIA         High                 Low               0.1771199   0.1100146   0.2851572
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7929251   0.5599476   1.1228374
24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.6319053   0.4427481   0.9018769
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               1.0884483   0.9950953   1.1905589
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               1.1158055   1.0205191   1.2199889
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               0.4488399   0.1998211   1.0081878
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               1.0175411   0.6162557   1.6801303


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                 0.0263736   -0.0473792    0.1001264
Birth       ki1000108-IRC              INDIA         Low                  NA                -0.0059654   -0.0531985    0.0412678
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                 0.0006373   -0.0012264    0.0025011
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0014780   -0.0000910    0.0030470
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0011095   -0.0280360    0.0302550
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.0018721   -0.0004753    0.0042195
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0034038    0.0007969    0.0060107
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0007142   -0.0005959    0.0020244
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.0154915   -0.0687889    0.0378060
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.0384615   -0.0107097    0.0876328
6 months    ki1000108-IRC              INDIA         Low                  NA                 0.0048875   -0.0387051    0.0484800
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0356148   -0.0468408   -0.0243889
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0087321   -0.0368986    0.0194344
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0087629   -0.0342335    0.0167077
6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0091792   -0.0232897    0.0049313
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.0017975   -0.0044273    0.0008323
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0135613   -0.0213528   -0.0057697
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0097874   -0.0219126    0.0023378
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.0224273   -0.0338902   -0.0109645
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0128238   -0.0255467   -0.0001009
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0044230   -0.0104416    0.0015956
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0334101   -0.0778754    0.0110551
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0073015   -0.0264763    0.0410792
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                 0.0196699   -0.0150381    0.0543779
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0249762   -0.0663317    0.0163794
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0083418   -0.0481579    0.0314743
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0198038   -0.0024752    0.0420827
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                 0.0011917   -0.0044937    0.0068772
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0396292   -0.1029341    0.0236757
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0068542   -0.0200093    0.0063009
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.0680451   -0.0835037   -0.0525865
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0087032   -0.0228670    0.0054607
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0107823   -0.0004132    0.0219778
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0039070   -0.0088120    0.0009979


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                 0.1558442   -0.4116257    0.4951926
Birth       ki1000108-IRC              INDIA         Low                  NA                -0.0222404   -0.2144522    0.1395499
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                 0.0030508   -0.0059723    0.0119929
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0092705   -0.0006120    0.0190554
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0043910   -0.1178378    0.1132548
Birth       ki1135781-COHORTS          INDIA         Low                  NA                 0.0106956   -0.0027824    0.0239925
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0218792    0.0051618    0.0383157
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0074389   -0.0063021    0.0209923
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.1895425   -1.0502290    0.3098277
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.3076923   -0.2094506    0.6037127
6 months    ki1000108-IRC              INDIA         Low                  NA                 0.0369274   -0.3557148    0.3158526
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.2862058   -0.4029749   -0.1791554
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.1376592   -0.6779854    0.2286772
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.2125000   -1.0095838    0.2684275
6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.1007912   -0.2651374    0.0422058
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.2178757   -0.5782162    0.0601913
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.4222411   -0.6882760   -0.1981275
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.3008837   -0.7145811    0.0129960
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.1747329   -0.2680596   -0.0882750
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.2155354   -0.4507293   -0.0184713
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0522110   -0.1259680    0.0167145
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.5403727   -1.4159784    0.0178936
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0963323   -0.4780653    0.4475107
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                 0.1588437   -0.1705944    0.3955687
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.2220960   -0.6476370    0.0935391
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0952816   -0.6581031    0.2764975
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.1089206   -0.0201981    0.2216978
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                 0.1075550   -0.5223337    0.4768177
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.2205679   -0.6272484    0.0844754
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.1493941   -0.4717164    0.1023360
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.7382186   -0.9051962   -0.5858755
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.1276290   -0.3551579    0.0616982
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0493787   -0.0029137    0.0989445
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0196256   -0.0444195    0.0045797
