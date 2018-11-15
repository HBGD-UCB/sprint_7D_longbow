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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        meducyrs    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                0       65     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                1        3     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             0       62     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               0       73     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               1        2     207
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                0       51     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                1        1     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium             0       69     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium             1        4     190
Birth       ki0047075b-MAL-ED          BRAZIL                         High               0       62     190
Birth       ki0047075b-MAL-ED          BRAZIL                         High               1        3     190
Birth       ki0047075b-MAL-ED          INDIA                          Low                0       60     183
Birth       ki0047075b-MAL-ED          INDIA                          Low                1        1     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium             0       69     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium             1        2     183
Birth       ki0047075b-MAL-ED          INDIA                          High               0       49     183
Birth       ki0047075b-MAL-ED          INDIA                          High               1        2     183
Birth       ki0047075b-MAL-ED          NEPAL                          Low                0       65     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low                1        3     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             0       52     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             1        3     160
Birth       ki0047075b-MAL-ED          NEPAL                          High               0       37     160
Birth       ki0047075b-MAL-ED          NEPAL                          High               1        0     160
Birth       ki0047075b-MAL-ED          PERU                           Low                0       98     286
Birth       ki0047075b-MAL-ED          PERU                           Low                1        1     286
Birth       ki0047075b-MAL-ED          PERU                           Medium             0       97     286
Birth       ki0047075b-MAL-ED          PERU                           Medium             1        3     286
Birth       ki0047075b-MAL-ED          PERU                           High               0       83     286
Birth       ki0047075b-MAL-ED          PERU                           High               1        4     286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0      131     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       57     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       72     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       34     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        1     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       65     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        3     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        4     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        0     107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       15      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       23      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High               0       49      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High               1        1      90
Birth       ki1000108-IRC              INDIA                          Low                0      137     388
Birth       ki1000108-IRC              INDIA                          Low                1        5     388
Birth       ki1000108-IRC              INDIA                          Medium             0      125     388
Birth       ki1000108-IRC              INDIA                          Medium             1        8     388
Birth       ki1000108-IRC              INDIA                          High               0      110     388
Birth       ki1000108-IRC              INDIA                          High               1        3     388
Birth       ki1000109-EE               PAKISTAN                       Low                0        2       2
Birth       ki1000109-EE               PAKISTAN                       Low                1        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium             0        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium             1        0       2
Birth       ki1000109-EE               PAKISTAN                       High               0        0       2
Birth       ki1000109-EE               PAKISTAN                       High               1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                0       79     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                1        7     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             0       68     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               0       29     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               1        2     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                0       14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium             0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High               0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High               1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                0       12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               1        0      27
Birth       ki1119695-PROBIT           BELARUS                        Low                0     4961   13884
Birth       ki1119695-PROBIT           BELARUS                        Low                1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium             0     6670   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium             1        4   13884
Birth       ki1119695-PROBIT           BELARUS                        High               0     2248   13884
Birth       ki1119695-PROBIT           BELARUS                        High               1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     2794   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                1      110   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     3301   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      118   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               0     7274   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               1      213   13810
Birth       ki1135781-COHORTS          GUATEMALA                      Low                0      384     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low                1        7     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             0      270     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             1        3     842
Birth       ki1135781-COHORTS          GUATEMALA                      High               0      177     842
Birth       ki1135781-COHORTS          GUATEMALA                      High               1        1     842
Birth       ki1135781-COHORTS          INDIA                          Low                0     1683    5216
Birth       ki1135781-COHORTS          INDIA                          Low                1       73    5216
Birth       ki1135781-COHORTS          INDIA                          Medium             0     2716    5216
Birth       ki1135781-COHORTS          INDIA                          Medium             1       66    5216
Birth       ki1135781-COHORTS          INDIA                          High               0      668    5216
Birth       ki1135781-COHORTS          INDIA                          High               1       10    5216
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                0      882    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                1       18    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             0      966    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             1       15    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    High               0     1156    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    High               1       13    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0     6986   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1      911   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5437   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      701   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     5123   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      429   19587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      329     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1       25     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0        5     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        0     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0        6     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1        2     367
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                0       59     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                1        5     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             0       58     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             1        1     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               0       72     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               1        1     196
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                0       56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium             0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium             1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High               0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High               1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Low                0       70     208
6 months    ki0047075b-MAL-ED          INDIA                          Low                1        2     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium             0       73     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium             1        4     208
6 months    ki0047075b-MAL-ED          INDIA                          High               0       58     208
6 months    ki0047075b-MAL-ED          INDIA                          High               1        1     208
6 months    ki0047075b-MAL-ED          NEPAL                          Low                0       93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low                1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             0       74     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             1        1     221
6 months    ki0047075b-MAL-ED          NEPAL                          High               0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High               1        0     221
6 months    ki0047075b-MAL-ED          PERU                           Low                0       87     272
6 months    ki0047075b-MAL-ED          PERU                           Low                1        7     272
6 months    ki0047075b-MAL-ED          PERU                           Medium             0       93     272
6 months    ki0047075b-MAL-ED          PERU                           Medium             1        4     272
6 months    ki0047075b-MAL-ED          PERU                           High               0       80     272
6 months    ki0047075b-MAL-ED          PERU                           High               1        1     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0      123     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       57     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       68     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       60     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0      126     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        6     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        0     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       89     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                1       16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1       13     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High               0      144     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High               1       13     369
6 months    ki1000108-IRC              INDIA                          Low                0      133     407
6 months    ki1000108-IRC              INDIA                          Low                1       13     407
6 months    ki1000108-IRC              INDIA                          Medium             0      128     407
6 months    ki1000108-IRC              INDIA                          Medium             1       10     407
6 months    ki1000108-IRC              INDIA                          High               0      117     407
6 months    ki1000108-IRC              INDIA                          High               1        6     407
6 months    ki1000109-EE               PAKISTAN                       Low                0      237     369
6 months    ki1000109-EE               PAKISTAN                       Low                1       84     369
6 months    ki1000109-EE               PAKISTAN                       Medium             0       27     369
6 months    ki1000109-EE               PAKISTAN                       Medium             1        6     369
6 months    ki1000109-EE               PAKISTAN                       High               0       13     369
6 months    ki1000109-EE               PAKISTAN                       High               1        2     369
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                0      521    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                1       76    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             0      409    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             1       40    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               0      278    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               1       12    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                0      257     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                1       47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             0       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               0       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               1        2     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                0      174     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                1       21     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium             0      176     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium             1       11     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High               0      152     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High               1        3     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                0      174     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                1        6     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             0      193     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             1        7     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               0      202     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               1        1     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      221     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        8     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      239     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               0      232     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               1        8     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0       73    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0     1423    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1       12    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      506    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        6    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                0       67     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                1        6     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium             0       82     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium             1        5     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High               0      103     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High               1       14     277
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      379     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       20     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0       94     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        0     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0       67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        0     560
6 months    ki1119695-PROBIT           BELARUS                        Low                0     5524   15761
6 months    ki1119695-PROBIT           BELARUS                        Low                1      120   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium             0     7363   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium             1       97   15761
6 months    ki1119695-PROBIT           BELARUS                        High               0     2631   15761
6 months    ki1119695-PROBIT           BELARUS                        High               1       26   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     1638    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       81    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     1978    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      102    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               0     4320    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               1      163    8282
6 months    ki1135781-COHORTS          GUATEMALA                      Low                0      381     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low                1       68     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             0      288     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             1       30     952
6 months    ki1135781-COHORTS          GUATEMALA                      High               0      161     952
6 months    ki1135781-COHORTS          GUATEMALA                      High               1       24     952
6 months    ki1135781-COHORTS          INDIA                          Low                0     1638    5413
6 months    ki1135781-COHORTS          INDIA                          Low                1      139    5413
6 months    ki1135781-COHORTS          INDIA                          Medium             0     2793    5413
6 months    ki1135781-COHORTS          INDIA                          Medium             1      107    5413
6 months    ki1135781-COHORTS          INDIA                          High               0      731    5413
6 months    ki1135781-COHORTS          INDIA                          High               1        5    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                0      770    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                1       56    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             0      820    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             1       48    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    High               0      986    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    High               1       28    2708
6 months    ki1148112-LCNI-5           MALAWI                         Low                0      233     813
6 months    ki1148112-LCNI-5           MALAWI                         Low                1       28     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium             0      236     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium             1       18     813
6 months    ki1148112-LCNI-5           MALAWI                         High               0      279     813
6 months    ki1148112-LCNI-5           MALAWI                         High               1       19     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0     5201   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      421   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     4901   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      349   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0     5673   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      249   16794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1794    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      105    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0       65    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        4    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0       63    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1        5    2036
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                0       53     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                1        6     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             0       44     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             1        4     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               0       59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               1        5     171
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                0       42     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium             0       63     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium             1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High               0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High               1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Low                0       61     199
24 months   ki0047075b-MAL-ED          INDIA                          Low                1        8     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium             0       65     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium             1       10     199
24 months   ki0047075b-MAL-ED          INDIA                          High               0       53     199
24 months   ki0047075b-MAL-ED          INDIA                          High               1        2     199
24 months   ki0047075b-MAL-ED          NEPAL                          Low                0       89     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low                1        2     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             0       73     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             1        1     213
24 months   ki0047075b-MAL-ED          NEPAL                          High               0       46     213
24 months   ki0047075b-MAL-ED          NEPAL                          High               1        2     213
24 months   ki0047075b-MAL-ED          PERU                           Low                0       67     200
24 months   ki0047075b-MAL-ED          PERU                           Low                1        7     200
24 months   ki0047075b-MAL-ED          PERU                           Medium             0       62     200
24 months   ki0047075b-MAL-ED          PERU                           Medium             1        5     200
24 months   ki0047075b-MAL-ED          PERU                           High               0       56     200
24 months   ki0047075b-MAL-ED          PERU                           High               1        3     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0      103     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       46     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        4     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       32     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1       22     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       86     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1       28     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        6     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        1     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       66     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                1       39     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       76     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High               0      107     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High               1       51     372
24 months   ki1000108-IRC              INDIA                          Low                0      131     409
24 months   ki1000108-IRC              INDIA                          Low                1       15     409
24 months   ki1000108-IRC              INDIA                          Medium             0      126     409
24 months   ki1000108-IRC              INDIA                          Medium             1       13     409
24 months   ki1000108-IRC              INDIA                          High               0      111     409
24 months   ki1000108-IRC              INDIA                          High               1       13     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                0      105     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                1       48     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium             0      113     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium             1       33     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High               0      118     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High               1       12     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                0      149     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                1       24     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             0      185     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               0      194     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               1        7     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      133     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      161     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1       16     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               0      185     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               1        6     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      306     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       44     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0       80     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1        8     496
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0       56     496
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        2     496
24 months   ki1119695-PROBIT           BELARUS                        Low                0     1375    4035
24 months   ki1119695-PROBIT           BELARUS                        Low                1       33    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium             0     1933    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium             1       30    4035
24 months   ki1119695-PROBIT           BELARUS                        High               0      662    4035
24 months   ki1119695-PROBIT           BELARUS                        High               1        2    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                0       81     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       35     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0       93     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1       43     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               0      152     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               1       53     457
24 months   ki1135781-COHORTS          GUATEMALA                      Low                0      273    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low                1      235    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             0      219    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             1      124    1060
24 months   ki1135781-COHORTS          GUATEMALA                      High               0      115    1060
24 months   ki1135781-COHORTS          GUATEMALA                      High               1       94    1060
24 months   ki1135781-COHORTS          INDIA                          Low                0      820    4201
24 months   ki1135781-COHORTS          INDIA                          Low                1      454    4201
24 months   ki1135781-COHORTS          INDIA                          Medium             0     1970    4201
24 months   ki1135781-COHORTS          INDIA                          Medium             1      349    4201
24 months   ki1135781-COHORTS          INDIA                          High               0      590    4201
24 months   ki1135781-COHORTS          INDIA                          High               1       18    4201
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                0      459    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                1      285    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             0      538    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             1      249    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High               0      759    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High               1      155    2445
24 months   ki1148112-LCNI-5           MALAWI                         Low                0      150     572
24 months   ki1148112-LCNI-5           MALAWI                         Low                1       27     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium             0      154     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium             1       21     572
24 months   ki1148112-LCNI-5           MALAWI                         High               0      203     572
24 months   ki1148112-LCNI-5           MALAWI                         High               1       17     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     2389    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1      615    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     2255    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      435    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     2634    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      293    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1671    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      190    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0       66    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        8    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0       63    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1        8    2006


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/538e2e1c-ec52-4d48-861e-77940fe0ba2d/28cc16c5-8929-4a63-84ae-62b0937c35b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/538e2e1c-ec52-4d48-861e-77940fe0ba2d/28cc16c5-8929-4a63-84ae-62b0937c35b2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/538e2e1c-ec52-4d48-861e-77940fe0ba2d/28cc16c5-8929-4a63-84ae-62b0937c35b2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/538e2e1c-ec52-4d48-861e-77940fe0ba2d/28cc16c5-8929-4a63-84ae-62b0937c35b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0378788   0.0309353   0.0448223
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0345130   0.0283940   0.0406320
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0284493   0.0246833   0.0322153
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0415718   0.0322348   0.0509087
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0237239   0.0180682   0.0293797
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0147493   0.0056745   0.0238240
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0200000   0.0108520   0.0291480
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0152905   0.0076107   0.0229703
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0111206   0.0051082   0.0171330
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1153603   0.1081551   0.1225655
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1142066   0.1053869   0.1230262
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0772695   0.0694186   0.0851203
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1523810   0.0835461   0.2212158
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1214953   0.0595088   0.1834819
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0828025   0.0396366   0.1259684
6 months    ki1000108-IRC              INDIA         Low                  NA                0.0890411   0.0427870   0.1352952
6 months    ki1000108-IRC              INDIA         Medium               NA                0.0724638   0.0291557   0.1157718
6 months    ki1000108-IRC              INDIA         High                 NA                0.0487805   0.0106657   0.0868952
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1273032   0.1083867   0.1462196
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0890869   0.0621624   0.1160113
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0413793   0.0226362   0.0601225
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0349345   0.0111365   0.0587325
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0284553   0.0076632   0.0492473
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0333333   0.0106073   0.0560594
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                0.0821918   0.0190725   0.1453111
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               NA                0.0574713   0.0084769   0.1064657
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                0.1196581   0.0607416   0.1785747
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0212615   0.0126112   0.0299118
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0130027   0.0079166   0.0180888
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0097855   0.0061891   0.0133818
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0471204   0.0371029   0.0571379
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0490385   0.0397575   0.0583194
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0363596   0.0308799   0.0418393
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.1514477   0.1182717   0.1846236
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0943396   0.0621962   0.1264831
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.1297297   0.0812860   0.1781734
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0782217   0.0657358   0.0907077
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0368966   0.0300351   0.0437580
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0067935   0.0008586   0.0127284
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0677966   0.0506492   0.0849440
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0552995   0.0400914   0.0705077
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0276134   0.0175258   0.0377010
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                0.1072797   0.0697123   0.1448471
6 months    ki1148112-LCNI-5           MALAWI        Medium               NA                0.0708661   0.0392901   0.1024421
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                0.0637584   0.0360016   0.0915152
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0748844   0.0677259   0.0820429
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0664762   0.0593429   0.0736095
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0420466   0.0369365   0.0471567
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.3714286   0.2788836   0.4639736
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.3027523   0.2163835   0.3891210
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.3227848   0.2497846   0.3957850
24 months   ki1000108-IRC              INDIA         Low                  NA                0.1027397   0.0534301   0.1520493
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1000108-IRC              INDIA         High                 NA                0.1048387   0.0508528   0.1588246
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.3137255   0.2401161   0.3873348
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.2260274   0.1581036   0.2939512
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0923077   0.0424914   0.1421240
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1387283   0.0871753   0.1902814
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0886700   0.0495316   0.1278083
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0348259   0.0094582   0.0601935
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0890411   0.0427988   0.1352834
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0903955   0.0481107   0.1326803
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0314136   0.0066518   0.0561754
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.3017241   0.2181035   0.3853447
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.3161765   0.2379433   0.3944097
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.2585366   0.1985364   0.3185368
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.4625984   0.4192201   0.5059767
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.3615160   0.3106480   0.4123840
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.4497608   0.3822852   0.5172363
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.3563579   0.3300564   0.3826594
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.1504959   0.1359415   0.1650503
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0296053   0.0161309   0.0430796
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.3830645   0.3481259   0.4180032
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.3163914   0.2838927   0.3488900
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1695842   0.1452508   0.1939177
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                0.1525424   0.0995278   0.2055570
24 months   ki1148112-LCNI-5           MALAWI        Medium               NA                0.1200000   0.0718118   0.1681882
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                0.0772727   0.0419571   0.1125883
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2047270   0.1896058   0.2198483
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1617100   0.1463750   0.1770451
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1001025   0.0889889   0.1112161
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1020956   0.0859035   0.1182878
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1081081   0.0197419   0.1964743
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1126761   0.0392797   0.1860724


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0319334   0.0290009   0.0348659
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0285660   0.0240448   0.0330871
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1042018   0.0995258   0.1088777
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1112895-Guatemala BSC    GUATEMALA     NA                   NA                0.0902527   0.0564475   0.1240580
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0417773   0.0374680   0.0460867
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1281513   0.1069071   0.1493954
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0463699   0.0407674   0.0519723
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0799508   0.0612962   0.0986054
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606764   0.0568167   0.0645362
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2866521   0.2451477   0.3281565
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4273585   0.3975639   0.4571531
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1954297   0.1834374   0.2074219
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1136364   0.0876051   0.1396676
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1557824   0.1470499   0.1645149
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1026919   0.0870391   0.1183447


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.9111436   0.7060458   1.1758199
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7510618   0.5990705   0.9416153
Birth       ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Medium               Low               0.5706745   0.4112843   0.7918353
Birth       ki1135781-COHORTS          INDIA         High                 Low               0.3547906   0.1842971   0.6830079
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7645260   0.3875844   1.5080585
Birth       ki1135781-COHORTS          PHILIPPINES   High                 Low               0.5560308   0.2738668   1.1289072
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9899993   0.8932621   1.0972128
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.6698100   0.5952138   0.7537549
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.7973131   0.4033514   1.5760655
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.5433917   0.2726067   1.0831521
6 months    ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Medium               Low               0.8138239   0.3686650   1.7965071
6 months    ki1000108-IRC              INDIA         High                 Low               0.5478424   0.2143719   1.4000494
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.6998007   0.5335849   0.9177940
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.3250454   0.2049137   0.5156049
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               0.8145325   0.2999546   2.2118786
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.9541667   0.3639632   2.5014455
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               Low               0.6992337   0.2219811   2.2025649
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 Low               1.4558405   0.5846999   3.6248875
6 months    ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       Medium               Low               0.6115594   0.4585554   0.8156156
6 months    ki1119695-PROBIT           BELARUS       High                 Low               0.4602434   0.2752333   0.7696161
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.0407051   0.7829137   1.3833801
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7716311   0.5946141   1.0013462
6 months    ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Medium               Low               0.6229190   0.4154457   0.9340044
6 months    ki1135781-COHORTS          GUATEMALA     High                 Low               0.8565978   0.5555937   1.3206770
6 months    ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Medium               Low               0.4716919   0.3691671   0.6026898
6 months    ki1135781-COHORTS          INDIA         High                 Low               0.0868490   0.0357335   0.2110837
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.8156682   0.5613658   1.1851714
6 months    ki1135781-COHORTS          PHILIPPINES   High                 Low               0.4072978   0.2611821   0.6351565
6 months    ki1148112-LCNI-5           MALAWI        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        Medium               Low               0.6605737   0.3748016   1.1642361
6 months    ki1148112-LCNI-5           MALAWI        High                 Low               0.5943193   0.3399203   1.0391125
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.8877177   0.7680966   1.0259682
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.5614870   0.4849718   0.6500743
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.8151023   0.5581048   1.1904428
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.8690360   0.6207270   1.2166760
24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Medium               Low               0.9103118   0.4492065   1.8447364
24 months   ki1000108-IRC              INDIA         High                 Low               1.0204301   0.5047440   2.0629815
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.7204623   0.4920767   1.0548478
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.2942308   0.1633492   0.5299797
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.6391626   0.3589429   1.1381441
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.2510365   0.1108156   0.5686861
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               1.0152108   0.5046710   2.0422275
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.3527990   0.1372692   0.9067374
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.0478992   0.7227156   1.5193980
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.8568641   0.5969300   1.2299869
24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.7814900   0.6599155   0.9254618
24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.9722488   0.8145957   1.1604134
24 months   ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Medium               Low               0.4223167   0.3739416   0.4769498
24 months   ki1135781-COHORTS          INDIA         High                 Low               0.0830773   0.0523889   0.1317426
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.8259480   0.7199378   0.9475680
24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.4427041   0.3734850   0.5247518
24 months   ki1148112-LCNI-5           MALAWI        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI        Medium               Low               0.7866667   0.4625380   1.3379321
24 months   ki1148112-LCNI-5           MALAWI        High                 Low               0.5065657   0.2852873   0.8994748
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.7898812   0.7029402   0.8875753
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.4889559   0.4297092   0.5563713
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               1.0588905   0.4631722   2.4208038
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               1.1036323   0.5628326   2.1640613


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0059454   -0.0119899    0.0000991
Birth       ki1135781-COHORTS          INDIA         Low                  NA                -0.0130058   -0.0200002   -0.0060114
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0049180   -0.0121990    0.0023630
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0111585   -0.0169799   -0.0053371
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0385598   -0.0941889    0.0170693
6 months    ki1000108-IRC              INDIA         Low                  NA                -0.0177880   -0.0528687    0.0172926
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0314948   -0.0461215   -0.0168681
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0027667   -0.0220298    0.0164965
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                 0.0080609   -0.0469568    0.0630786
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.0058437   -0.0099558   -0.0017316
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0053431   -0.0141330    0.0034469
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0232964   -0.0459624   -0.0006304
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.0318519   -0.0410675   -0.0226362
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0190521   -0.0324857   -0.0056186
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                -0.0273289   -0.0565377    0.0018799
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0142079   -0.0196316   -0.0087843
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0407834   -0.1183807    0.0368139
24 months   ki1000108-IRC              INDIA         Low                  NA                -0.0024952   -0.0417988    0.0368083
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0969423   -0.1524168   -0.0414678
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0538063   -0.0935841   -0.0140285
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0209477   -0.0583475    0.0164521
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0150721   -0.0869418    0.0567977
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0352399   -0.0663177   -0.0041622
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.1609283   -0.1813246   -0.1405320
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.1012649   -0.1294768   -0.0730530
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                -0.0389060   -0.0807244    0.0029124
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0489446   -0.0601823   -0.0377070
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0005963   -0.0037098    0.0049024


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.1861815   -0.3905677   -0.0118362
Birth       ki1135781-COHORTS          INDIA         Low                  NA                -0.4552904   -0.7102745   -0.2383217
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.3260870   -0.8958480    0.0724433
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.1070855   -0.1649569   -0.0520889
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.3387755   -0.9195952    0.0663032
6 months    ki1000108-IRC              INDIA         Low                  NA                -0.2496457   -0.8436755    0.1529884
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.3287270   -0.5268821   -0.1562879
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0860072   -0.8833659    0.3737745
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                 0.0893151   -0.7771256    0.5333211
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.3790237   -0.6015492   -0.1874168
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.1278940   -0.3587485    0.0637379
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.1817883   -0.3706245   -0.0189688
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.6869091   -0.8809689   -0.5128705
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.3908577   -0.6875462   -0.1463302
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                -0.3418214   -0.7529044   -0.0271437
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.2341593   -0.3255368   -0.1490810
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.1233449   -0.3844363    0.0885071
24 months   ki1000108-IRC              INDIA         Low                  NA                -0.0248914   -0.5024405    0.3008692
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.4471853   -0.7240836   -0.2147586
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.6335968   -1.1469856   -0.2429699
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.3076321   -0.9793108    0.1361126
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0525796   -0.3356579    0.1705033
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0824599   -0.1578283   -0.0119976
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.8234588   -0.9293816   -0.7233511
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.3593509   -0.4634285   -0.2626752
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                -0.3423729   -0.7585118   -0.0247102
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.3141859   -0.3881348   -0.2441765
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0058065   -0.0370232    0.0468672
