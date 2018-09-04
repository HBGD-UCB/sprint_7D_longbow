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
Birth       ki1000109-EE               PAKISTAN                       Low               0        2       4
Birth       ki1000109-EE               PAKISTAN                       Low               1        2       4
Birth       ki1000109-EE               PAKISTAN                       Medium            0        0       4
Birth       ki1000109-EE               PAKISTAN                       Medium            1        0       4
Birth       ki1000109-EE               PAKISTAN                       High              0        0       4
Birth       ki1000109-EE               PAKISTAN                       High              1        0       4
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0    10372   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     5422   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8058   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     4218   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     8080   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1     3024   39174
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      498     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1      210     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0        6     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        4     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0        6     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1       10     734
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
6 months    ki1000109-EE               PAKISTAN                       Low               0      298     738
6 months    ki1000109-EE               PAKISTAN                       Low               1      344     738
6 months    ki1000109-EE               PAKISTAN                       Medium            0       40     738
6 months    ki1000109-EE               PAKISTAN                       Medium            1       26     738
6 months    ki1000109-EE               PAKISTAN                       High              0       18     738
6 months    ki1000109-EE               PAKISTAN                       High              1       12     738
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      612    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1      186    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      156    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       32    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      114    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       20    1120
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     7970   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1     3265   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     7595   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2896   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     9542   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1     2275   33543
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     2779    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      945    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       96    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       36    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0       80    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1       51    3987
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
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      370     992
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      330     992
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       92     992
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       84     992
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       84     992
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       32     992
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     2585   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     3413   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     2608   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2763   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     3568   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1     2267   17204
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     2203    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1     1439    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       82    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       60    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       71    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       65    3920


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
![](/tmp/9c85785d-f089-431d-acd1-476e6aedab31/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c85785d-f089-431d-acd1-476e6aedab31/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9c85785d-f089-431d-acd1-476e6aedab31/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c85785d-f089-431d-acd1-476e6aedab31/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                0.1417802    0.0738436   0.2097168
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                0.0993747    0.0409356   0.1578138
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                0.1138856    0.0471100   0.1806611
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0676692    0.0248998   0.1104386
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1754386    0.0765115   0.2743657
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1250000    0.0484630   0.2015370
Birth       ki1000108-IRC              INDIA                          Low                  NA                0.1039898    0.0527894   0.1551902
Birth       ki1000108-IRC              INDIA                          Medium               NA                0.1232899    0.0659187   0.1806611
Birth       ki1000108-IRC              INDIA                          High                 NA                0.0889562    0.0354745   0.1424380
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2906977    0.1800337   0.4013617
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2142857    0.0869223   0.3416491
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1935484   -0.0222467   0.4093435
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1034173    0.0975122   0.1093225
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1063908    0.1007304   0.1120511
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1048927    0.0996055   0.1101800
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0767263    0.0503293   0.1031234
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0329670    0.0117744   0.0541597
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0561798    0.0223319   0.0900276
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1188070    0.1094169   0.1281971
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1200728    0.1109526   0.1291930
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1279986    0.1175034   0.1384937
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0593563    0.0505759   0.0681367
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0604540    0.0514737   0.0694344
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0627039    0.0538801   0.0715277
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3254612    0.3173387   0.3335837
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3228173    0.3145285   0.3311061
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3212938    0.3130787   0.3295089
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2187500    0.1172098   0.3202902
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2203390    0.1143083   0.3263696
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1095890    0.0377474   0.1814307
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1944444    0.1028068   0.2860821
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1688312    0.0849586   0.2527038
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1525424    0.0605773   0.2445074
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.1679632    0.0935087   0.2424177
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1862076    0.1095570   0.2628582
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2443374    0.1541466   0.3345281
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2186890    0.1468003   0.2905778
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1924048    0.0903616   0.2944479
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1685672    0.0815598   0.2555747
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3509263    0.2744717   0.4273809
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2831666    0.2101468   0.3561863
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2889123    0.2248456   0.3529789
6 months    ki1000108-IRC              INDIA                          Low                  NA                0.2592305    0.1944490   0.3240120
6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2571423    0.1926028   0.3216818
6 months    ki1000108-IRC              INDIA                          High                 NA                0.2057328    0.1430200   0.2684457
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.5356217    0.4810539   0.5901895
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.4146642    0.2519347   0.5773936
6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.4080105    0.1668267   0.6491943
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3332327    0.3049072   0.3615582
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2987328    0.2709615   0.3265040
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1701705    0.1258053   0.2145356
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4344612    0.3787628   0.4901596
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3937078    0.2613741   0.5260416
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.2706364    0.1391474   0.4021255
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3422273    0.2827102   0.4017445
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2985617    0.2398698   0.3572535
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2105215    0.1574309   0.2636120
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1584042    0.1084142   0.2083941
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1827413    0.1333191   0.2321634
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1164897    0.0751759   0.1578035
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2265460    0.1731524   0.2799397
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2081778    0.1567976   0.2595580
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1508814    0.1070558   0.1947069
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0675676    0.0103647   0.1247704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0996516    0.0841500   0.1151532
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0917969    0.0667804   0.1168133
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.3104292    0.2102500   0.4106085
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.2497227    0.1612459   0.3381995
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.2893756    0.2107613   0.3679899
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2278753    0.1879470   0.2678036
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1468448    0.0863772   0.2073124
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1049868    0.0494360   0.1605376
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0796302    0.0618528   0.0974077
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0539110    0.0422059   0.0656161
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0504065    0.0367607   0.0640524
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1744124    0.1586472   0.1901776
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1832459    0.1688226   0.1976692
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1516605    0.1420698   0.1612513
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4400813    0.4028164   0.4773462
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4517191    0.4126297   0.4908085
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.5261690    0.4867450   0.5655929
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2601181    0.2424593   0.2777769
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1689011    0.1560414   0.1817609
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1185856    0.1011013   0.1360699
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2141396    0.1904544   0.2378247
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1972028    0.1753519   0.2190538
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1588044    0.1395589   0.1780498
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4190680    0.3687093   0.4694267
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3595461    0.3094289   0.4096632
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3089119    0.2644027   0.3534212
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2576099    0.2462271   0.2689928
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2608108    0.2487110   0.2729105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2367542    0.2256342   0.2478743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2546220    0.2315029   0.2777411
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2589806    0.1707725   0.3471886
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3782180    0.2786517   0.4777842
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4630319    0.3480993   0.5779645
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4351906    0.3057426   0.5646386
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.5270151    0.4148157   0.6392145
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4061398    0.2953736   0.5169060
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3949626    0.2888019   0.5011233
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4249535    0.2958976   0.5540094
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2417582    0.1535836   0.3299329
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1756757    0.0887678   0.2625835
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1875000    0.0768219   0.2981781
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4247150    0.3126349   0.5367950
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3900940    0.2772110   0.5029771
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2798581    0.1665080   0.3932081
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3865672    0.3062110   0.4669233
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3635316    0.2598855   0.4671778
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2317632    0.1425815   0.3209448
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.8257208    0.7550125   0.8964291
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7072612    0.6228951   0.7916273
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6400752    0.5662230   0.7139273
24 months   ki1000108-IRC              INDIA                          Low                  NA                0.4673526    0.3966950   0.5380102
24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4466260    0.3754970   0.5177550
24 months   ki1000108-IRC              INDIA                          High                 NA                0.3669942    0.2949410   0.4390474
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6823788    0.6238401   0.7409175
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5568183    0.4915515   0.6220851
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4521622    0.3876193   0.5167052
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3650677    0.3037777   0.4263577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3014759    0.2455943   0.3573576
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2185439    0.1667503   0.2703375
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3400650    0.2636829   0.4164470
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3126795    0.2457626   0.3795965
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1515400    0.1024824   0.2005976
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4783715    0.4278035   0.5289395
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5468238    0.4664760   0.6271716
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3464789    0.2759031   0.4170547
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1055323    0.0652619   0.1458026
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0797601    0.0488441   0.1106760
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0606783    0.0345689   0.0867877
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6073589    0.5339507   0.6807671
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6427800    0.5729037   0.7126563
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5824125    0.5215927   0.6432323
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7903365    0.7599106   0.8207624
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7503927    0.7136660   0.7871193
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7597162    0.7182846   0.8011477
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.6649997    0.6434093   0.6865902
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.4492375    0.4306281   0.4678468
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2569641    0.2322051   0.2817231
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6853466    0.6585981   0.7120951
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6719130    0.6456586   0.6981674
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5092490    0.4833244   0.5351736
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4392386    0.3813776   0.4970995
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4394811    0.3791400   0.4998222
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.3922711    0.3379880   0.4465542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5273148    0.5104396   0.5441900
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4908681    0.4728050   0.5089311
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4524370    0.4352886   0.4695854
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3955594    0.3690067   0.4221121
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4148154    0.2812250   0.5484057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4741096    0.3413094   0.6069097


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
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1665057   0.1584820   0.1745293
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4075630   0.3763327   0.4387933
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1915758   0.1810911   0.2020606
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3628536   0.3297820   0.3959252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514981   0.2433677   0.2596285
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2588412   0.2362794   0.2814031
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907580   0.4776481   0.5038678
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3989796   0.3731211   0.4248381


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
Birth       ki0047075b-MAL-ED          PERU                           Medium               Low               0.7009067   0.3287455   1.4943784
Birth       ki0047075b-MAL-ED          PERU                           High                 Low               0.8032544   0.3765110   1.7136755
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               2.5925926   1.1114245   6.0476767
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.8472222   0.7662065   4.4534078
Birth       ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Medium               Low               1.1855962   0.6036005   2.3287562
Birth       ki1000108-IRC              INDIA                          High                 Low               0.8554321   0.3932018   1.8610393
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7371429   0.3826755   1.4199486
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6658065   0.2580765   1.7177010
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0287522   0.9856192   1.0737727
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0142667   0.9754691   1.0546073
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.4296703   0.2072447   0.8908144
Birth       ki1135781-COHORTS          GUATEMALA                      High                 Low               0.7322097   0.3658655   1.4653777
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               1.0106540   0.9628531   1.0608279
Birth       ki1135781-COHORTS          INDIA                          High                 Low               1.0773653   1.0135819   1.1451625
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0184943   0.9287981   1.1168526
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0563988   0.9747228   1.1449188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9918764   0.9771816   1.0067922
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9871953   0.9716743   1.0029642
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.0072639   0.5161441   1.9656926
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5009785   0.2243726   1.1185832
6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8682746   0.4377931   1.7220480
6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.7845036   0.3649737   1.6862750
6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               1.1086215   0.6062460   2.0272988
6 months    ki0047075b-MAL-ED          PERU                           High                 Low               1.4547078   0.8181743   2.5864598
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.8798098   0.4715091   1.6416761
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.7708079   0.4184074   1.4200150
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.8069119   0.5759945   1.1304046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.8232848   0.6044668   1.1213154
6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Medium               Low               0.9919448   0.7031991   1.3992546
6 months    ki1000108-IRC              INDIA                          High                 Low               0.7936290   0.5398184   1.1667757
6 months    ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       Medium               Low               0.7741735   0.5161845   1.1611055
6 months    ki1000109-EE               PAKISTAN                       High                 Low               0.7617513   0.4182176   1.3874713
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8964689   0.7816875   1.0281047
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.5106655   0.3724936   0.7000907
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9061980   0.6323523   1.2986349
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.6229243   0.3767321   1.0300016
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8724074   0.6725277   1.1316926
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.6151509   0.4539930   0.8335165
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1536393   0.7670789   1.7350023
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7353953   0.4604312   1.1745647
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9189206   0.6550750   1.2890356
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6660075   0.4601423   0.9639757
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.4748432   0.6236144   3.4879927
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.3585937   0.5582588   3.3063108
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.8044433   0.4992367   1.2962367
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.9321788   0.6123181   1.4191273
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.6444086   0.4117844   1.0084462
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.4607202   0.2637806   0.8046956
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.6770163   0.5657122   0.8102194
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.6330073   0.4921413   0.8141934
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0506472   0.9345867   1.1811206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8695513   0.7812029   0.9678914
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0264448   0.9204318   1.1446680
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1956177   1.0790074   1.3248302
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.6493248   0.5888680   0.7159885
6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.4558913   0.3889679   0.5343292
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9209080   0.7920892   1.0706768
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7415929   0.6324975   0.8695055
6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               0.8579658   0.7157177   1.0284857
6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.7371403   0.6127126   0.8868363
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0124251   0.9555262   1.0727121
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9190415   0.8685525   0.9724655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0171178   0.7195109   1.4378221
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.4854097   1.1324701   1.9483446
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9398718   0.6447016   1.3701827
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               1.1381831   0.8332294   1.5547469
24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.9724795   0.6707127   1.4100171
24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.0463233   0.6998808   1.5642554
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.7266585   0.3930110   1.3435568
24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.7755682   0.3875036   1.5522592
24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.9184842   0.6236866   1.3526236
24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.6589315   0.4075879   1.0652690
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.9404100   0.6628209   1.3342533
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.5995418   0.3875271   0.9275489
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.8565379   0.7396141   0.9919459
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.7751714   0.6714367   0.8949328
24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Medium               Low               0.9556510   0.7738913   1.1800998
24 months   ki1000108-IRC              INDIA                          High                 Low               0.7852619   0.6185723   0.9968702
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8159959   0.7091265   0.9389713
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.6626265   0.5636600   0.7789694
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8258082   0.6494345   1.0500817
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.5986393   0.4509776   0.7946494
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9194700   0.6745632   1.2532928
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4456207   0.3009792   0.6597727
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1430944   0.9544342   1.3690464
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7242882   0.5757303   0.9111793
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.7557886   0.5469921   1.0442863
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.5749740   0.3846960   0.8593672
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0583198   0.9027763   1.2406628
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9589264   0.8208198   1.1202700
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9494597   0.8949312   1.0073107
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9612566   0.9012135   1.0253000
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.6755453   0.6422103   0.7106107
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.3864124   0.3495583   0.4271521
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9803988   0.9297608   1.0337948
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7430532   0.6986774   0.7902475
24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0005523   0.8308239   1.2049543
24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.8930708   0.7415417   1.0755638
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9308823   0.8905792   0.9730094
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8580017   0.8202696   0.8974695
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0486803   0.7550301   1.4565384
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1985798   0.9010166   1.5944140


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0760870   -0.1556471    0.0034732
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0048583   -0.0785418    0.0688252
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0491803   -0.0180994    0.1164600
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0228991   -0.0757441    0.0299459
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0392011    0.0020943    0.0763078
Birth       ki1000108-IRC              INDIA                          Low                  NA                 0.0119896   -0.0290296    0.0530088
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0447084   -0.0983169    0.0089002
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0002757   -0.0028228    0.0033741
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0185316   -0.0358521   -0.0012110
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.0005171   -0.0040367    0.0030024
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0019552   -0.0011593    0.0050697
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0021856   -0.0049644    0.0005933
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0401786   -0.1205945    0.0402373
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0213675   -0.0937543    0.0510193
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0526250   -0.0091700    0.1144201
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0218387   -0.0712831    0.0276058
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0501133   -0.1141022    0.0138756
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0135302   -0.0632746    0.0362142
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0180065   -0.0379667    0.0019536
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0488016   -0.0787249   -0.0188783
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0055138   -0.0305274    0.0194998
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0740709   -0.1205230   -0.0276188
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0028308   -0.0376052    0.0432669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0167558   -0.0592123    0.0257007
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0289193   -0.0276344    0.0854731
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0000401   -0.0846681    0.0847482
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0153753   -0.0353815    0.0046308
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0169439   -0.0249287   -0.0089590
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0079067   -0.0218802    0.0060668
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0325183   -0.0571034   -0.0079331
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0685423   -0.0817993   -0.0552852
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0029136   -0.0219818    0.0161547
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0562144   -0.0968322   -0.0155966
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0061119   -0.0146593    0.0024356
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0042193   -0.0003685    0.0088070
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0185875   -0.1086545    0.0714796
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0008954   -0.0868356    0.0886264
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0351855   -0.0992279    0.0288569
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0547150   -0.1412797    0.0318497
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0336260   -0.0890320    0.0217800
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1106670   -0.1756721   -0.0456619
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0517047   -0.1057562    0.0023469
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1276002   -0.1770162   -0.0781843
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0357783   -0.0841341    0.0125776
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0832556   -0.1456136   -0.0208977
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0287747   -0.0566058   -0.0009437
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0202782   -0.0398848   -0.0006716
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0447198   -0.0178166    0.1072563
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0002295   -0.0220653    0.0225244
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1834477   -0.2025737   -0.1643218
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0685777   -0.0917282   -0.0454272
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0021756   -0.0497994    0.0454481
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0365569   -0.0501588   -0.0229549
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0034201   -0.0035749    0.0104152


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.4375000   -0.9660300   -0.0510553
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0439560   -0.9767217    0.4486608
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.3333333   -0.2984635    0.6577151
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1926216   -0.7282135    0.1769846
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3668099   -0.0601895    0.6218320
Birth       ki1000108-IRC              INDIA                          Low                  NA                 0.1033767   -0.3306324    0.3958262
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1817492   -0.4167921    0.0143005
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0026584   -0.0276726    0.0320942
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.3184404   -0.6389444   -0.0606127
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.0043718   -0.0345781    0.0249525
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0318894   -0.0200173    0.0811547
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0067607   -0.0153965    0.0018016
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2250000   -0.7658070    0.1501761
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1234568   -0.6289288    0.2251625
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.2385668   -0.0983931    0.4721557
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1109403   -0.3923767    0.1136102
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1665927   -0.4041224    0.0307550
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0550680   -0.2786067    0.1293894
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0347875   -0.0742823    0.0032553
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1715761   -0.2866605   -0.0667854
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0128543   -0.0729037    0.0438343
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.2762228   -0.4669129   -0.1103213
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0175572   -0.2681261    0.2388819
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0798694   -0.3019903    0.1043574
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.2997228   -0.6145519    0.6962698
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0001291   -0.3135652    0.2389096
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0723544   -0.1711207    0.0180824
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2702958   -0.4015536   -0.1513305
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0474861   -0.1350182    0.0332956
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0797871   -0.1429491   -0.0201156
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.3577814   -0.4297460   -0.2894390
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0137936   -0.1082882    0.0726441
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1549231   -0.2746334   -0.0464556
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0243018   -0.0589234    0.0091878
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0163005   -0.0016730    0.0339516
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0418218   -0.2659782    0.1426451
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0021997   -0.2383832    0.1960442
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1703297   -0.5236352    0.1010502
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1478783   -0.4076587    0.0639602
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0952737   -0.2659317    0.0523782
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1547674   -0.2523042   -0.0648274
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.1243953   -0.2638034   -0.0003651
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.2300021   -0.3299594   -0.1375574
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.1086530   -0.2665066    0.0295262
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3241923   -0.5900516   -0.1027852
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0640012   -0.1284429   -0.0032396
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2378565   -0.4786125   -0.0363018
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0685804   -0.0321520    0.1594819
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0002904   -0.0283109    0.0280961
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.3809510   -0.4255967   -0.3377035
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1111886   -0.1502937   -0.0734130
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0049778   -0.1201452    0.0983486
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0744906   -0.1030496   -0.0466712
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0085722   -0.0091055    0.0259403
