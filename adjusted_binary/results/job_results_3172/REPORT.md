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
Birth       ki1000109-EE               PAKISTAN                       Low                0        4       4
Birth       ki1000109-EE               PAKISTAN                       Low                1        0       4
Birth       ki1000109-EE               PAKISTAN                       Medium             0        0       4
Birth       ki1000109-EE               PAKISTAN                       Medium             1        0       4
Birth       ki1000109-EE               PAKISTAN                       High               0        0       4
Birth       ki1000109-EE               PAKISTAN                       High               1        0       4
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0    13972   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1     1822   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0    10874   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1     1402   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0    10246   39174
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      858   39174
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      658     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1       50     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0       10     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        0     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0       12     734
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1        4     734
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
6 months    ki1000109-EE               PAKISTAN                       Low                0      474     738
6 months    ki1000109-EE               PAKISTAN                       Low                1      168     738
6 months    ki1000109-EE               PAKISTAN                       Medium             0       54     738
6 months    ki1000109-EE               PAKISTAN                       Medium             1       12     738
6 months    ki1000109-EE               PAKISTAN                       High               0       26     738
6 months    ki1000109-EE               PAKISTAN                       High               1        4     738
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      758    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       40    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0      188    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        0    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0      134    1120
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        0    1120
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0    10394   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      841   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     9794   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      697   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0    11320   33543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      497   33543
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     3518    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      206    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      124    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        8    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0      121    3987
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1       10    3987
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
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      612     992
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       88     992
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0      160     992
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1       16     992
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0      112     992
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        4     992
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     4770   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1     1228   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     4504   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      867   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     5252   17204
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      583   17204
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     3269    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      373    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      127    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       15    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0      120    3920
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1       16    3920


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/94fab68a-30d6-4c47-900d-ede9363cf293/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/94fab68a-30d6-4c47-900d-ede9363cf293/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/94fab68a-30d6-4c47-900d-ede9363cf293/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/94fab68a-30d6-4c47-900d-ede9363cf293/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0317698   0.0284444   0.0350952
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0310496   0.0278743   0.0342249
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0320731   0.0290780   0.0350683
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0425853   0.0334093   0.0517613
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0239329   0.0182845   0.0295812
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0149319   0.0065308   0.0233331
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0196510   0.0106818   0.0286202
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0156328   0.0079448   0.0233207
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0115498   0.0053408   0.0177588
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1035649   0.0988472   0.1082826
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1059748   0.1008155   0.1111341
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1030376   0.0980914   0.1079839
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1464005   0.0801415   0.2126595
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1145747   0.0552066   0.1739427
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0800294   0.0377723   0.1222866
6 months    ki1000108-IRC              INDIA         Low                  NA                0.0890411   0.0427870   0.1352952
6 months    ki1000108-IRC              INDIA         Medium               NA                0.0724638   0.0291557   0.1157718
6 months    ki1000108-IRC              INDIA         High                 NA                0.0487805   0.0106657   0.0868952
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1206639   0.1044872   0.1368407
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0923927   0.0629733   0.1218121
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0426531   0.0249496   0.0603566
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0349345   0.0111365   0.0587325
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0284553   0.0076632   0.0492473
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0333333   0.0106073   0.0560594
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                0.0821918   0.0190725   0.1453111
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               NA                0.0574713   0.0084769   0.1064657
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                0.1196581   0.0607416   0.1785747
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0206376   0.0121155   0.0291596
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0132976   0.0081477   0.0184475
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0098753   0.0062638   0.0134869
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0444574   0.0359146   0.0530001
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0462251   0.0385293   0.0539208
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0358815   0.0308927   0.0408703
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.1250316   0.0963665   0.1536967
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0815770   0.0541809   0.1089730
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.1019613   0.0645416   0.1393811
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0782217   0.0657358   0.0907077
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0368966   0.0300351   0.0437580
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0067935   0.0008586   0.0127284
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0626497   0.0467901   0.0785093
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0581249   0.0432609   0.0729889
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0283168   0.0184379   0.0381958
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                0.1212499   0.0838440   0.1586557
6 months    ki1148112-LCNI-5           MALAWI        Medium               NA                0.0788424   0.0473645   0.1103203
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                0.0706349   0.0431092   0.0981606
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0616378   0.0559186   0.0673570
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0606473   0.0547739   0.0665206
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0517002   0.0466693   0.0567312
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0553169   0.0420083   0.0686255
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0606061   0.0036556   0.1175565
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0763359   0.0251527   0.1275191
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.3761827   0.2965747   0.4557907
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.3174401   0.2417150   0.3931653
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.3264263   0.2598328   0.3930198
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0997914   0.0554594   0.1441234
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0837747   0.0408424   0.1267070
24 months   ki1000108-IRC              INDIA         High                 NA                0.1093204   0.0603504   0.1582905
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.3028156   0.2337974   0.3718339
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.2351504   0.1664861   0.3038147
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0737469   0.0339020   0.1135919
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1387283   0.0871753   0.1902814
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0886700   0.0495316   0.1278083
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0348259   0.0094582   0.0601935
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0890411   0.0427988   0.1352834
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0903955   0.0481107   0.1326803
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0314136   0.0066518   0.0561754
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2166440   0.1532936   0.2799944
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.2690656   0.2044352   0.3336960
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.2316069   0.1783536   0.2848602
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.4539528   0.4181868   0.4897188
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.3788359   0.3407844   0.4168873
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.5070825   0.4657195   0.5484454
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.3502996   0.3242325   0.3763668
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.1499272   0.1353913   0.1644631
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0287329   0.0156128   0.0418531
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.3324609   0.3056070   0.3593149
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.3133600   0.2872680   0.3394521
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1878127   0.1673508   0.2082747
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                0.1608097   0.1091472   0.2124721
24 months   ki1148112-LCNI-5           MALAWI        Medium               NA                0.1253519   0.0780681   0.1726357
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                0.0846863   0.0492176   0.1201551
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1692290   0.1569244   0.1815337
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1474108   0.1351245   0.1596971
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1258014   0.1148012   0.1368017
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1024984   0.0863037   0.1186931
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1038115   0.0161685   0.1914546
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1172692   0.0403876   0.1941508


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
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606684   0.0568070   0.0645298
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0561826   0.0434820   0.0688832
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
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1556615   0.1469265   0.1643965
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1030612   0.0873670   0.1187554


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.9773311   0.9052069   1.0552020
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               1.0095487   0.9454674   1.0779733
Birth       ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Medium               Low               0.5619983   0.4083264   0.7735039
Birth       ki1135781-COHORTS          INDIA         High                 Low               0.3506359   0.1919385   0.6405465
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.7955188   0.4068576   1.5554586
Birth       ki1135781-COHORTS          PHILIPPINES   High                 Low               0.5877435   0.2905153   1.1890680
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               1.0232690   0.9984930   1.0486598
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.9949085   0.9684791   1.0220591
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.7826111   0.3934125   1.5568398
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.5466473   0.2725199   1.0965191
6 months    ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Medium               Low               0.8138239   0.3686650   1.7965071
6 months    ki1000108-IRC              INDIA         High                 Low               0.5478424   0.2143719   1.4000494
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.7657025   0.5628584   1.0416479
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.3534869   0.2328965   0.5365174
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               0.8145325   0.2999546   2.2118786
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.9541667   0.3639632   2.5014455
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               Low               0.6992337   0.2219811   2.2025649
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 Low               1.4558405   0.5846999   3.6248875
6 months    ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       Medium               Low               0.6443399   0.4820511   0.8612653
6 months    ki1119695-PROBIT           BELARUS       High                 Low               0.4785133   0.2855160   0.8019690
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.0397612   0.8093766   1.3357236
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.8070991   0.6392791   1.0189743
6 months    ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Medium               Low               0.6524509   0.4363138   0.9756561
6 months    ki1135781-COHORTS          GUATEMALA     High                 Low               0.8154846   0.5293759   1.2562249
6 months    ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Medium               Low               0.4716919   0.3691671   0.6026898
6 months    ki1135781-COHORTS          INDIA         High                 Low               0.0868490   0.0357335   0.2110837
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.9277760   0.6480913   1.3281590
6 months    ki1135781-COHORTS          PHILIPPINES   High                 Low               0.4519868   0.2938694   0.6951798
6 months    ki1148112-LCNI-5           MALAWI        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        Medium               Low               0.6502476   0.3934692   1.0746000
6 months    ki1148112-LCNI-5           MALAWI        High                 Low               0.5825566   0.3542366   0.9580381
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.9839299   0.8684228   1.1148004
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.8387744   0.7407072   0.9498253
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               1.0956164   0.4136264   2.9020758
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 Low               1.3799748   0.6827230   2.7893165
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.8438457   0.6136215   1.1604476
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.8677335   0.6472478   1.1633281
24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Medium               Low               0.8394978   0.4332902   1.6265232
24 months   ki1000108-IRC              INDIA         High                 Low               1.0954895   0.5928688   2.0242206
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.7765465   0.5365527   1.1238868
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.2435374   0.1354982   0.4377215
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.6391626   0.3589429   1.1381441
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.2510365   0.1108156   0.5686861
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               1.0152108   0.5046710   2.0422275
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.3527990   0.1372692   0.9067374
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.2419713   0.8611135   1.7912769
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               1.0690668   0.7463433   1.5313379
24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.8345271   0.7418501   0.9387818
24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               1.1170380   1.0054913   1.2409593
24 months   ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Medium               Low               0.4279970   0.3787561   0.4836396
24 months   ki1135781-COHORTS          INDIA         High                 Low               0.0820239   0.0516448   0.1302728
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.9425469   0.8430015   1.0538470
24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.5649167   0.4954314   0.6441475
24 months   ki1148112-LCNI-5           MALAWI        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI        Medium               Low               0.7795047   0.4752364   1.2785797
24 months   ki1148112-LCNI-5           MALAWI        High                 Low               0.5266247   0.3105026   0.8931763
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.8710726   0.7858345   0.9655562
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.7433797   0.6696490   0.8252285
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               1.0128114   0.4322000   2.3734081
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               1.1441080   0.5812281   2.2520986


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0001636   -0.0014791    0.0018063
Birth       ki1135781-COHORTS          INDIA         Low                  NA                -0.0140194   -0.0208882   -0.0071505
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0045691   -0.0117498    0.0026117
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0006368   -0.0007328    0.0020064
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0325794   -0.0860709    0.0209122
6 months    ki1000108-IRC              INDIA         Low                  NA                -0.0177880   -0.0528687    0.0172926
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0248556   -0.0413521   -0.0083590
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0027667   -0.0220298    0.0164965
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                 0.0080609   -0.0469568    0.0630786
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.0052198   -0.0092414   -0.0011981
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0026800   -0.0102700    0.0049099
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0031197   -0.0164412    0.0226806
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.0318519   -0.0410675   -0.0226362
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0139052   -0.0262989   -0.0015116
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                -0.0412991   -0.0708498   -0.0117483
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0009694   -0.0053101    0.0033712
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0008657   -0.0017851    0.0035165
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0455375   -0.1124629    0.0213879
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0004531   -0.0340363    0.0349425
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0860324   -0.1384386   -0.0336262
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0538063   -0.0935841   -0.0140285
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0209477   -0.0583475    0.0164521
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0700081    0.0164275    0.1235887
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0265943   -0.0503338   -0.0028548
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.1548700   -0.1750810   -0.1346589
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0506613   -0.0721157   -0.0292070
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                -0.0471733   -0.0884610   -0.0058856
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0135676   -0.0226871   -0.0044480
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0005628   -0.0036978    0.0048235


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0051232   -0.0476607    0.0552478
Birth       ki1135781-COHORTS          INDIA         Low                  NA                -0.4907714   -0.7419452   -0.2758147
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.3029481   -0.8685902    0.0914681
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                 0.0061115   -0.0070902    0.0191401
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.2862329   -0.8476067    0.1045740
6 months    ki1000108-IRC              INDIA         Low                  NA                -0.2496457   -0.8436755    0.1529884
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.2594298   -0.4816446   -0.0705425
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0860072   -0.8833659    0.3737745
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                 0.0893151   -0.7771256    0.5333211
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                -0.3385538   -0.5626520   -0.1465932
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0641504   -0.2627834    0.1032381
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                 0.0243438   -0.1408760    0.1656367
6 months    ki1135781-COHORTS          INDIA         Low                  NA                -0.6869091   -0.8809689   -0.5128705
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.2852679   -0.5625566   -0.0571864
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                -0.5165559   -0.9353539   -0.1883830
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0159788   -0.0901470    0.0531433
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0154092   -0.0335293    0.0620305
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.1377232   -0.3620246    0.0496397
24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0045200   -0.4064086    0.2953822
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.3968591   -0.6630929   -0.1732450
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.6335968   -1.1469856   -0.2429699
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.3076321   -0.9793108    0.1361126
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.2442267    0.0337926    0.4088296
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0622294   -0.1199872   -0.0074502
24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.7924588   -0.8975046   -0.6932284
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.1797779   -0.2602180   -0.1044723
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                -0.4151250   -0.8290521   -0.0948724
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0871607   -0.1478290   -0.0296991
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0054612   -0.0367456    0.0459497
