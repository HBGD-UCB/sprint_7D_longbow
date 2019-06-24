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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       70     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        8     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       61     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        9     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       58     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        7     213
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       79     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       61     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        2     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       90     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High              0       54     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High              1        9     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       61     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       15     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       60     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       21     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       50     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        3     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       85     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1       11     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       71     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        5     225
0-24 months   ki0047075b-MAL-ED          PERU                           High              0       89     301
0-24 months   ki0047075b-MAL-ED          PERU                           High              1        1     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low               0      100     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low               1        4     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            0      100     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        7     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       89     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        6     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      135     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       13     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       66     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       10     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        1     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       55     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        9     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      132     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        9     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      132     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       77     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       29     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       78     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       31     373
0-24 months   ki1000108-IRC              INDIA                          High              0      105     410
0-24 months   ki1000108-IRC              INDIA                          High              1       19     410
0-24 months   ki1000108-IRC              INDIA                          Low               0      122     410
0-24 months   ki1000108-IRC              INDIA                          Low               1       25     410
0-24 months   ki1000108-IRC              INDIA                          Medium            0      107     410
0-24 months   ki1000108-IRC              INDIA                          Medium            1       32     410
0-24 months   ki1000109-EE               PAKISTAN                       High              0       12     376
0-24 months   ki1000109-EE               PAKISTAN                       High              1        3     376
0-24 months   ki1000109-EE               PAKISTAN                       Low               0      198     376
0-24 months   ki1000109-EE               PAKISTAN                       Low               1      130     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium            0       23     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium            1       10     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      287    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       35    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      473    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      209    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      402    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1      107    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       33     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      203     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1      129     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       27     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       18     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      152     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1       26     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      163     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1       65     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      172     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1       46     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      213     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       22     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      180     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       34     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       34     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      240     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       14     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      219     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       23     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      228     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       34     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      596    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       77    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1594    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       89    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              0      109     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              1        9     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               0       67     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               1        9     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       84     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        4     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       63     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       12     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      269     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      152     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       74     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       29     599
0-24 months   ki1119695-PROBIT           BELARUS                        High              0     2838   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High              1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6086   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low               1       14   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7946   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            1       11   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0     7305   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      245   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2766   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      157   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3262   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      180   13915
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      253    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       27    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      555    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       72    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      366    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       49    1322
0-24 months   ki1135781-COHORTS          INDIA                          High              0      776    5841
0-24 months   ki1135781-COHORTS          INDIA                          High              1       16    5841
0-24 months   ki1135781-COHORTS          INDIA                          Low               0     1623    5841
0-24 months   ki1135781-COHORTS          INDIA                          Low               1      327    5841
0-24 months   ki1135781-COHORTS          INDIA                          Medium            0     2896    5841
0-24 months   ki1135781-COHORTS          INDIA                          Medium            1      203    5841
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0     1036    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      132    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      670    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      231    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      779    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      197    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         High              0      292     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High              1        6     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      243     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       18     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      238     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       17     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     8367   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      609   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     8706   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1017   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     7440   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      754   26893
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       63    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       14    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1802    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      348    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       67    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       13    2307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       76     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        2     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       66     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        4     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        1     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       79     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        0     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       63     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        0     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       90     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High              0       60     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High              1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               0       73     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       73     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        8     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              0       51     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              1        2     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       95     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        1     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       73     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        3     225
0-6 months    ki0047075b-MAL-ED          PERU                           High              0       90     301
0-6 months    ki0047075b-MAL-ED          PERU                           High              1        0     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low               0      103     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low               1        1     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            0      106     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            1        1     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       92     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      147     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       68     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       63     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        1     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      138     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        3     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      146     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       94     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       97     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       10     368
0-6 months    ki1000108-IRC              INDIA                          High              0      118     409
0-6 months    ki1000108-IRC              INDIA                          High              1        6     409
0-6 months    ki1000108-IRC              INDIA                          Low               0      139     409
0-6 months    ki1000108-IRC              INDIA                          Low               1        8     409
0-6 months    ki1000108-IRC              INDIA                          Medium            0      127     409
0-6 months    ki1000108-IRC              INDIA                          Medium            1       11     409
0-6 months    ki1000109-EE               PAKISTAN                       High              0       15     376
0-6 months    ki1000109-EE               PAKISTAN                       High              1        0     376
0-6 months    ki1000109-EE               PAKISTAN                       Low               0      279     376
0-6 months    ki1000109-EE               PAKISTAN                       Low               1       49     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium            0       29     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium            1        4     376
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      313    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        9    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      610    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       68    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      475    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1       29    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       39     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      300     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       31     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       45     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        0     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      164     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      209     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1       19     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      204     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1       13     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      229     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      204     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      237     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       14     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      250     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        4     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      238     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        4     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      253     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        9     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      619    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        2    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       81    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1667    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       16    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0      108     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1        4     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       73     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1        1     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       77     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        2     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       73     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        2     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      401     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       20     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      101     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        2     599
0-6 months    ki1119695-PROBIT           BELARUS                        High              0     2839   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low               0     6088   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low               1       10   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7947   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            1        8   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     7423   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       76   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2865   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       38   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3365   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       53   13820
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              0      212    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      495    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        9    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      323    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        8    1050
0-6 months    ki1135781-COHORTS          INDIA                          High              0      740    5625
0-6 months    ki1135781-COHORTS          INDIA                          High              1       10    5625
0-6 months    ki1135781-COHORTS          INDIA                          Low               0     1818    5625
0-6 months    ki1135781-COHORTS          INDIA                          Low               1       75    5625
0-6 months    ki1135781-COHORTS          INDIA                          Medium            0     2917    5625
0-6 months    ki1135781-COHORTS          INDIA                          Medium            1       65    5625
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1141    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              1       27    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      874    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       26    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      957    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       19    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         High              0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               0       92     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            0       88     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     8670   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      264   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     9216   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1      470   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     7847   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      319   26786
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0       69    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        1    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1957    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       56    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       70    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        2    2155
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       63     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        8     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       58     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       53     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        6     194
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       53     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       80     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          High              0       51     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High              1        7     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       59     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       13     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       58     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       19     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       51     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        1     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       83     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1       10     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       72     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        3     220
6-24 months   ki0047075b-MAL-ED          PERU                           High              0       80     269
6-24 months   ki0047075b-MAL-ED          PERU                           High              1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low               0       89     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low               1        4     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            0       89     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        6     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       70     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      117     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       12     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       53     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        1     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      123     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        8     202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      139     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       81     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       25     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       83     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       26     373
6-24 months   ki1000108-IRC              INDIA                          High              0      108     410
6-24 months   ki1000108-IRC              INDIA                          High              1       16     410
6-24 months   ki1000108-IRC              INDIA                          Low               0      128     410
6-24 months   ki1000108-IRC              INDIA                          Low               1       19     410
6-24 months   ki1000108-IRC              INDIA                          Medium            0      110     410
6-24 months   ki1000108-IRC              INDIA                          Medium            1       29     410
6-24 months   ki1000109-EE               PAKISTAN                       High              0       12     370
6-24 months   ki1000109-EE               PAKISTAN                       High              1        3     370
6-24 months   ki1000109-EE               PAKISTAN                       Low               0      204     370
6-24 months   ki1000109-EE               PAKISTAN                       Low               1      118     370
6-24 months   ki1000109-EE               PAKISTAN                       Medium            0       23     370
6-24 months   ki1000109-EE               PAKISTAN                       Medium            1       10     370
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      273    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       29    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      422    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      192    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      380    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1       93    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       33     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1        7     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      199     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1      120     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       24     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       18     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      139     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1       18     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      139     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1       58     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      150     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1       38     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      192     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       19     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      154     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       31     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      193     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       25     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      234     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       12     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      213     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       21     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      220     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       30     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      489    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       67    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1341    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       83    2010
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              0      104     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              1        7     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               0       63     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               1        8     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       81     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        3     266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       59     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       12     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      265     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      149     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       73     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       29     587
6-24 months   ki1119695-PROBIT           BELARUS                        High              0     2774   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High              1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low               0     5967   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low               1        5   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7848   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        3   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0     5571   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      178   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2138   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      124   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     2534   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      133   10678
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      216    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       26    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      502    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       67    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      343    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       43    1197
6-24 months   ki1135781-COHORTS          INDIA                          High              0      739    5476
6-24 months   ki1135781-COHORTS          INDIA                          High              1       10    5476
6-24 months   ki1135781-COHORTS          INDIA                          Low               0     1499    5476
6-24 months   ki1135781-COHORTS          INDIA                          Low               1      296    5476
6-24 months   ki1135781-COHORTS          INDIA                          Medium            0     2758    5476
6-24 months   ki1135781-COHORTS          INDIA                          Medium            1      174    5476
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      932    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      122    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      622    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      224    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      718    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      190    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         High              0      287     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High              1        6     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      241     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       18     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      234     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       17     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     5708   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      380   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5148   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      640   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4907   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      479   17262
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       63    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       14    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1823    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      321    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       69    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       11    2301


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/4385bf4c-a66f-43ab-ba34-019b7c44e5c3/42f8b738-b2b2-4661-a3a4-9ea42ae75332/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4385bf4c-a66f-43ab-ba34-019b7c44e5c3/42f8b738-b2b2-4661-a3a4-9ea42ae75332/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4385bf4c-a66f-43ab-ba34-019b7c44e5c3/42f8b738-b2b2-4661-a3a4-9ea42ae75332/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4385bf4c-a66f-43ab-ba34-019b7c44e5c3/42f8b738-b2b2-4661-a3a4-9ea42ae75332/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1025641   0.0350768   0.1700514
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1285714   0.0499739   0.2071690
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1076923   0.0321547   0.1832299
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1428571   0.0562518   0.2294625
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1973684   0.1076818   0.2870550
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2592593   0.1636070   0.3549115
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1717936   0.1140091   0.2295782
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2694233   0.1842635   0.3545831
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2769700   0.1911719   0.3627682
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1506786   0.0866856   0.2146717
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1672777   0.1059176   0.2286378
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2244617   0.1540582   0.2948652
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1228475   0.0725710   0.1731240
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2965500   0.2397427   0.3533573
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2144360   0.1756092   0.2532629
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1951220   0.0736728   0.3165711
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3885542   0.3360609   0.4410475
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4000000   0.2566929   0.5433071
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1439826   0.0916329   0.1963324
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2741476   0.2155382   0.3327571
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2103580   0.1528461   0.2678698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0991694   0.0614401   0.1368986
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1538342   0.1046166   0.2030519
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1330566   0.0901604   0.1759528
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0586118   0.0304322   0.0867915
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0934822   0.0562521   0.1307123
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1290757   0.0882217   0.1699297
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0402577   0.0247946   0.0557207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0609756   0.0091734   0.1127779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0528818   0.0421875   0.0635761
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1960051   0.0945957   0.2974146
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3507266   0.3043520   0.3971012
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2908814   0.1906112   0.3911517
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0330560   0.0289970   0.0371149
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0501899   0.0420396   0.0583402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0516394   0.0439789   0.0593000
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0909086   0.0570238   0.1247934
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1120635   0.0865406   0.1375865
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1167532   0.0853793   0.1481272
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0171251   0.0087983   0.0254519
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1622401   0.1451764   0.1793037
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0651844   0.0563700   0.0739988
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1259278   0.1072086   0.1446470
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2354819   0.2075343   0.2634296
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2003289   0.1750144   0.2256434
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0201342   0.0041770   0.0360915
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0689655   0.0382050   0.0997260
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0666667   0.0360317   0.0973017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0816590   0.0747937   0.0885243
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0954496   0.0893700   0.1015293
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0865440   0.0796321   0.0934558
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1873319   0.0859212   0.2887426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1618860   0.1442830   0.1794890
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1576093   0.0796034   0.2356153
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.0745913   0.0315649   0.1176177
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.0966321   0.0404755   0.1527887
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.0915198   0.0315312   0.1515084
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.0483871   0.0105721   0.0862021
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.0544218   0.0177057   0.0911378
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.0797101   0.0344663   0.1249540
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0279503   0.0159038   0.0399969
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1002950   0.0728735   0.1277165
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0575397   0.0289884   0.0860910
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0727417   0.0343347   0.1111488
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.0823393   0.0458202   0.1188583
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0600329   0.0279342   0.0921316
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0255319   0.0053506   0.0457133
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0467290   0.0184312   0.0750268
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0102076   0.0079544   0.0124607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0114288   0.0073898   0.0154678
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0141724   0.0101159   0.0182289
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0141652   0.0051957   0.0231348
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0404677   0.0315406   0.0493948
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0222834   0.0169052   0.0276617
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0233736   0.0146212   0.0321260
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0259619   0.0157031   0.0362207
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0195047   0.0107721   0.0282372
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0354313   0.0309741   0.0398886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0437709   0.0398078   0.0477340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0363227   0.0321504   0.0404950
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389369   0.1864152
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.0937500   0.0221538   0.1653462
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1016949   0.0243724   0.1790174
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1206897   0.0366485   0.2047308
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1805556   0.0914923   0.2696188
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2467532   0.1502250   0.3432815
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1216750   0.0704193   0.1729307
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2317792   0.1501762   0.3133822
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2400103   0.1589661   0.3210545
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1367030   0.0771087   0.1962974
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1370042   0.0822599   0.1917484
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2133933   0.1460454   0.2807412
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1031002   0.0488215   0.1573789
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3023403   0.2568703   0.3478103
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1947069   0.1557311   0.2336828
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1750000   0.0571020   0.2928980
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3761755   0.3229498   0.4294013
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4285714   0.2787209   0.5784219
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1066717   0.0581147   0.1552288
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2801943   0.2172154   0.3431732
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2028273   0.1426656   0.2629890
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0927613   0.0543573   0.1311652
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1635195   0.1089063   0.2181327
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1133617   0.0708961   0.1558274
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0507688   0.0237815   0.0777561
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0861595   0.0495199   0.1227990
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1193085   0.0786685   0.1599485
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0486381   0.0300371   0.0672391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0582865   0.0461150   0.0704580
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2163130   0.1086291   0.3239968
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3518495   0.3049817   0.3987174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3009438   0.1916527   0.4102348
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0314620   0.0267393   0.0361847
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0498536   0.0403955   0.0593117
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0516210   0.0425895   0.0606525
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0949690   0.0598901   0.1300479
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1130411   0.0868952   0.1391870
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1125752   0.0801505   0.1450000
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0121026   0.0047728   0.0194324
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1618302   0.1438858   0.1797746
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0587627   0.0501180   0.0674075
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1290193   0.1089049   0.1491338
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2468418   0.2175454   0.2761382
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2069134   0.1800474   0.2337793
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0204778   0.0042510   0.0367047
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0694981   0.0385086   0.1004875
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0677291   0.0366233   0.0988348
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0758240   0.0677928   0.0838553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0984451   0.0903887   0.1065016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0860884   0.0777914   0.0943854
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1841753   0.0846506   0.2837001
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1498190   0.1331472   0.1664908
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1367256   0.0563215   0.2171296


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1126761   0.0701126   0.1552395
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2045455   0.1511224   0.2579685
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498743   0.0411379   0.0586107
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3222037   0.2847485   0.3596589
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0418254   0.0384990   0.0451517
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1119516   0.0949484   0.1289548
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0934771   0.0860112   0.1009431
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0503686   0.0353351   0.0654020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0884989   0.0846168   0.0923809
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1625488   0.1455786   0.1795190
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120839   0.0102622   0.0139056
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0266667   0.0224561   0.0308772
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393116   0.0368259   0.0417973
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1030928   0.0601928   0.1459928
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1884058   0.1350070   0.2418045
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562189   0.0461465   0.0662914
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3236797   0.2857977   0.3615618
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0407380   0.0369883   0.0444876
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1136174   0.0956322   0.1316026
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0876552   0.0801645   0.0951460
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0510585   0.0358245   0.0662926
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868381   0.0821743   0.0915020
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1503694   0.1342222   0.1665166


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               1.2535714   0.5106086    3.077585
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               1.0500000   0.4013361    2.747074
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               1.3815789   0.6476465    2.947226
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               1.8148148   0.8925300    3.690131
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.5682962   0.9896352    2.485313
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.6122252   1.0248682    2.536199
0-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High               1.1101620   0.6333586    1.945912
0-24 months   ki1000108-IRC              INDIA                          Medium               High               1.4896716   0.8795960    2.522887
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               2.4139687   1.4904259    3.909785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               1.7455465   1.1452296    2.660543
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               1.9913404   1.0532579    3.764924
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.0500000   0.9996680    4.203896
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.9040326   1.2486007    2.903523
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.4609955   0.9265985    2.303595
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.5512273   0.9450514    2.546217
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.3417109   0.8164508    2.204895
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.5949380   0.8552818    2.974256
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.2022123   1.2382845    3.916498
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.5146339   0.5962002    3.847896
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.3135827   0.8510125    2.027584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.7893745   1.0490093    3.052271
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.4840500   0.7970710    2.763122
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.5183305   1.2431131    1.854479
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.5621812   1.2934414    1.886758
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.2327049   0.7961210    1.908707
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.2842920   0.8113277    2.032971
0-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High               9.4738105   5.7606552   15.580360
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High               3.8063629   2.2978618    6.305165
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.8699765   1.5492704    2.257070
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.5908239   1.3120581    1.928818
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.4252873   1.3795460    8.504677
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3111111   1.3246625    8.276415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.1688807   1.0573266    1.292204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.0598214   0.9531426    1.178440
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.8641666   0.4971797    1.502040
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.8413372   0.4023782    1.759162
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.2954879   0.5707236    2.940634
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.2269500   0.5109524    2.946275
0-6 months    ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High               1.1247165   0.4005555    3.158082
0-6 months    ki1000108-IRC              INDIA                          Medium               High               1.6473430   0.6270556    4.327749
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High               3.5883317   2.1335409    6.035096
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               2.0586420   1.0888549    3.892168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.1319400   0.5679934    2.255815
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High               0.8252881   0.3894315    1.748961
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.8302181   0.6761706    4.953925
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               2.1845950   0.8530709    5.594441
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.1196367   0.7395984    1.694956
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.3884201   0.9703730    1.986566
0-6 months    ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High               2.8568337   1.4607664    5.587135
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High               1.5731070   0.7988305    3.097861
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.1107340   0.6445489    1.914099
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.8344731   0.4654866    1.495952
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.2353731   1.0658139    1.431907
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.0251579   0.8775733    1.197562
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.8320313   0.3043355    2.274713
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.9025424   0.3309679    2.461214
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               1.4960317   0.6372868    3.511937
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               2.0445269   0.9198597    4.544269
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.9049043   1.1016671    3.293790
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.9725525   1.1508480    3.380953
6-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High               1.0022028   0.5543489    1.811874
6-24 months   ki1000108-IRC              INDIA                          Medium               High               1.5609988   0.9100836    2.677465
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               2.9324897   1.6638624    5.168394
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               1.8885216   1.1003429    3.241275
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               2.1495746   1.0799012    4.278790
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.4489796   1.1464135    5.231534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               2.6266967   1.5812280    4.363403
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.9014156   1.1025547    3.279094
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.7627992   1.0358140    3.000019
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.2220805   0.7008942    2.130822
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.6970946   0.8591457    3.352318
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.3500359   1.2494566    4.420057
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.4277778   0.5643511    3.612201
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.1983708   0.7750939    1.852798
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.6265762   0.9718698    2.722330
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.3912424   0.7513621    2.576062
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.5845655   1.2448983    2.016910
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.6407395   1.3037305    2.064864
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.1902946   0.7690386    1.842302
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.1853893   0.7424860    1.892491
6-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              13.3714741   7.2241366   24.749853
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High               4.8553626   2.6034335    9.055175
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.9132160   1.5757241    2.322992
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.6037396   1.3120585    1.960264
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.3938224   1.3671140    8.425069
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3074369   1.3235151    8.265216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.2983366   1.1392916    1.479584
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.1353708   0.9911253    1.300609
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.8134586   0.4680888    1.413653
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.7423665   0.3335050    1.652473


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0101120   -0.0449377   0.0651616
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0616883   -0.0161498   0.1395264
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0587694    0.0106115   0.1069272
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0346872   -0.0205840   0.0899584
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1091419    0.0493946   0.1688893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1756914    0.0573459   0.2940370
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0755686    0.0274575   0.1236798
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0294021   -0.0036645   0.0624686
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0350557    0.0087248   0.0613866
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0096166   -0.0042025   0.0234357
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1261985    0.0271846   0.2252124
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0087694    0.0055954   0.0119434
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0210429   -0.0099337   0.0520196
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0763520    0.0661721   0.0865320
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0579803    0.0414304   0.0745302
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0302343    0.0130821   0.0473866
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0068399    0.0011146   0.0125651
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0247832   -0.1244993   0.0749330
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0096478   -0.0250302   0.0443259
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0127376   -0.0204773   0.0459525
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0425284    0.0188020   0.0662548
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0003945   -0.0328150   0.0320261
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0173252   -0.0016288   0.0362793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0018764    0.0001937   0.0035591
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0125014    0.0036171   0.0213858
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0002795   -0.0066672   0.0072261
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0038802    0.0000907   0.0076698
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0095833   -0.0670104   0.0478438
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0677161   -0.0094614   0.1448937
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0659926    0.0213746   0.1106105
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0193945   -0.0324017   0.0711907
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1229617    0.0664403   0.1794832
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1865960    0.0710805   0.3021115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1036604    0.0566451   0.1506756
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0293886   -0.0041427   0.0629198
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0355326    0.0099529   0.0611122
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0075808   -0.0088659   0.0240275
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1073667    0.0023884   0.2123450
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0092759    0.0054286   0.0131233
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0186484   -0.0131669   0.0504636
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0755526    0.0658640   0.0852412
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0618639    0.0439854   0.0797423
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0305807    0.0131672   0.0479943
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0110141    0.0042415   0.0177867
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0338059   -0.1315081   0.0638962


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0897436   -0.5553666   0.4672852
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3015873   -0.1952913   0.5919151
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.2548951    0.0190898   0.4340141
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1871285   -0.1715936   0.4360159
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4704608    0.1932033   0.6524382
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.4738002    0.0387627   0.7119481
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3441959    0.0901268   0.5273198
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2286827   -0.0711051   0.4445640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3742567    0.0397183   0.5922502
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1928171   -0.1350978   0.4260017
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3916732   -0.0043452   0.6315395
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2096669    0.1320782   0.2803195
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1879647   -0.1399563   0.4215556
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8167989    0.7042396   0.8865209
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3152678    0.2222807   0.3971370
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.6002619    0.1702459   0.8074242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0772875    0.0102365   0.1397961
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1524659   -0.9623923   0.3231844
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1145292   -0.4074820   0.4429353
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.2083871   -0.5623325   0.5989004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.6034220    0.3516107   0.7574388
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0054524   -0.5700755   0.3561236
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4042553   -0.2061957   0.7057594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1552773    0.0064208   0.2818323
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4688041    0.0201104   0.7120399
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0118150   -0.3301572   0.2658690
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0987048   -0.0030140   0.1901079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0929577   -0.8178096   0.3428593
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3594164   -0.1972763   0.6572660
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.3516461    0.0762238   0.5449517
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1242461   -0.2767725   0.3993097
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5439294    0.2413323   0.7258347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.5160345    0.0697324   0.7482202
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.4928414    0.2296572   0.6661099
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2405944   -0.0833157   0.4676558
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4117266    0.0530434   0.6345497
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1348438   -0.2119889   0.3824240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3317067   -0.0827119   0.5875026
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2276979    0.1300263   0.3144039
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1641332   -0.1668456   0.4012289
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8619290    0.7486182   0.9241648
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3240928    0.2268308   0.4091196
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5989345    0.1676110   0.8067568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1268348    0.0452966   0.2014090
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2248191   -1.0813713   0.2792340
