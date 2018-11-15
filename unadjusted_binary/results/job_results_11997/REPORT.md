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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        meducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       51     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1       17     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       54     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1       10     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       66     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        9     207
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               0       46     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               1        6     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            0       65     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            1        8     190
Birth       ki0047075b-MAL-ED          BRAZIL                         High              0       58     190
Birth       ki0047075b-MAL-ED          BRAZIL                         High              1        7     190
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       55     183
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        6     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       59     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1       12     183
Birth       ki0047075b-MAL-ED          INDIA                          High              0       42     183
Birth       ki0047075b-MAL-ED          INDIA                          High              1        9     183
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       60     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        8     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0       49     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        6     160
Birth       ki0047075b-MAL-ED          NEPAL                          High              0       34     160
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        3     160
Birth       ki0047075b-MAL-ED          PERU                           Low               0       85     286
Birth       ki0047075b-MAL-ED          PERU                           Low               1       14     286
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       90     286
Birth       ki0047075b-MAL-ED          PERU                           Medium            1       10     286
Birth       ki0047075b-MAL-ED          PERU                           High              0       77     286
Birth       ki0047075b-MAL-ED          PERU                           High              1       10     286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      124     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       10     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       63     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        9     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       32     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        3     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       56     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       12     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        4     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              0       43      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              1        7      90
Birth       ki1000108-IRC              INDIA                          Low               0      126     388
Birth       ki1000108-IRC              INDIA                          Low               1       16     388
Birth       ki1000108-IRC              INDIA                          Medium            0      115     388
Birth       ki1000108-IRC              INDIA                          Medium            1       18     388
Birth       ki1000108-IRC              INDIA                          High              0      102     388
Birth       ki1000108-IRC              INDIA                          High              1       11     388
Birth       ki1000109-EE               PAKISTAN                       Low               0        1       2
Birth       ki1000109-EE               PAKISTAN                       Low               1        1       2
Birth       ki1000109-EE               PAKISTAN                       Medium            0        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium            1        0       2
Birth       ki1000109-EE               PAKISTAN                       High              0        0       2
Birth       ki1000109-EE               PAKISTAN                       High              1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0       61     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1       25     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0       55     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0       25     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        6     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               0       13      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1      27
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4944   13884
Birth       ki1119695-PROBIT           BELARUS                        Low               1       18   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6661   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium            1       13   13884
Birth       ki1119695-PROBIT           BELARUS                        High              0     2246   13884
Birth       ki1119695-PROBIT           BELARUS                        High              1        2   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2584   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      320   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3040   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      379   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0     6754   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1      733   13810
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      361     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       30     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      264     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1        9     842
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      168     842
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       10     842
Birth       ki1135781-COHORTS          INDIA                          Low               0     1505    5216
Birth       ki1135781-COHORTS          INDIA                          Low               1      251    5216
Birth       ki1135781-COHORTS          INDIA                          Medium            0     2468    5216
Birth       ki1135781-COHORTS          INDIA                          Medium            1      314    5216
Birth       ki1135781-COHORTS          INDIA                          High              0      626    5216
Birth       ki1135781-COHORTS          INDIA                          High              1       52    5216
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      830    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       70    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      919    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       62    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0     1114    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       55    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5186   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     2711   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4029   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2109   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     4040   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1     1512   19587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      249     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1      105     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0        3     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        2     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0        3     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1        5     367
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       50     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1       14     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       46     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1       13     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       65     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        8     196
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       54     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        2     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       78     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        3     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       70     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        1     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       58     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               1       14     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       64     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1       13     208
6 months    ki0047075b-MAL-ED          INDIA                          High              0       50     208
6 months    ki0047075b-MAL-ED          INDIA                          High              1        9     208
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       87     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        6     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       73     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        2     221
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       51     221
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        2     221
6 months    ki0047075b-MAL-ED          PERU                           Low               0       75     272
6 months    ki0047075b-MAL-ED          PERU                           Low               1       19     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       77     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            1       20     272
6 months    ki0047075b-MAL-ED          PERU                           High              0       60     272
6 months    ki0047075b-MAL-ED          PERU                           High              1       21     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      100     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       27     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       46     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       11     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       58     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1       12     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       48     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       14     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      107     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       25     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        2     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       69     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       77     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      112     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1       45     369
6 months    ki1000108-IRC              INDIA                          Low               0      108     407
6 months    ki1000108-IRC              INDIA                          Low               1       38     407
6 months    ki1000108-IRC              INDIA                          Medium            0      101     407
6 months    ki1000108-IRC              INDIA                          Medium            1       37     407
6 months    ki1000108-IRC              INDIA                          High              0       98     407
6 months    ki1000108-IRC              INDIA                          High              1       25     407
6 months    ki1000109-EE               PAKISTAN                       Low               0      149     369
6 months    ki1000109-EE               PAKISTAN                       Low               1      172     369
6 months    ki1000109-EE               PAKISTAN                       Medium            0       20     369
6 months    ki1000109-EE               PAKISTAN                       Medium            1       13     369
6 months    ki1000109-EE               PAKISTAN                       High              0        9     369
6 months    ki1000109-EE               PAKISTAN                       High              1        6     369
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      381    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1      216    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      325    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1      124    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      250    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1       40    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      171     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1      133     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       18     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1       12     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      130     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1       65     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      135     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1       52     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      128     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1       27     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      149     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       31     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      161     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       39     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      179     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1       24     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      173     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       56     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      189     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       57     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      203     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1       37     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       69    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1292    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1      143    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      465    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       47    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       47     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1       26     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       63     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1       24     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0       81     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1       36     277
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      306     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       93     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0       78     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       16     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       57     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       10     560
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5156   15761
6 months    ki1119695-PROBIT           BELARUS                        Low               1      488   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7070   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium            1      390   15761
6 months    ki1119695-PROBIT           BELARUS                        High              0     2547   15761
6 months    ki1119695-PROBIT           BELARUS                        High              1      110   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1398    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      321    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     1689    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      391    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     3816    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1      667    8282
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      252     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1      197     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      198     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1      120     952
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      114     952
6 months    ki1135781-COHORTS          GUATEMALA                      High              1       71     952
6 months    ki1135781-COHORTS          INDIA                          Low               0     1264    5413
6 months    ki1135781-COHORTS          INDIA                          Low               1      513    5413
6 months    ki1135781-COHORTS          INDIA                          Medium            0     2432    5413
6 months    ki1135781-COHORTS          INDIA                          Medium            1      468    5413
6 months    ki1135781-COHORTS          INDIA                          High              0      680    5413
6 months    ki1135781-COHORTS          INDIA                          High              1       56    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      610    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1      216    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      674    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1      194    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0      852    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1      162    2708
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      149     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               1      112     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      162     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1       92     813
6 months    ki1148112-LCNI-5           MALAWI                         High              0      207     813
6 months    ki1148112-LCNI-5           MALAWI                         High              1       91     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     3988   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1634   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     3800   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1450   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     4783   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1     1139   16794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1420    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      479    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       51    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       18    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0       41    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1       27    2036
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       32     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1       27     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       29     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1       19     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       34     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1       30     171
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       40     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       41     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               1       28     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       44     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       31     199
24 months   ki0047075b-MAL-ED          INDIA                          High              0       33     199
24 months   ki0047075b-MAL-ED          INDIA                          High              1       22     199
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       69     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1       22     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       61     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1       13     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       39     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        9     213
24 months   ki0047075b-MAL-ED          PERU                           Low               0       43     200
24 months   ki0047075b-MAL-ED          PERU                           Low               1       31     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       41     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            1       26     200
24 months   ki0047075b-MAL-ED          PERU                           High              0       42     200
24 months   ki0047075b-MAL-ED          PERU                           High              1       17     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       73     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       47     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       50     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1       17     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       10     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       44     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       39     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       75     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        4     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        3     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       18     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       87     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       77     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0       56     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1      102     372
24 months   ki1000108-IRC              INDIA                          Low               0       80     409
24 months   ki1000108-IRC              INDIA                          Low               1       66     409
24 months   ki1000108-IRC              INDIA                          Medium            0       79     409
24 months   ki1000108-IRC              INDIA                          Medium            1       60     409
24 months   ki1000108-IRC              INDIA                          High              0       80     409
24 months   ki1000108-IRC              INDIA                          High              1       44     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0       49     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1      104     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0       64     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1       82     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0       78     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1       52     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0       98     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      133     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       70     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      156     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       45     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       97     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       49     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      122     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       55     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      163     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       28     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      185     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      165     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       46     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       42     496
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       42     496
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       16     496
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1256    4035
24 months   ki1119695-PROBIT           BELARUS                        Low               1      152    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1809    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium            1      154    4035
24 months   ki1119695-PROBIT           BELARUS                        High              0      626    4035
24 months   ki1119695-PROBIT           BELARUS                        High              1       38    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0       36     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       80     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0       43     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       93     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       80     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      125     457
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0       89    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1      419    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0       90    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1      253    1060
24 months   ki1135781-COHORTS          GUATEMALA                      High              0       43    1060
24 months   ki1135781-COHORTS          GUATEMALA                      High              1      166    1060
24 months   ki1135781-COHORTS          INDIA                          Low               0      380    4201
24 months   ki1135781-COHORTS          INDIA                          Low               1      894    4201
24 months   ki1135781-COHORTS          INDIA                          Medium            0     1299    4201
24 months   ki1135781-COHORTS          INDIA                          Medium            1     1020    4201
24 months   ki1135781-COHORTS          INDIA                          High              0      499    4201
24 months   ki1135781-COHORTS          INDIA                          High              1      109    4201
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      201    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      543    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      253    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      534    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      483    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      431    2445
24 months   ki1148112-LCNI-5           MALAWI                         Low               0       94     572
24 months   ki1148112-LCNI-5           MALAWI                         Low               1       83     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0       95     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       80     572
24 months   ki1148112-LCNI-5           MALAWI                         High              0      133     572
24 months   ki1148112-LCNI-5           MALAWI                         High              1       87     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     1294    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1710    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     1306    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1384    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     1790    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1     1137    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1126    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      735    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       43    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       31    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       37    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       34    2006


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/19901636-be66-4ee0-b9cf-6b46535c3117/6d2bc1d3-fe10-4f3e-9457-a829bbf2365a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/19901636-be66-4ee0-b9cf-6b46535c3117/6d2bc1d3-fe10-4f3e-9457-a829bbf2365a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/19901636-be66-4ee0-b9cf-6b46535c3117/6d2bc1d3-fe10-4f3e-9457-a829bbf2365a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/19901636-be66-4ee0-b9cf-6b46535c3117/6d2bc1d3-fe10-4f3e-9457-a829bbf2365a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2500000    0.1468318   0.3531682
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1562500    0.0670784   0.2454216
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1200000    0.0462773   0.1937227
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.1153846    0.0283196   0.2024496
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.1095890    0.0377416   0.1814365
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.1076923    0.0321332   0.1832514
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                0.0983607    0.0234230   0.1732983
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1690141    0.0816029   0.2564253
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                0.1764706    0.0715578   0.2813834
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                0.1414141    0.0726552   0.2101731
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                0.1000000    0.0410980   0.1589020
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                0.1149425    0.0478035   0.1820816
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0676692    0.0248998   0.1104386
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1754386    0.0765115   0.2743657
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1250000    0.0484630   0.2015370
Birth       ki1000108-IRC              INDIA                          Low                  NA                0.1126761    0.0606020   0.1647501
Birth       ki1000108-IRC              INDIA                          Medium               NA                0.1353383    0.0771259   0.1935508
Birth       ki1000108-IRC              INDIA                          High                 NA                0.0973451    0.0426200   0.1520703
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2906977    0.1800337   0.4013617
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2142857    0.0869223   0.3416491
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1935484   -0.0222467   0.4093435
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1101928    0.0988037   0.1215820
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1108511    0.1003274   0.1213749
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0979030    0.0911712   0.1046349
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0767263    0.0503293   0.1031234
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0329670    0.0117744   0.0541597
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0561798    0.0223319   0.0900276
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1429385    0.1265663   0.1593107
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1128684    0.1011089   0.1246280
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0766962    0.0566637   0.0967286
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0777778    0.0602776   0.0952780
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0632008    0.0479719   0.0784297
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0470488    0.0349087   0.0591888
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3432949    0.3319585   0.3546313
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3435973    0.3306447   0.3565498
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2723343    0.2588198   0.2858488
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2187500    0.1172098   0.3202902
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2203390    0.1143083   0.3263696
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1095890    0.0377474   0.1814307
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1944444    0.1028068   0.2860821
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1688312    0.0849586   0.2527038
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1525424    0.0605773   0.2445074
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2021277    0.1207953   0.2834601
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.2061856    0.1255270   0.2868442
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2592593    0.1636487   0.3548698
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2125984    0.1412998   0.2838970
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1929825    0.0903304   0.2956345
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1714286    0.0829655   0.2598917
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3428571    0.2519435   0.4337708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2803738    0.1951487   0.3655990
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2866242    0.2157965   0.3574519
6 months    ki1000108-IRC              INDIA                          Low                  NA                0.2602740    0.1890122   0.3315358
6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2681159    0.1941171   0.3421148
6 months    ki1000108-IRC              INDIA                          High                 NA                0.2032520    0.1320475   0.2744566
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.5358255    0.4811948   0.5904563
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.3939394    0.2270022   0.5608766
6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.4000000    0.1517454   0.6482546
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3618090    0.3300301   0.3935880
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2761693    0.2344643   0.3178742
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1379310    0.0882652   0.1875969
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4375000    0.3816615   0.4933385
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4390244    0.2869190   0.5911298
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3428571    0.1853962   0.5003181
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3333333    0.2671072   0.3995594
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2780749    0.2137974   0.3423524
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1741935    0.1144292   0.2339579
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1722222    0.1170162   0.2274282
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1950000    0.1400432   0.2499568
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1182266    0.0737728   0.1626804
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2445415    0.1888337   0.3002493
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2317073    0.1789458   0.2844689
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1541667    0.1084490   0.1998843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0675676    0.0103647   0.1247704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0996516    0.0841500   0.1151532
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0917969    0.0667804   0.1168133
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.3561644    0.2461157   0.4662130
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.2758621    0.1817749   0.3699492
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3076923    0.2239108   0.3914739
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2330827    0.1915606   0.2746048
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1702128    0.0941711   0.2462544
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1492537    0.0638530   0.2346544
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0864635    0.0666548   0.1062722
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0522788    0.0402094   0.0643482
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0414001    0.0280035   0.0547966
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1867365    0.1683132   0.2051597
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1879808    0.1711895   0.2047720
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1487843    0.1383662   0.1592024
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4387528    0.3928287   0.4846768
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3773585    0.3240546   0.4306624
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3837838    0.3136705   0.4538971
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2886888    0.2676176   0.3097600
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1613793    0.1479888   0.1747698
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0760870    0.0569303   0.0952436
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2615012    0.2315268   0.2914756
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2235023    0.1957832   0.2512214
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1597633    0.1372080   0.1823186
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4291188    0.3690351   0.4892025
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3622047    0.3030600   0.4213495
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3053691    0.2530456   0.3576926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2906439    0.2773761   0.3039117
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2761905    0.2623929   0.2899881
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1923337    0.1809806   0.2036868
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2522380    0.2290018   0.2754743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2608696    0.1643481   0.3573910
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3970588    0.2786961   0.5154215
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4576271    0.3301300   0.5851243
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3958333    0.2570825   0.5345842
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4687500    0.3461327   0.5913673
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4057971    0.2896417   0.5219525
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4133333    0.3016065   0.5250601
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4000000    0.2702025   0.5297975
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2417582    0.1535836   0.3299329
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1756757    0.0887678   0.2625835
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1875000    0.0768219   0.2981781
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4189189    0.3062241   0.5316138
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3880597    0.2710820   0.5050374
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2881356    0.1722825   0.4039887
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3916667    0.3041480   0.4791854
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3921569    0.2578794   0.5264343
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2537313    0.1493171   0.3581456
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.8285714    0.7563868   0.9007560
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7064220    0.6208142   0.7920298
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6455696    0.5708833   0.7202559
24 months   ki1000108-IRC              INDIA                          Low                  NA                0.4520548    0.3712258   0.5328838
24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4316547    0.3492130   0.5140963
24 months   ki1000108-IRC              INDIA                          High                 NA                0.3548387    0.2705211   0.4391564
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6797386    0.6057214   0.7537557
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5616438    0.4810647   0.6422229
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4000000    0.3156881   0.4843119
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4335260    0.3596167   0.5074353
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3448276    0.2793857   0.4102694
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2238806    0.1662041   0.2815571
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3356164    0.2589464   0.4122865
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3107345    0.2424892   0.3789797
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1465969    0.0963865   0.1968073
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4714286    0.4190791   0.5237780
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4772727    0.3728089   0.5817365
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2758621    0.1607213   0.3910028
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1079545    0.0637205   0.1521886
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0784513    0.0484862   0.1084165
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0572289    0.0305812   0.0838766
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6896552    0.6053735   0.7739368
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6838235    0.6055903   0.7620567
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.6097561    0.5429074   0.6766048
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.8248031    0.7917312   0.8578751
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7376093    0.6910300   0.7841887
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7942584    0.7394279   0.8490888
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7017268    0.6766018   0.7268519
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.4398448    0.4196400   0.4600495
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1792763    0.1487828   0.2097699
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7298387    0.6979251   0.7617523
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6785260    0.6458894   0.7111627
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.4715536    0.4391846   0.5039227
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4689266    0.3953446   0.5425085
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4571429    0.3832712   0.5310145
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.3954545    0.3307880   0.4601211
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5692410    0.5493287   0.5891533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5144981    0.4931555   0.5358408
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3884523    0.3676791   0.4092256
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3949490    0.3682795   0.4216184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4189189    0.2756199   0.5622180
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4788732    0.3426308   0.6151157


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1739130   0.1221531   0.2256729
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1105263   0.0658254   0.1552272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1475410   0.0960175   0.1990645
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1188811   0.0813061   0.1564562
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036930   0.0986082   0.1087777
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0581948   0.0423724   0.0740172
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1182899   0.1095248   0.1270550
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232756   0.3156176   0.3309337
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1785714   0.1248161   0.2323268
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1730769   0.1215404   0.2246134
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5176152   0.4665618   0.5686686
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964869   0.0836111   0.1093627
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2125000   0.1785885   0.2464115
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1665057   0.1584820   0.1745293
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4075630   0.3763327   0.4387933
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1915758   0.1810911   0.2020606
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3628536   0.3297820   0.3959252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514589   0.2433251   0.2595926
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2573674   0.2348896   0.2798452
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4444444   0.3697487   0.5191402
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4070352   0.3386053   0.4754651
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2065728   0.1520761   0.2610695
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3700000   0.3029201   0.4370799
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4495968   0.4057742   0.4934193
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6520788   0.6083612   0.6957964
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7905660   0.7660589   0.8150732
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4815520   0.4664409   0.4966632
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4370629   0.3963782   0.4777477
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907783   0.4776560   0.5039007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3988036   0.3729992   0.4246080


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.6250000   0.3090436   1.2639803
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.4800000   0.2289943   1.0061384
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               Low               0.9497717   0.3495435   2.5806982
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 Low               0.9333333   0.3330873   2.6152634
Birth       ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Medium               Low               1.7183098   0.6842146   4.3152961
Birth       ki0047075b-MAL-ED          INDIA                          High                 Low               1.7941176   0.6825905   4.7156498
Birth       ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          PERU                           Medium               Low               0.7071429   0.3294596   1.5177916
Birth       ki0047075b-MAL-ED          PERU                           High                 Low               0.8128079   0.3801234   1.7380055
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               2.5925926   1.1114245   6.0476767
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.8472222   0.7662065   4.4534078
Birth       ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Medium               Low               1.2011278   0.6388507   2.2582869
Birth       ki1000108-IRC              INDIA                          High                 Low               0.8639381   0.4172739   1.7887267
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7371429   0.3826755   1.4199486
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6658065   0.2580765   1.7177010
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0059740   0.8742543   1.1575393
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8884700   0.7847474   1.0059021
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.4296703   0.2072447   0.8908144
Birth       ki1135781-COHORTS          GUATEMALA                      High                 Low               0.7322097   0.3658655   1.4653777
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               0.7896294   0.6763604   0.9218674
Birth       ki1135781-COHORTS          INDIA                          High                 Low               0.5365676   0.4034244   0.7136523
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8125819   0.5843718   1.1299132
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6049126   0.4295462   0.8518741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0008807   0.9531603   1.0509902
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7932954   0.7492350   0.8399470
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.0072639   0.5161441   1.9656926
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5009785   0.2243726   1.1185832
6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8682746   0.4377931   1.7220480
6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.7845036   0.3649737   1.6862750
6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               1.0200760   0.5819788   1.7879603
6 months    ki0047075b-MAL-ED          PERU                           High                 Low               1.2826511   0.7431302   2.2138701
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.9077323   0.4840215   1.7023581
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.8063492   0.4357547   1.4921218
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.8177570   0.5463130   1.2240722
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.8359873   0.5818167   1.2011940
6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Medium               Low               1.0301297   0.6983189   1.5196026
6 months    ki1000108-IRC              INDIA                          High                 Low               0.7809157   0.5006169   1.2181557
6 months    ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       Medium               Low               0.7352008   0.4754622   1.1368312
6 months    ki1000109-EE               PAKISTAN                       High                 Low               0.7465116   0.3980015   1.4001946
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7633012   0.6142382   0.9485387
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.3812261   0.2538209   0.5725822
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0034843   0.6936797   1.4516509
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7836735   0.4865437   1.2622590
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8342246   0.6150482   1.1315058
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.5225806   0.3515366   0.7768481
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1322581   0.7388854   1.7350570
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.6864770   0.4188341   1.1251489
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9475174   0.6865981   1.3075907
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6304315   0.4337460   0.9163058
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.4748432   0.6236144   3.4879927
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.3585937   0.5582588   3.3063108
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.7745358   0.4888475   1.2271839
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.8639053   0.5722770   1.3041454
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.7302677   0.4514470   1.1812923
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6403467   0.3516846   1.1659418
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.6046346   0.5040308   0.7253187
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.4788157   0.3576916   0.6409556
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0066634   0.8812210   1.1499625
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7967608   0.7059698   0.8992278
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8600709   0.7214088   1.0253853
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8747153   0.7086408   1.0797105
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.5590079   0.5005233   0.6243261
6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.2635605   0.2027843   0.3425517
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8546894   0.7218802   1.0119323
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6109467   0.5093611   0.7327923
6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               0.8440664   0.6807056   1.0466317
6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.7116191   0.5703586   0.8878656
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9502710   0.8903705   1.0142014
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.6617502   0.6156727   0.7112762
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0342198   0.7085704   1.5095334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.5741434   1.1542769   2.1467359
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8649691   0.5527643   1.3535092
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               1.0243056   0.6989712   1.5010659
24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               1.0185714   0.6870844   1.5099859
24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9857143   0.6394870   1.5193940
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.7266585   0.3930110   1.3435568
24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.7755682   0.3875036   1.5522592
24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.9263361   0.6184477   1.3875038
24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.6878075   0.4240016   1.1157488
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.0012516   0.6652330   1.5069979
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.6478247   0.4055936   1.0347225
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.8525783   0.7343714   0.9898121
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.7791357   0.6740882   0.9005536
24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Medium               Low               0.9548725   0.7350602   1.2404173
24 months   ki1000108-IRC              INDIA                          High                 Low               0.7849462   0.5830277   1.0567947
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8262645   0.6900758   0.9893304
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.5884615   0.4641772   0.7460232
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.7954023   0.6163017   1.0265505
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.5164179   0.3791730   0.7033398
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9258619   0.6744042   1.2710777
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4367988   0.2893888   0.6592970
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0123967   0.7920638   1.2940209
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.5851620   0.3799291   0.9012591
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.7267072   0.5092295   1.0370636
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.5301205   0.3334209   0.8428617
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9915441   0.8387068   1.1722329
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8841463   0.7502795   1.0418981
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8942853   0.8298305   0.9637465
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9629672   0.8890788   1.0429962
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.6268034   0.5913401   0.6643935
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.2554788   0.2147167   0.3039792
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9296931   0.8711813   0.9921349
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6461066   0.5956045   0.7008909
24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               0.9748709   0.7782597   1.2211519
24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.8433187   0.6723045   1.0578339
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9038318   0.8576279   0.9525249
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.6824040   0.6412163   0.7262373
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0606913   0.7471708   1.5057682
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.2124940   0.9069649   1.6209468


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0760870   -0.1556471    0.0034732
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0048583   -0.0785418    0.0688252
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0491803   -0.0180994    0.1164600
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0225330   -0.0760736    0.0310075
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0392011    0.0020943    0.0763078
Birth       ki1000108-IRC              INDIA                          Low                  NA                 0.0033033   -0.0384647    0.0450714
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0447084   -0.0983169    0.0089002
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0064999   -0.0165505    0.0035507
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0185316   -0.0358521   -0.0012110
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.0246486   -0.0374703   -0.0118269
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0164663   -0.0305385   -0.0023941
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0200193   -0.0284421   -0.0115964
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0401786   -0.1205945    0.0402373
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0213675   -0.0937543    0.0510193
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0184606   -0.0484720    0.0853932
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0157480   -0.0647433    0.0332472
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0420441   -0.1179190    0.0338307
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0145737   -0.0710400    0.0418925
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0182104   -0.0381700    0.0017493
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0773779   -0.1135320   -0.0412238
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0085526   -0.0332915    0.0161862
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0651769   -0.1162367   -0.0141171
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0109872   -0.0563567    0.0343823
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0347513   -0.0795552    0.0100526
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0289193   -0.0276344    0.0854731
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0456951   -0.1390067    0.0476165
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0205827   -0.0410095   -0.0001559
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0237771   -0.0329413   -0.0146129
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0202308   -0.0364449   -0.0040167
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0311898   -0.0642800    0.0019004
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0971130   -0.1133121   -0.0809138
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0502752   -0.0744990   -0.0260514
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0662651   -0.1151107   -0.0174196
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0391850   -0.0495812   -0.0287889
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0051294   -0.0001392    0.0103980
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0131827   -0.1162250    0.0898597
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0012381   -0.0926683    0.0951445
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0351855   -0.0992279    0.0288569
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0489189   -0.1372464    0.0394086
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0387255   -0.0990353    0.0215843
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1135177   -0.1796906   -0.0473447
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0364069   -0.1008723    0.0280585
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1249600   -0.1865041   -0.0634159
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.1042366   -0.1647335   -0.0437397
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0788071   -0.1417997   -0.0158145
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0218318   -0.0499972    0.0063336
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0227005   -0.0463340    0.0009329
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0375764   -0.1111191    0.0359663
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0342371   -0.0596537   -0.0088206
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.2201748   -0.2420091   -0.1983405
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1130698   -0.1408215   -0.0853180
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0318636   -0.0928451    0.0291179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0784627   -0.0945596   -0.0623658
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0038546   -0.0034851    0.0111944


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.4375000   -0.9660300   -0.0510553
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0439560   -0.9767217    0.4486608
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.3333333   -0.2984635    0.6577151
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1895425   -0.7330719    0.1835242
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3668099   -0.0601895    0.6218320
Birth       ki1000108-IRC              INDIA                          Low                  NA                 0.0284820   -0.4073809    0.3293591
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1817492   -0.4167921    0.0143005
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0626837   -0.1641277    0.0299203
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.3184404   -0.6389444   -0.0606127
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.2083747   -0.3209615   -0.1053838
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2685680   -0.5171177   -0.0607383
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0619263   -0.0883582   -0.0361365
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2250000   -0.7658070    0.1501761
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1234568   -0.6289288    0.2251625
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0836879   -0.2756273    0.3417923
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0800000   -0.3594402    0.1419998
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1397683   -0.4220661    0.0864898
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0593151   -0.3158816    0.1472269
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0351813   -0.0746668    0.0028535
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.2720444   -0.4156339   -0.1430194
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0199387   -0.0793000    0.0361578
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.2430556   -0.4485084   -0.0667436
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0681442   -0.3898588    0.1791022
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1656477   -0.3994326    0.0290818
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.2997228   -0.6145519    0.6962698
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.1471806   -0.4908250    0.1172516
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0968598   -0.1967690   -0.0052913
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.3793029   -0.5164529   -0.2545568
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1215022   -0.2231277   -0.0283203
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0765274   -0.1609677    0.0017713
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.5069166   -0.5925055   -0.4259276
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2380162   -0.3576931   -0.1288885
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1826222   -0.3255976   -0.0550678
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1558308   -0.1981847   -0.1149741
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0199301   -0.0008833    0.0403108
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0296610   -0.2897262    0.1779636
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0030417   -0.2565453    0.2090011
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1703297   -0.5236352    0.1010502
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1322133   -0.3984592    0.0833434
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1097222   -0.2947152    0.0488384
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1587540   -0.2579847   -0.0673507
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0875907   -0.2544971    0.0571095
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.2252430   -0.3450077   -0.1161427
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3165500   -0.5149496   -0.1441331
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3068701   -0.5762029   -0.0835594
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0485586   -0.1132489    0.0123726
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2662692   -0.5531135   -0.0324021
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0576255   -0.1768584    0.0495273
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0433071   -0.0761556   -0.0114612
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.4572192   -0.5071183   -0.4089723
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1833260   -0.2302406   -0.1382005
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0729040   -0.2220334    0.0580267
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1598740   -0.1937837   -0.1269275
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0096655   -0.0089075    0.0278966
