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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       61     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       57     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1        3     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       71     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        1     195
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               0       51     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               1        0     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            0       68     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     182
Birth       ki0047075b-MAL-ED          BRAZIL                         High              0       63     182
Birth       ki0047075b-MAL-ED          BRAZIL                         High              1        0     182
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       59     180
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        1     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       64     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        5     180
Birth       ki0047075b-MAL-ED          INDIA                          High              0       50     180
Birth       ki0047075b-MAL-ED          INDIA                          High              1        1     180
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       65     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        0     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0       51     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        2     155
Birth       ki0047075b-MAL-ED          NEPAL                          High              0       36     155
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1     155
Birth       ki0047075b-MAL-ED          PERU                           Low               0       98     278
Birth       ki0047075b-MAL-ED          PERU                           Low               1        0     278
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       98     278
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        0     278
Birth       ki0047075b-MAL-ED          PERU                           High              0       82     278
Birth       ki0047075b-MAL-ED          PERU                           High              1        0     278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      127     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       57     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       72     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       34     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       64     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        1     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        4     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       14      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       21      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              0       48      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0      88
Birth       ki1000108-IRC              INDIA                          Low               0      102     343
Birth       ki1000108-IRC              INDIA                          Low               1       24     343
Birth       ki1000108-IRC              INDIA                          Medium            0       98     343
Birth       ki1000108-IRC              INDIA                          Medium            1       18     343
Birth       ki1000108-IRC              INDIA                          High              0       89     343
Birth       ki1000108-IRC              INDIA                          High              1       12     343
Birth       ki1000109-EE               PAKISTAN                       Low               0        1       1
Birth       ki1000109-EE               PAKISTAN                       Low               1        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium            0        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium            1        0       1
Birth       ki1000109-EE               PAKISTAN                       High              0        0       1
Birth       ki1000109-EE               PAKISTAN                       High              1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0       73     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0       59     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0       29     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               0       13      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0      23
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4599   13824
Birth       ki1119695-PROBIT           BELARUS                        Low               1      343   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6212   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium            1      430   13824
Birth       ki1119695-PROBIT           BELARUS                        High              0     2102   13824
Birth       ki1119695-PROBIT           BELARUS                        High              1      138   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2549   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      147   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3010   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      175   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0     6547   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1      468   12896
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      325     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       19     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      220     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       27     748
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      145     748
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       12     748
Birth       ki1135781-COHORTS          INDIA                          Low               0     1513    4879
Birth       ki1135781-COHORTS          INDIA                          Low               1       89    4879
Birth       ki1135781-COHORTS          INDIA                          Medium            0     2494    4879
Birth       ki1135781-COHORTS          INDIA                          Medium            1      127    4879
Birth       ki1135781-COHORTS          INDIA                          High              0      632    4879
Birth       ki1135781-COHORTS          INDIA                          High              1       24    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      810    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       28    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      892    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       41    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0     1076    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       52    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6096   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1      111   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4750   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1       80   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     4585   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1       63   15685
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      290     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1        3     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0        3     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        0     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0        4     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1        0     300
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       62     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       59     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       73     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        0     196
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       71     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               1        1     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       75     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        2     208
6 months    ki0047075b-MAL-ED          INDIA                          High              0       58     208
6 months    ki0047075b-MAL-ED          INDIA                          High              1        1     208
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       75     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0     221
6 months    ki0047075b-MAL-ED          PERU                           Low               0       94     272
6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       97     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     272
6 months    ki0047075b-MAL-ED          PERU                           High              0       81     272
6 months    ki0047075b-MAL-ED          PERU                           High              1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      125     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       56     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      132     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      101     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      103     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      152     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1        5     368
6 months    ki1000108-IRC              INDIA                          Low               0      138     408
6 months    ki1000108-IRC              INDIA                          Low               1        7     408
6 months    ki1000108-IRC              INDIA                          Medium            0      130     408
6 months    ki1000108-IRC              INDIA                          Medium            1        9     408
6 months    ki1000108-IRC              INDIA                          High              0      118     408
6 months    ki1000108-IRC              INDIA                          High              1        6     408
6 months    ki1000109-EE               PAKISTAN                       Low               0      316     373
6 months    ki1000109-EE               PAKISTAN                       Low               1        9     373
6 months    ki1000109-EE               PAKISTAN                       Medium            0       33     373
6 months    ki1000109-EE               PAKISTAN                       Medium            1        0     373
6 months    ki1000109-EE               PAKISTAN                       High              0       15     373
6 months    ki1000109-EE               PAKISTAN                       High              1        0     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      565    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       31    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      441    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1        8    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      285    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        4    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      287     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       17     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      191     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1        3     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      187     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      153     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1        2     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      177     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      198     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      202     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      246     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       74    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1426    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        8    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      508    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       87     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0      117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1        0     277
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      394     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1        5     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0       92     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        2     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        0     560
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5632   15757
6 months    ki1119695-PROBIT           BELARUS                        Low               1       10   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7454   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium            1        5   15757
6 months    ki1119695-PROBIT           BELARUS                        High              0     2655   15757
6 months    ki1119695-PROBIT           BELARUS                        High              1        1   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1696    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       21    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     2046    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       23    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     4430    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       35    8251
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      447     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        2     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      318     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        1     953
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      182     953
6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3     953
6 months    ki1135781-COHORTS          INDIA                          Low               0     1705    5407
6 months    ki1135781-COHORTS          INDIA                          Low               1       69    5407
6 months    ki1135781-COHORTS          INDIA                          Medium            0     2811    5407
6 months    ki1135781-COHORTS          INDIA                          Medium            1       85    5407
6 months    ki1135781-COHORTS          INDIA                          High              0      730    5407
6 months    ki1135781-COHORTS          INDIA                          High              1        7    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      811    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       13    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      854    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       13    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1006    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1        9    2706
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      261     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      254     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     813
6 months    ki1148112-LCNI-5           MALAWI                         High              0      298     813
6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5531   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1       81   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5170   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1       76   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     5837   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1       72   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1885    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       16    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       69    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        0    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0       68    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        0    2038
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       48     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       64     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        0     171
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       41     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       64     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       68     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               1        1     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       74     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        1     199
24 months   ki0047075b-MAL-ED          INDIA                          High              0       55     199
24 months   ki0047075b-MAL-ED          INDIA                          High              1        0     199
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       91     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        0     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       74     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        0     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       48     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        0     213
24 months   ki0047075b-MAL-ED          PERU                           Low               0       74     200
24 months   ki0047075b-MAL-ED          PERU                           Low               1        0     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       66     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            1        1     200
24 months   ki0047075b-MAL-ED          PERU                           High              0       59     200
24 months   ki0047075b-MAL-ED          PERU                           High              1        0     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       51     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      114     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      103     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      108     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      158     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0     372
24 months   ki1000108-IRC              INDIA                          Low               0      145     409
24 months   ki1000108-IRC              INDIA                          Low               1        1     409
24 months   ki1000108-IRC              INDIA                          Medium            0      137     409
24 months   ki1000108-IRC              INDIA                          Medium            1        2     409
24 months   ki1000108-IRC              INDIA                          High              0      122     409
24 months   ki1000108-IRC              INDIA                          High              1        2     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      149     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      141     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      128     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1        2     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      169     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1        4     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      201     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1        3     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      199     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1        2     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      145     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      175     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      190     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      341     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1        9     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       83     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1        4     495
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       56     495
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1        2     495
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1379    3971
24 months   ki1119695-PROBIT           BELARUS                        Low               1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1934    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium            1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        High              0      654    3971
24 months   ki1119695-PROBIT           BELARUS                        High              1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0      106     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1        8     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      123     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1        6     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      164     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       16     423
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      509    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1        3    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      346    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1        1    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High              0      209    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High              1        0    1068
24 months   ki1135781-COHORTS          INDIA                          Low               0     1238    4166
24 months   ki1135781-COHORTS          INDIA                          Low               1       26    4166
24 months   ki1135781-COHORTS          INDIA                          Medium            0     2286    4166
24 months   ki1135781-COHORTS          INDIA                          Medium            1       15    4166
24 months   ki1135781-COHORTS          INDIA                          High              0      599    4166
24 months   ki1135781-COHORTS          INDIA                          High              1        2    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      741    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      780    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1       10    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      903    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1        8    2449
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      172     556
24 months   ki1148112-LCNI-5           MALAWI                         Low               1        0     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      169     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1        1     556
24 months   ki1148112-LCNI-5           MALAWI                         High              0      214     556
24 months   ki1148112-LCNI-5           MALAWI                         High              1        0     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     2881    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      118    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     2569    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      112    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     2809    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      103    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1804    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1       51    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       72    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        2    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       71    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1        0    2000


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0a7131ea-95c2-4b97-95bd-d12d0b54c963/42e81e72-c877-4402-b107-0b1c3ed32bc0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a7131ea-95c2-4b97-95bd-d12d0b54c963/42e81e72-c877-4402-b107-0b1c3ed32bc0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a7131ea-95c2-4b97-95bd-d12d0b54c963/42e81e72-c877-4402-b107-0b1c3ed32bc0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a7131ea-95c2-4b97-95bd-d12d0b54c963/42e81e72-c877-4402-b107-0b1c3ed32bc0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         Low                  NA                0.1904762   0.1218117   0.2591406
Birth       ki1000108-IRC        INDIA         Medium               NA                0.1551724   0.0891875   0.2211573
Birth       ki1000108-IRC        INDIA         High                 NA                0.1188119   0.0556165   0.1820073
Birth       ki1119695-PROBIT     BELARUS       Low                  NA                0.0694051   0.0286305   0.1101797
Birth       ki1119695-PROBIT     BELARUS       Medium               NA                0.0647395   0.0340474   0.0954317
Birth       ki1119695-PROBIT     BELARUS       High                 NA                0.0616071   0.0292362   0.0939781
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                0.0545252   0.0459543   0.0630962
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Medium               NA                0.0549451   0.0470309   0.0628592
Birth       ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                0.0667142   0.0608748   0.0725536
Birth       ki1135781-COHORTS    GUATEMALA     Low                  NA                0.0552326   0.0310769   0.0793882
Birth       ki1135781-COHORTS    GUATEMALA     Medium               NA                0.1093117   0.0703726   0.1482509
Birth       ki1135781-COHORTS    GUATEMALA     High                 NA                0.0764331   0.0348455   0.1180207
Birth       ki1135781-COHORTS    INDIA         Low                  NA                0.0555556   0.0443376   0.0667735
Birth       ki1135781-COHORTS    INDIA         Medium               NA                0.0484548   0.0402335   0.0566761
Birth       ki1135781-COHORTS    INDIA         High                 NA                0.0365854   0.0222172   0.0509535
Birth       ki1135781-COHORTS    PHILIPPINES   Low                  NA                0.0334129   0.0212432   0.0455825
Birth       ki1135781-COHORTS    PHILIPPINES   Medium               NA                0.0439443   0.0307897   0.0570988
Birth       ki1135781-COHORTS    PHILIPPINES   High                 NA                0.0460993   0.0338597   0.0583389
Birth       kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                0.0178830   0.0137119   0.0220542
Birth       kiGH5241-JiVitA-3    BANGLADESH    Medium               NA                0.0165631   0.0127386   0.0203877
Birth       kiGH5241-JiVitA-3    BANGLADESH    High                 NA                0.0135542   0.0101029   0.0170055
6 months    ki1000108-IRC        INDIA         Low                  NA                0.0482759   0.0133443   0.0832074
6 months    ki1000108-IRC        INDIA         Medium               NA                0.0647482   0.0237890   0.1057074
6 months    ki1000108-IRC        INDIA         High                 NA                0.0483871   0.0105720   0.0862022
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                0.0122306   0.0070314   0.0174299
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Medium               NA                0.0111165   0.0065984   0.0156345
6 months    ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                0.0078387   0.0052519   0.0104256
6 months    ki1135781-COHORTS    INDIA         Low                  NA                0.0388952   0.0298972   0.0478931
6 months    ki1135781-COHORTS    INDIA         Medium               NA                0.0293508   0.0232029   0.0354988
6 months    ki1135781-COHORTS    INDIA         High                 NA                0.0094980   0.0024947   0.0165012
6 months    ki1135781-COHORTS    PHILIPPINES   Low                  NA                0.0157767   0.0072669   0.0242865
6 months    ki1135781-COHORTS    PHILIPPINES   Medium               NA                0.0149942   0.0069033   0.0230852
6 months    ki1135781-COHORTS    PHILIPPINES   High                 NA                0.0088670   0.0030987   0.0146353
6 months    kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                0.0144334   0.0109826   0.0178842
6 months    kiGH5241-JiVitA-3    BANGLADESH    Medium               NA                0.0144872   0.0107306   0.0182439
6 months    kiGH5241-JiVitA-3    BANGLADESH    High                 NA                0.0121848   0.0089520   0.0154176
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                0.0701754   0.0232290   0.1171219
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Medium               NA                0.0465116   0.0101280   0.0828952
24 months   ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                0.0888889   0.0472657   0.1305121
24 months   ki1135781-COHORTS    PHILIPPINES   Low                  NA                0.0093583   0.0024568   0.0162598
24 months   ki1135781-COHORTS    PHILIPPINES   Medium               NA                0.0126582   0.0048609   0.0204555
24 months   ki1135781-COHORTS    PHILIPPINES   High                 NA                0.0087816   0.0027219   0.0148412
24 months   kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                0.0393464   0.0318359   0.0468570
24 months   kiGH5241-JiVitA-3    BANGLADESH    Medium               NA                0.0417755   0.0331654   0.0503855
24 months   kiGH5241-JiVitA-3    BANGLADESH    High                 NA                0.0353709   0.0287150   0.0420268


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1119695-PROBIT     BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0612593   0.0571203   0.0653983
Birth       ki1135781-COHORTS    GUATEMALA     NA                   NA                0.0775401   0.0583612   0.0967191
Birth       ki1135781-COHORTS    INDIA         NA                   NA                0.0491904   0.0431214   0.0552594
Birth       ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0161938   0.0138266   0.0185610
6 months    ki1000108-IRC        INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0095746   0.0074733   0.0116759
6 months    ki1135781-COHORTS    INDIA         NA                   NA                0.0297762   0.0252454   0.0343071
6 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0136578   0.0115849   0.0157307
24 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0709220   0.0464309   0.0954131
24 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0387570   0.0344303   0.0430837


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC        INDIA         Medium               Low               0.8146552   0.4665153   1.4225966
Birth       ki1000108-IRC        INDIA         High                 Low               0.6237624   0.3280692   1.1859678
Birth       ki1119695-PROBIT     BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT     BELARUS       Medium               Low               0.9327778   0.6948062   1.2522548
Birth       ki1119695-PROBIT     BELARUS       High                 Low               0.8876458   0.6435955   1.2242394
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Medium               Low               1.0076998   0.8142123   1.2471671
Birth       ki1126311-ZVITAMBO   ZIMBABWE      High                 Low               1.2235472   1.0220759   1.4647325
Birth       ki1135781-COHORTS    GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS    GUATEMALA     Medium               Low               1.9791178   1.1259091   3.4788842
Birth       ki1135781-COHORTS    GUATEMALA     High                 Low               1.3838418   0.6885139   2.7813787
Birth       ki1135781-COHORTS    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS    INDIA         Medium               Low               0.8721862   0.6699875   1.1354075
Birth       ki1135781-COHORTS    INDIA         High                 Low               0.6585366   0.4234440   1.0241505
Birth       ki1135781-COHORTS    PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS    PHILIPPINES   Medium               Low               1.3151891   0.8208058   2.1073467
Birth       ki1135781-COHORTS    PHILIPPINES   High                 Low               1.3796859   0.8790923   2.1653393
Birth       kiGH5241-JiVitA-3    BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3    BANGLADESH    Medium               Low               0.9261933   0.6740978   1.2725661
Birth       kiGH5241-JiVitA-3    BANGLADESH    High                 Low               0.7579372   0.5435161   1.0569489
6 months    ki1000108-IRC        INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC        INDIA         Medium               Low               1.3412127   0.5129682   3.5067510
6 months    ki1000108-IRC        INDIA         High                 Low               1.0023041   0.3455050   2.9076674
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Medium               Low               0.9089047   0.5047747   1.6365869
6 months    ki1126311-ZVITAMBO   ZIMBABWE      High                 Low               0.6409108   0.3741762   1.0977894
6 months    ki1135781-COHORTS    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS    INDIA         Medium               Low               0.7546141   0.5523201   1.0310006
6 months    ki1135781-COHORTS    INDIA         High                 Low               0.2441940   0.1127514   0.5288692
6 months    ki1135781-COHORTS    PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS    PHILIPPINES   Medium               Low               0.9504037   0.4431559   2.0382607
6 months    ki1135781-COHORTS    PHILIPPINES   High                 Low               0.5620311   0.2414077   1.3084871
6 months    kiGH5241-JiVitA-3    BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH    Medium               Low               1.0037324   0.7115507   1.4158918
6 months    kiGH5241-JiVitA-3    BANGLADESH    High                 Low               0.8442113   0.5909117   1.2060899
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Medium               Low               0.6627907   0.2367871   1.8552176
24 months   ki1126311-ZVITAMBO   ZIMBABWE      High                 Low               1.2666667   0.5597884   2.8661625
24 months   ki1135781-COHORTS    PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS    PHILIPPINES   Medium               Low               1.3526221   0.5174500   3.5357743
24 months   ki1135781-COHORTS    PHILIPPINES   High                 Low               0.9383723   0.3417855   2.5763019
24 months   kiGH5241-JiVitA-3    BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH    Medium               Low               1.0617339   0.7973450   1.4137905
24 months   kiGH5241-JiVitA-3    BANGLADESH    High                 Low               0.8989599   0.6867586   1.1767292


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA         Low                  NA                -0.0330418   -0.0853947    0.0193111
Birth       ki1119695-PROBIT     BELARUS       Low                  NA                -0.0035052   -0.0162040    0.0091936
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                 0.0067341   -0.0010040    0.0144721
Birth       ki1135781-COHORTS    GUATEMALA     Low                  NA                 0.0223075    0.0019449    0.0426702
Birth       ki1135781-COHORTS    INDIA         Low                  NA                -0.0063651   -0.0153114    0.0025811
Birth       ki1135781-COHORTS    PHILIPPINES   Low                  NA                 0.0083256   -0.0024213    0.0190726
Birth       kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                -0.0016892   -0.0045187    0.0011403
6 months    ki1000108-IRC        INDIA         Low                  NA                 0.0056457   -0.0232403    0.0345317
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                -0.0026560   -0.0071502    0.0018381
6 months    ki1135781-COHORTS    INDIA         Low                  NA                -0.0091189   -0.0160734   -0.0021644
6 months    ki1135781-COHORTS    PHILIPPINES   Low                  NA                -0.0028425   -0.0096575    0.0039725
6 months    kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                -0.0007756   -0.0035728    0.0020216
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                 0.0007465   -0.0394508    0.0409439
24 months   ki1135781-COHORTS    PHILIPPINES   Low                  NA                 0.0008500   -0.0050144    0.0067143
24 months   kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                -0.0005895   -0.0067257    0.0055467


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA         Low                  NA                -0.2098765   -0.5897267    0.0792120
Birth       ki1119695-PROBIT     BELARUS       Low                  NA                -0.0531900   -0.2509425    0.1133012
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                 0.1099275   -0.0255689    0.2275223
Birth       ki1135781-COHORTS    GUATEMALA     Low                  NA                 0.2876905   -0.0174661    0.5013250
Birth       ki1135781-COHORTS    INDIA         Low                  NA                -0.1293981   -0.3260016    0.0380553
Birth       ki1135781-COHORTS    PHILIPPINES   Low                  NA                 0.1994714   -0.1012140    0.4180550
Birth       kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                -0.1043126   -0.2893124    0.0541420
6 months    ki1000108-IRC        INDIA         Low                  NA                 0.1047022   -0.6258835    0.5070015
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                -0.2774047   -0.8390556    0.1127170
6 months    ki1135781-COHORTS    INDIA         Low                  NA                -0.3062490   -0.5568378   -0.0959950
6 months    ki1135781-COHORTS    PHILIPPINES   Low                  NA                -0.2197642   -0.8713588    0.2049495
6 months    kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                -0.0567865   -0.2831985    0.1296767
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                 0.0105263   -0.7545639    0.4419934
24 months   ki1135781-COHORTS    PHILIPPINES   Low                  NA                 0.0832620   -0.7138263    0.5096303
24 months   kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                -0.0152093   -0.1865572    0.1313947
