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

unadjusted

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
Birth       ki1000109-EE               PAKISTAN                       Low              0        1       1
Birth       ki1000109-EE               PAKISTAN                       Low              1        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium           0        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium           1        0       1
Birth       ki1000109-EE               PAKISTAN                       High             0        0       1
Birth       ki1000109-EE               PAKISTAN                       High             1        0       1
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5553   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      654   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4372   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      458   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     4254   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      394   15685
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      275     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       18     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0        3     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        0     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0        4     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1        0     300
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
6 months    ki1000109-EE               PAKISTAN                       Low              0      279     373
6 months    ki1000109-EE               PAKISTAN                       Low              1       46     373
6 months    ki1000109-EE               PAKISTAN                       Medium           0       30     373
6 months    ki1000109-EE               PAKISTAN                       Medium           1        3     373
6 months    ki1000109-EE               PAKISTAN                       High             0       15     373
6 months    ki1000109-EE               PAKISTAN                       High             1        0     373
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      359     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       40     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0       87     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1        7     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0       63     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1        4     560
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5075   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1      537   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4810   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      436   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     5463   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      446   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1790    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      111    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0       67    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        2    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0       64    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1        4    2038
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
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      292     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       58     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0       66     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       21     495
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       47     495
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       11     495
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     2340    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1      659    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     2073    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      608    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     2305    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      607    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1482    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      373    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0       67    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        7    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0       57    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1       14    2000


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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/fed2b1a7-272b-4591-bbd2-f543041ebc4f/d980d7a8-1b88-4465-bf0c-01f290f3d675/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fed2b1a7-272b-4591-bbd2-f543041ebc4f/d980d7a8-1b88-4465-bf0c-01f290f3d675/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fed2b1a7-272b-4591-bbd2-f543041ebc4f/d980d7a8-1b88-4465-bf0c-01f290f3d675/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fed2b1a7-272b-4591-bbd2-f543041ebc4f/d980d7a8-1b88-4465-bf0c-01f290f3d675/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                0.1428571   0.0562264   0.2294878
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               NA                0.2500000   0.1401527   0.3598473
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                0.1250000   0.0484126   0.2015874
Birth       ki1000108-IRC              INDIA         Low                  NA                0.2698413   0.1922238   0.3474588
Birth       ki1000108-IRC              INDIA         Medium               NA                0.2931034   0.2101487   0.3760582
Birth       ki1000108-IRC              INDIA         High                 NA                0.2376238   0.1544951   0.3207525
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.2118575   0.1375876   0.2861275
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.2088226   0.1467503   0.2708950
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.2026786   0.1337768   0.2715803
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1442878   0.1310236   0.1575521
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1566719   0.1440477   0.1692961
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1665004   0.1577825   0.1752182
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.2500000   0.2042111   0.2957889
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.2834008   0.2271629   0.3396387
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.2101911   0.1464151   0.2739670
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.1903870   0.1711597   0.2096143
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.1720717   0.1576203   0.1865231
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.1493902   0.1221088   0.1766717
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.1324582   0.1095028   0.1554137
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.1511254   0.1281389   0.1741119
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1764184   0.1541703   0.1986666
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1053649   0.0968852   0.1138447
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0948240   0.0860181   0.1036299
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0847676   0.0760571   0.0934782
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097642   0.1201059
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    ki1000108-IRC              INDIA         Low                  NA                0.1310345   0.0760436   0.1860254
6 months    ki1000108-IRC              INDIA         Medium               NA                0.1582734   0.0975210   0.2190257
6 months    ki1000108-IRC              INDIA         High                 NA                0.1048387   0.0508527   0.1588248
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1593960   0.1314037   0.1873882
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.1024499   0.0580384   0.1468614
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0865052   0.0668908   0.1061196
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0721649   0.0357188   0.1086111
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0695187   0.0330318   0.1060057
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0451613   0.0124396   0.0778830
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.0500000   0.0181337   0.0818663
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0351759   0.0095581   0.0607937
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0394089   0.0126209   0.0661968
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0101028   0.0068050   0.0134006
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0077758   0.0052652   0.0102865
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0056476   0.0027352   0.0085600
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0460105   0.0361001   0.0559208
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0357661   0.0277637   0.0437685
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0250840   0.0204968   0.0296712
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.1662909   0.1489627   0.1836190
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.1170580   0.1053480   0.1287680
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0814111   0.0616661   0.1011561
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0728155   0.0550712   0.0905599
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0565167   0.0411432   0.0718903
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0512315   0.0376658   0.0647973
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0956878   0.0872629   0.1041127
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0831109   0.0751534   0.0910685
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0754781   0.0677474   0.0832087
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1000108-IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1381579   0.0832372   0.1930786
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1232877   0.0698967   0.1766787
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.1076923   0.0543424   0.1610423
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1387283   0.0871754   0.1902813
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.1029412   0.0612049   0.1446775
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0995025   0.0580849   0.1409200
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0958904   0.0480833   0.1436975
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0790960   0.0392973   0.1188947
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0890052   0.0485830   0.1294274
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1657143   0.1267209   0.2047076
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2413793   0.1513695   0.3313891
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1896552   0.0886624   0.2906480
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0101376   0.0052289   0.0150463
24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0098140   0.0004900   0.0191381
24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0168196   0.0053014   0.0283378
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2192982   0.1432534   0.2953431
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1627907   0.0990086   0.2265728
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1666667   0.1121588   0.2211746
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1558544   0.1358560   0.1758528
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0738809   0.0631918   0.0845700
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0282862   0.0150300   0.0415424
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0895722   0.0691033   0.1100411
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0670886   0.0496397   0.0845375
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0515917   0.0372247   0.0659586
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2197399   0.2040119   0.2354679
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.2267811   0.2090663   0.2444958
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.2084478   0.1923054   0.2245902
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.2010782   0.1790832   0.2230732
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0945946   0.0195393   0.1696499
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1971831   0.0971609   0.2972053


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
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0321173   0.0283128   0.0359219
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0325289   0.0212599   0.0437978
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1283521   0.1194359   0.1372684
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0846305   0.0798233   0.0894378
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
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.2181099   0.2082292   0.2279905
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1970000   0.1761171   0.2178829


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               Low               1.7500000   0.8275784   3.7005556
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 Low               0.8750000   0.3695066   2.0720199
Birth       ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA         Medium               Low               1.0862069   0.7255382   1.6261659
Birth       ki1000108-IRC              INDIA         High                 Low               0.8806057   0.5598715   1.3850793
Birth       ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Medium               Low               0.9856748   0.8445793   1.1503416
Birth       ki1119695-PROBIT           BELARUS       High                 Low               0.9566738   0.7987550   1.1458143
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.0858289   0.9608848   1.2270196
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               1.1539459   1.0381005   1.2827190
Birth       ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Medium               Low               1.1336032   0.8653308   1.4850462
Birth       ki1135781-COHORTS          GUATEMALA     High                 Low               0.8407643   0.5898674   1.1983788
Birth       ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Medium               Low               0.9037997   0.7925525   1.0306622
Birth       ki1135781-COHORTS          INDIA         High                 Low               0.7846661   0.6368762   0.9667514
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               Low               1.1409287   0.9059768   1.4368120
Birth       ki1135781-COHORTS          PHILIPPINES   High                 Low               1.3318798   1.0749351   1.6502425
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.8999582   0.7958945   1.0176283
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.8045149   0.7089870   0.9129142
6 months    ki0047075b-MAL-ED          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA         Medium               Low               0.6679035   0.2213503   2.0153351
6 months    ki0047075b-MAL-ED          INDIA         High                 Low               0.8716707   0.2908945   2.6119773
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               1.7279335   0.7986041   3.7387163
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               1.5456476   0.7363336   3.2444893
6 months    ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Medium               Low               1.2078758   0.6839504   2.1331429
6 months    ki1000108-IRC              INDIA         High                 Low               0.8000849   0.4117526   1.5546614
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.6427382   0.4394477   0.9400719
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.5427062   0.4338575   0.6788636
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.9633308   0.4649920   1.9957468
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.6258065   0.2587448   1.5135905
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.7035176   0.2672878   1.8517005
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.7881773   0.3104212   2.0012275
6 months    ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       Medium               Low               0.7696719   0.4689707   1.2631808
6 months    ki1119695-PROBIT           BELARUS       High                 Low               0.5590126   0.3063769   1.0199693
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7773461   0.5698157   1.0604603
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.5451798   0.4109870   0.7231884
6 months    ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Medium               Low               0.4444811   0.1794478   1.1009520
6 months    ki1135781-COHORTS          GUATEMALA     High                 Low               0.7664296   0.3109232   1.8892584
6 months    ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Medium               Low               0.7039353   0.6092552   0.8133290
6 months    ki1135781-COHORTS          INDIA         High                 Low               0.4895706   0.3759877   0.6374661
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7761630   0.5386969   1.1183080
6 months    ki1135781-COHORTS          PHILIPPINES   High                 Low               0.7035796   0.4909392   1.0083209
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.8685635   0.7658247   0.9850852
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.7887952   0.6906805   0.9008475
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.6743119   0.2662643   1.7076886
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.3987342   0.1492164   1.0654927
24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Medium               Low               1.3654676   0.6184860   3.0146223
24 months   ki1000108-IRC              INDIA         High                 Low               0.9419355   0.3831720   2.3155201
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.8923679   0.4957300   1.6063594
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.7794872   0.4130091   1.4711547
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.7420343   0.4281263   1.2861041
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.7172471   0.4105213   1.2531466
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               0.8248588   0.4062119   1.6749679
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.9281975   0.4728800   1.8219222
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.4565993   0.9372290   2.2637814
24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               1.1444709   0.6393925   2.0485283
24 months   ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       Medium               Low               0.9680859   0.3453932   2.7134015
24 months   ki1119695-PROBIT           BELARUS       High                 Low               1.6591306   0.8459328   3.2540582
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7423256   0.4399102   1.2526358
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7600000   0.4718483   1.2241223
24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.7104280   0.3717077   1.3578085
24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.8165869   0.3906266   1.7070373
24 months   ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Medium               Low               0.4740380   0.3906861   0.5751728
24 months   ki1135781-COHORTS          INDIA         High                 Low               0.1814911   0.1116436   0.2950372
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7489892   0.5298042   1.0588532
24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.5759785   0.4017523   0.8257606
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               1.0320431   0.9314208   1.1435356
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.9486115   0.8549990   1.0524735
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               0.4704369   0.2110238   1.0487488
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               0.9806291   0.5835110   1.6480125


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                 0.0263736   -0.0473792    0.1001264
Birth       ki1000108-IRC              INDIA         Low                  NA                -0.0016197   -0.0632882    0.0600488
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                -0.0029455   -0.0234783    0.0175873
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0151414    0.0032125    0.0270704
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0026738   -0.0310788    0.0364264
Birth       ki1135781-COHORTS          INDIA         Low                  NA                -0.0153511   -0.0308635    0.0001612
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.0231127    0.0032018    0.0430235
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0093496   -0.0156279   -0.0030714
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.0154915   -0.0687889    0.0378060
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.0384615   -0.0107097    0.0876328
6 months    ki1000108-IRC              INDIA         Low                  NA                 0.0013185   -0.0429361    0.0455730
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0349582   -0.0481421   -0.0217743
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0087321   -0.0368986    0.0194344
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0087629   -0.0342335    0.0167077
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.0018525   -0.0044865    0.0007815
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0138932   -0.0223674   -0.0054189
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0097874   -0.0219126    0.0023378
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.0379387   -0.0514567   -0.0244208
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0133181   -0.0275509    0.0009147
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0110573   -0.0175672   -0.0045474
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0334101   -0.0778754    0.0110551
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0073015   -0.0264763    0.0410792
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0143261   -0.0573373    0.0286851
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0262716   -0.0678800    0.0153369
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0083418   -0.0481579    0.0314743
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0161039   -0.0068548    0.0390626
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                 0.0009428   -0.0047819    0.0066674
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0396292   -0.1029341    0.0236757
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0068542   -0.0200093    0.0063009
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.0636797   -0.0789907   -0.0483687
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0213811   -0.0375907   -0.0051715
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0016300   -0.0141403    0.0108803
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0040782   -0.0090410    0.0008847


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                 0.1558442   -0.4116257    0.4951926
Birth       ki1000108-IRC              INDIA         Low                  NA                -0.0060386   -0.2643472    0.1994970
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                -0.0140993   -0.1159162    0.0784278
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0949728    0.0170375    0.1667290
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0105820   -0.1324346    0.1355369
Birth       ki1135781-COHORTS          INDIA         Low                  NA                -0.0877029   -0.1799429   -0.0026735
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                 0.1485667    0.0109567    0.2670304
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0973762   -0.1645155   -0.0341079
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.1895425   -1.0502290    0.3098277
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.3076923   -0.2094506    0.6037127
6 months    ki1000108-IRC              INDIA         Low                  NA                 0.0099617   -0.3877916    0.2937154
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.2809291   -0.4089468   -0.1645431
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.1376592   -0.6779854    0.2286772
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.2125000   -1.0095838    0.2684275
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.2245371   -0.5852046    0.0540710
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.4325755   -0.7168392   -0.1953783
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.3008837   -0.7145811    0.0129960
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.2955832   -0.4039515   -0.1955796
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.2238437   -0.4856166   -0.0081965
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.1306537   -0.2099381   -0.0565645
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.5403727   -1.4159784    0.0178936
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0963323   -0.4780653    0.4475107
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.1156902   -0.5220205    0.1821631
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.2336149   -0.6614807    0.0840665
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0952816   -0.6581031    0.2764975
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0885714   -0.0461223    0.2059226
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                 0.0850833   -0.5591544    0.4631240
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.2205679   -0.6272484    0.0844754
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.1493941   -0.4717164    0.1023360
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.6908582   -0.8557132   -0.5406484
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.3135467   -0.5698026   -0.0991222
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0074735   -0.0665063    0.0482918
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0207014   -0.0460543    0.0040371
