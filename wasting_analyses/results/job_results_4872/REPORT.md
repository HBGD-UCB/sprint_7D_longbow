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

**Outcome Variable:** ever_wasted

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
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       46     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       24     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       44     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       59     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       19     213
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       55     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        8     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       82     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        8     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       43     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       44     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       37     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       39     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       24     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       69     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       27     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       51     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       25     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       13     225
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       93     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       11     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       95     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       12     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0       87     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      116     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       32     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       55     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       14     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       80     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       15     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      126     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       15     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        9     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        2     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       71     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       89     373
0-24 months   ki1000108-IRC              INDIA                          Low                   0       50     410
0-24 months   ki1000108-IRC              INDIA                          Low                   1       97     410
0-24 months   ki1000108-IRC              INDIA                          Medium                0       50     410
0-24 months   ki1000108-IRC              INDIA                          Medium                1       89     410
0-24 months   ki1000108-IRC              INDIA                          High                  0       41     410
0-24 months   ki1000108-IRC              INDIA                          High                  1       83     410
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      324     754
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      334     754
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       42     754
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       24     754
0-24 months   ki1000109-EE               PAKISTAN                       High                  0       18     754
0-24 months   ki1000109-EE               PAKISTAN                       High                  1       12     754
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      360    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      322    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      316    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      193    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      209    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1      113    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      172     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1      160     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       27     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       14     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      106     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1      122     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      114     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1      104     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      106     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       72     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      131     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       83     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      157     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       94     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      166     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       69     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      163     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       79     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      177     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       85     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      167     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       87     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       63    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       19    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1284    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      399    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      474    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      147    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       65     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       11     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       82     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        6     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      105     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       13     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      320    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      522    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       90    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      116    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       80    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       70    1198
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     4521   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1579   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     5885   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     2072   16898
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2156   16898
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      685   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2226   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      700   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2587   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      855   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5840   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1711   13919
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      465    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1      162    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      300    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1      115    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      218    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       62    1322
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1175    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      776    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2127    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      973    5844
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      596    5844
0-24 months   ki1135781-COHORTS          INDIA                          High                  1      197    5844
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      496    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      405    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      593    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      383    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      727    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      441    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       26     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      227     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       28     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      287     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0    14090   53794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     5366   53794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0    12205   53794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     4195   53794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0    13605   53794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     4333   53794
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     2842    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1     1342    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      110    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       43    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       95    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       52    4484
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       54     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       16     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       48     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0       58     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        5     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0       84     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        6     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       46     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       30     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       58     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       23     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       47     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       16     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       83     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       13     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       60     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       16     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       42     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       11     225
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0      100     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0      102     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     301
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0       88     301
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      134     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       14     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       61     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       85     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       10     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       61     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      134     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        7     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       50     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       58     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       78     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       79     368
0-6 months    ki1000108-IRC              INDIA                          Low                   0       69     410
0-6 months    ki1000108-IRC              INDIA                          Low                   1       78     410
0-6 months    ki1000108-IRC              INDIA                          Medium                0       66     410
0-6 months    ki1000108-IRC              INDIA                          Medium                1       73     410
0-6 months    ki1000108-IRC              INDIA                          High                  0       52     410
0-6 months    ki1000108-IRC              INDIA                          High                  1       72     410
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0      470     754
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1      188     754
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0       52     754
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1       14     754
0-6 months    ki1000109-EE               PAKISTAN                       High                  0       26     754
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        4     754
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0      505    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1      174    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0      409    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       95    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0      260    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       62    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      264     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       68     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       38     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        7     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       38     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        3     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   0      141     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   1       87     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                0      139     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                1       78     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  0      120     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  1       57     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0      157     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       57     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0      178     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       73     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       51     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      183     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       59     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      195     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       67     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      184     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       70     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       74    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        8    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1449    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      234    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      530    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       91    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       73     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        1     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       76     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  0      107     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  1        5     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      588    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      254    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0      142    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       64    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0      114    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       36    1198
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     4570   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1528   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     5942   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     2014   16895
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0     2163   16895
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      678   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2400   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      507   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2797   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      621   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     6128   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1374   13827
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0      405    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1      100    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0      256    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       75    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0      179    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       36    1051
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0     1385    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      508    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0     2246    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      737    5626
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      582    5626
0-6 months    ki1135781-COHORTS          INDIA                          High                  1      168    5626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0      700    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      200    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0      770    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      206    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0      857    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      311    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0       90     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        2     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0       86     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        2     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0    15674   53658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     3730   53658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0    13610   53658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2754   53658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0    14912   53658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2978   53658
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     3574    4316
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      458    4316
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      128    4316
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       16    4316
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0      128    4316
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       12    4316
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       54     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       51     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       63     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        8     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       52     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        3     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       77     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        3     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       50     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       22     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       54     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       23     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       48     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       10     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       77     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       16     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       62     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       13     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       47     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        5     220
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       84     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       88     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     269
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       80     269
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      108     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       21     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       48     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       67     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      120     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       11     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        7     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        2     202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       70     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       75     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       34     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0      129     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       29     373
6-24 months   ki1000108-IRC              INDIA                          Low                   0      103     410
6-24 months   ki1000108-IRC              INDIA                          Low                   1       44     410
6-24 months   ki1000108-IRC              INDIA                          Medium                0       94     410
6-24 months   ki1000108-IRC              INDIA                          Medium                1       45     410
6-24 months   ki1000108-IRC              INDIA                          High                  0       86     410
6-24 months   ki1000108-IRC              INDIA                          High                  1       38     410
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0      426     744
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1      222     744
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0       50     744
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1       16     744
6-24 months   ki1000109-EE               PAKISTAN                       High                  0       22     744
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        8     744
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      398    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      216    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      333    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      140    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      233    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       69    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      209     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1      111     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       23     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       19     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       27     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       13     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      116     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       80     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      140     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       48     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      126     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       31     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      145     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       40     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      190     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       29     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      181     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       30     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      199     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       35     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      213     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       37     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      222     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       24     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       58    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       14    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1192    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      233    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      438    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       76    2011
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       61     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       10     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       81     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      101     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       10     266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      402    1174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      426    1174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      126    1174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       78    1174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       90    1174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       52    1174
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     5904   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       68   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     7767   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       84   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2760   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1       15   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2014   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      248   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2358   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      308   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5303   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      448   10679
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      495    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       74    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      337    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       50    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      213    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       29    1198
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1447    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1      349    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2625    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1      308    5479
6-24 months   ki1135781-COHORTS          INDIA                          High                  0      713    5479
6-24 months   ki1135781-COHORTS          INDIA                          High                  1       37    5479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      551    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      296    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      657    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      251    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      852    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      202    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      224     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       27     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      282     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     9466   34502
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2110   34502
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     8977   34502
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1791   34502
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0    10401   34502
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1757   34502
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     3106    4472
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1     1066    4472
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      124    4472
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       29    4472
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      103    4472
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       44    4472


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0014e085-1cec-41d6-b5cf-88d86a9ac12d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0014e085-1cec-41d6-b5cf-88d86a9ac12d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0014e085-1cec-41d6-b5cf-88d86a9ac12d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0014e085-1cec-41d6-b5cf-88d86a9ac12d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3552708   0.2544293   0.4561123
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3157993   0.2124126   0.4191861
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2489245   0.1614432   0.3364057
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5627010   0.4575393   0.6678626
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4546954   0.3518065   0.5575842
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3817568   0.2705408   0.4929729
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2771204   0.1873062   0.3669347
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3313831   0.2279400   0.4348262
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2494953   0.1346224   0.3643682
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2323853   0.1704973   0.2942734
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2226180   0.1459577   0.2992784
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1559199   0.0940190   0.2178208
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.7095344   0.6318337   0.7872352
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7048773   0.6276721   0.7820825
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5950659   0.5248306   0.6653013
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6249000   0.5634700   0.6863300
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.5883478   0.5233292   0.6533663
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6412689   0.5739669   0.7085709
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.5064649   0.4524037   0.5605262
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3702608   0.2083173   0.5322042
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.4101286   0.1614583   0.6587989
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4603036   0.3949510   0.5256561
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3809765   0.3360790   0.4258739
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3584648   0.3192502   0.3976794
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4816908   0.4279187   0.5354628
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5094158   0.3628415   0.6559901
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3449038   0.1985571   0.4912505
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4873324   0.4342803   0.5403844
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.4369118   0.3818208   0.4920028
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3688239   0.3127427   0.4249051
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3699985   0.3247963   0.4152007
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3258415   0.2826452   0.3690377
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2797076   0.2387056   0.3207097
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3055780   0.2671293   0.3440267
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2800222   0.2407401   0.3193043
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3021459   0.2618552   0.3424366
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2463104   0.1641239   0.3284968
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2371509   0.2168840   0.2574177
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2416856   0.2086471   0.2747242
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368   0.0654954   0.2239782
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818   0.0154251   0.1209386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1101695   0.0535765   0.1667625
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6269613   0.5818331   0.6720894
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6515587   0.5776573   0.7254600
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6340608   0.5681498   0.6999718
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2550998   0.1999841   0.3102154
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2578690   0.1997045   0.3160335
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2432794   0.1847905   0.3017683
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2499920   0.2381878   0.2617963
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2495512   0.2389000   0.2602023
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2218190   0.2141420   0.2294960
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2507253   0.2246332   0.2768175
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2744198   0.2469081   0.3019314
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2693050   0.2402597   0.2983503
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3716399   0.3543661   0.3889137
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3212085   0.3070128   0.3354042
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3028863   0.2812249   0.3245478
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4742165   0.4490576   0.4993754
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4080330   0.3846242   0.4314418
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3817016   0.3599039   0.4034992
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0956595   0.0606721   0.1306468
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1038623   0.0671483   0.1405763
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0339871   0.0135931   0.0543811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2623994   0.2535201   0.2712786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2553508   0.2457578   0.2649439
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2476259   0.2386827   0.2565691
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3205777   0.2966440   0.3445114
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2956046   0.2061279   0.3850814
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3419751   0.2409102   0.4430400
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2128340   0.1197023   0.3059657
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2379254   0.1384352   0.3374156
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1689274   0.0864716   0.2513832
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3848704   0.2830254   0.4867155
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2841254   0.1926303   0.3756204
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2607566   0.1609837   0.3605294
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1374429   0.0696958   0.2051901
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2062440   0.1167503   0.2957377
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2067699   0.1027305   0.3108092
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0945946   0.0473699   0.1418193
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1159420   0.0402794   0.1916047
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434517   0.1670747
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.4820614   0.4031107   0.5610121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5235039   0.4444503   0.6025576
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.4826722   0.4129804   0.5523640
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5024615   0.4405012   0.5644217
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.4903438   0.4245989   0.5560887
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.5501613   0.4850050   0.6153177
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2430323   0.1952980   0.2907666
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1869880   0.1450080   0.2289681
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1759751   0.1451118   0.2068385
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3347555   0.2852755   0.3842356
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3105364   0.2604455   0.3606272
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2867275   0.2347653   0.3386898
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2765883   0.2393780   0.3137987
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2628957   0.2260379   0.2997536
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2365025   0.2010837   0.2719212
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2668479   0.2185278   0.3151679
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2523217   0.2049046   0.2997388
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2747621   0.2269992   0.3225250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610   0.0333249   0.1617971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374   0.1225043   0.1555706
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378   0.1187176   0.1743580
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3137749   0.2710924   0.3564574
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4132221   0.3408986   0.4855457
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3606790   0.3013317   0.4200264
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2473209   0.1907260   0.3039158
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2501983   0.1913310   0.3090656
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2396718   0.1815351   0.2978085
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1868962   0.1779038   0.1958887
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1834607   0.1753596   0.1915619
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1762263   0.1695004   0.1829522
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1935798   0.1640212   0.2231385
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2171822   0.1826335   0.2517309
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1683081   0.1344742   0.2021420
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2436160   0.2297316   0.2575004
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2502163   0.2372963   0.2631363
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2592748   0.2388534   0.2796963
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2415204   0.2223622   0.2606786
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2151719   0.1981590   0.2321849
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2539662   0.2360159   0.2719166
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1847156   0.1772509   0.1921803
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1716849   0.1640430   0.1793268
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1676702   0.1605237   0.1748168
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1134978   0.0965155   0.1304801
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1016815   0.0419952   0.1613678
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0774041   0.0053255   0.1494827
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1692308   0.0778431   0.2606185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1355932   0.0480109   0.2231756
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389379   0.1864142
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3037395   0.2035712   0.4039078
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2884430   0.1920117   0.3848742
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1767135   0.0832206   0.2702064
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1720430   0.0951621   0.2489239
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1733333   0.0874690   0.2591977
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0961538   0.0158445   0.1764632
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1627907   0.0989607   0.2266207
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1428571   0.0510299   0.2346844
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.0945946   0.0277868   0.1614024
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3591674   0.2747863   0.4435485
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.3270901   0.2451319   0.4090484
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1947423   0.1361425   0.2533421
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2993197   0.2251977   0.3734418
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3237410   0.2458609   0.4016211
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3064516   0.2252084   0.3876948
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.3425926   0.2908478   0.3943374
6-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.2424242   0.0960122   0.3888362
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.2666667   0.0425769   0.4907564
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3470002   0.3031589   0.3908415
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3032032   0.2617224   0.3446840
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2457901   0.1918658   0.2997144
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3468750   0.2946596   0.3990904
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4523810   0.3016662   0.6030957
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3250000   0.1796709   0.4703291
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3533072   0.2956902   0.4109242
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2090973   0.1573088   0.2608857
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1514731   0.1018385   0.2011077
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2089533   0.1500720   0.2678345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1282013   0.0841982   0.1722043
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1516352   0.1059023   0.1973680
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1477124   0.1022816   0.1931432
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1466930   0.1030016   0.1903845
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0994926   0.0627405   0.1362447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2082691   0.1226841   0.2938540
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1636814   0.1445071   0.1828557
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1501748   0.1198272   0.1805223
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5147704   0.4680289   0.5615119
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4126338   0.3378741   0.4873935
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4531333   0.3825550   0.5237116
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0114757   0.0077193   0.0152322
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0107175   0.0071722   0.0142629
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0053362   0.0028134   0.0078590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1117666   0.0997555   0.1237778
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1191248   0.1078792   0.1303703
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0781445   0.0716680   0.0846209
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1210241   0.0955048   0.1465434
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1241349   0.0936742   0.1545957
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0971713   0.0647397   0.1296029
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1925070   0.1752987   0.2097152
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1065446   0.0955456   0.1175437
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0510187   0.0377170   0.0643203
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3696337   0.3421607   0.3971067
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2939214   0.2687946   0.3190482
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2179493   0.1969193   0.2389793
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0867706   0.0522805   0.1212606
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0994246   0.0621737   0.1366755
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0342511   0.0130834   0.0554187
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1717347   0.1619558   0.1815135
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1649535   0.1552052   0.1747019
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1558621   0.1463362   0.1653880
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2555602   0.2337406   0.2773799
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1925048   0.1043882   0.2806214
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2959506   0.1854605   0.4064407


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3004695   0.2387555   0.3621835
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4727273   0.4066048   0.5388497
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2888889   0.2295338   0.3482440
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4907162   0.4401862   0.5412462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367980   0.2197367   0.2538593
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1063830   0.0703329   0.1424331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5909850   0.5515796   0.6303903
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2346433   0.2276029   0.2416837
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2564297   0.2328823   0.2799770
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3329911   0.3209071   0.3450751
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0798526   0.0612199   0.0984853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2582816   0.2518151   0.2647481
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3204728   0.2971300   0.3438156
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2206573   0.1648355   0.2764790
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3136364   0.2521871   0.3750856
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1777778   0.1277101   0.2278455
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395641   0.1256566   0.1534717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2954925   0.2589234   0.3320615
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1809503   0.1745333   0.1873674
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2007612   0.1765324   0.2249900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2511554   0.2398221   0.2624886
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763390   0.1707116   0.1819665
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1126043   0.0962730   0.1289355
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1384615   0.0898601   0.1870630
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2657005   0.2053824   0.3260185
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1545455   0.1066715   0.2024194
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306452   0.2827744   0.3785159
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606166   0.1445647   0.1766685
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4735945   0.4331684   0.5140207
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0940163   0.0884807   0.0995519
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1277129   0.1088047   0.1466210
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1266655   0.1178579   0.1354730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0772105   0.0587369   0.0956840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1639905   0.1578595   0.1701215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2546959   0.2337294   0.2756624


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8888975   0.5832752   1.3546586
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7006612   0.4509353   1.0886840
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8080586   0.6070235   1.0756729
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.6784365   0.4823336   0.9542691
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.1958091   0.7650176   1.8691850
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.9003137   0.5136424   1.5780719
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.9579694   0.6232440   1.4724657
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.6709541   0.4175447   1.0781585
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9934363   0.8508537   1.1599124
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.8386709   0.7139741   0.9851463
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.9415071   0.8234415   1.0765010
0-24 months   ki1000108-IRC              INDIA                          High                 Low               1.0261945   0.9011526   1.1685869
0-24 months   ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Medium               Low               0.7310689   0.4662586   1.1462776
0-24 months   ki1000109-EE               PAKISTAN                       High                 Low               0.8097868   0.4375204   1.4987980
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8276635   0.7666957   0.8934794
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7787574   0.6761916   0.8968805
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0575577   0.7767336   1.4399124
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7160274   0.4616387   1.1105984
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8965376   0.7614895   1.0555361
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.7568221   0.6299749   0.9092103
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8806561   0.7610547   1.0190532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7559696   0.6460842   0.8845443
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9163688   0.7787541   1.0783015
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.9887684   0.8421229   1.1609504
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9628132   0.6822581   1.3587368
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9812240   0.6841954   1.4072011
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.4710744   0.1825726   1.2154677
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.7611710   0.3592838   1.6126008
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0392327   0.9087274   1.1884804
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.0113237   0.8913389   1.1474600
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0108554   0.9761386   1.0468070
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.9536637   0.9031532   1.0069990
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9982365   0.9436239   1.0560097
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8873042   0.8447001   0.9320571
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0945035   0.9820928   1.2197807
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0741035   0.9559407   1.2068724
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.8643003   0.8172480   0.9140615
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.8149995   0.7529067   0.8822132
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8604362   0.8007446   0.9245774
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.8049100   0.7496508   0.8642424
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0857500   0.6529437   1.8054436
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.3552926   0.1759771   0.7173254
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9731382   0.9295684   1.0187501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9436985   0.9036597   0.9855114
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9220997   0.6818812   1.2469444
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0667463   0.7888738   1.4424964
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.1178920   0.6168529   2.0259001
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7937048   0.4144308   1.5200784
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7382364   0.4922666   1.1071093
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.6775178   0.4313014   1.0642914
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.5005789   0.7816742   2.8806592
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               1.5044050   0.7444471   3.0401547
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2256728   0.5389357   2.7874825
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.1127819   0.5148490   2.4051395
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0859694   0.8714908   1.3532324
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0012671   0.8073770   1.2417195
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               0.9758833   0.8351038   1.1403950
0-6 months    ki1000108-IRC              INDIA                          High                 Low               1.0949324   0.9484551   1.2640313
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7693959   0.6990698   0.8467967
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7240813   0.6502819   0.8062562
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.9276511   0.7526057   1.1434096
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.8565282   0.6841467   1.0723438
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9504945   0.8387342   1.0771468
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.8550702   0.7515929   0.9727940
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9455639   0.7314456   1.2223618
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0296581   0.8047541   1.3174158
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.4251337   0.7299304   2.7824651
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.5020128   0.7569649   2.9803793
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.3169381   1.0550663   1.6438076
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.1494833   0.9285111   1.4230437
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0116340   0.9745119   1.0501703
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9690721   0.9190615   1.0218040
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9816181   0.9344255   1.0311941
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9429100   0.9031990   0.9843669
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.1219257   0.9130564   1.3785755
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8694504   0.6859597   1.1020240
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.0270931   0.9676917   1.0901410
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0642767   0.9778251   1.1583717
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8909058   0.8168000   0.9717349
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0515311   0.9677163   1.1426051
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9294553   0.8832439   0.9780845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9077210   0.8653347   0.9521835
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.8958896   0.4944007   1.6234164
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.6819873   0.2655654   1.7513829
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8012327   0.3452365   1.8595188
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6658131   0.2850155   1.5553784
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.9496394   0.6013068   1.4997584
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.5817931   0.3138621   1.0784455
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.0075000   0.5170191   1.9632857
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5588942   0.2167427   1.4411686
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.8775510   0.4133080   1.8632491
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.5810811   0.2590688   1.3033420
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9106899   0.6461882   1.2834591
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.5422048   0.3699785   0.7946031
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               1.0815893   0.7658165   1.5275662
6-24 months   ki1000108-IRC              INDIA                          High                 Low               1.0238270   0.7123201   1.4715599
6-24 months   ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Medium               Low               0.7076167   0.3796893   1.3187663
6-24 months   ki1000109-EE               PAKISTAN                       High                 Low               0.7783784   0.3314279   1.8280683
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8737840   0.7726380   0.9881709
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7083283   0.5534385   0.9065670
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.3041613   0.9048125   1.8797671
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9369369   0.5845209   1.5018296
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.5918286   0.4400349   0.7959847
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.4287293   0.2972710   0.6183205
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.6135403   0.3946891   0.9537425
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7256895   0.4823334   1.0918282
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9930988   0.6480647   1.5218316
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6735562   0.4168605   1.0883206
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.7859130   0.5126141   1.2049206
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7210613   0.4561387   1.1398495
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8015881   0.6546452   0.9815140
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8802630   0.7351587   1.0540077
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.9339301   0.6802749   1.2821661
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.4649984   0.2932456   0.7373462
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0658347   0.9245200   1.2287497
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6991752   0.6109803   0.8001009
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0257043   0.7438874   1.4142858
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8029086   0.5414662   1.1905864
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.5534587   0.4828377   0.6344088
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.2650225   0.2011976   0.3490944
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.7951695   0.7106139   0.8897863
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5896359   0.5225152   0.6653787
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1458331   0.6636587   1.9783264
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.3947312   0.1893455   0.8229020
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9605139   0.8870372   1.0400769
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9075749   0.8351734   0.9862528
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.7532658   0.4752141   1.1940079
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1580462   0.7871542   1.7036955


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0548013   -0.1339789    0.0243763
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0899737   -0.1735789   -0.0063685
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0117685   -0.0559102    0.0794471
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0368725   -0.0799820    0.0062370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0955934   -0.1628821   -0.0283047
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0311975   -0.0137879    0.0761830
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0157487   -0.0348693    0.0033719
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0452342   -0.0705635   -0.0199048
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0103989   -0.0347920    0.0139942
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0097683   -0.0521149    0.0325784
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0185699   -0.0492093    0.0120694
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0255565   -0.0035848    0.0546979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0095124   -0.0903543    0.0713296
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0383539   -0.1031171    0.0264094
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0359763   -0.0624321   -0.0095205
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0014986   -0.0042175    0.0072147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0153488   -0.0248300   -0.0058675
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0057043   -0.0081338    0.0195424
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0386488   -0.0516425   -0.0256550
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0706040   -0.0904385   -0.0507696
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0158069   -0.0433096    0.0116958
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0041178   -0.0109473    0.0027118
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0001049   -0.0048347    0.0046248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0078233   -0.0672261    0.0828726
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0712341   -0.1487792    0.0063111
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0403348   -0.0152578    0.0959275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0079695   -0.0274042    0.0433432
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0369604   -0.0297297    0.1036504
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0414410   -0.0007251    0.0836071
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0230987   -0.0332395   -0.0129580
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0221577   -0.0160814    0.0603967
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0180169   -0.0384189    0.0023851
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0082727   -0.0478732    0.0313279
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0420031   -0.0215270    0.1055333
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0182824   -0.0420829    0.0055180
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0024571   -0.0035052    0.0084194
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0059459   -0.0122396    0.0003477
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0071813   -0.0132869    0.0276496
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0075394   -0.0017884    0.0168671
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0059751   -0.0190392    0.0070890
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0083766   -0.0136499   -0.0031032
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0008935   -0.0041323    0.0023453
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0307692   -0.1025049    0.0409664
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0380390   -0.1154472    0.0393692
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0174976   -0.0741137    0.0391185
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0237946   -0.0661931    0.0186040
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0937519   -0.1633714   -0.0241323
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0104364   -0.0492509    0.0701236
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0119474   -0.0294135    0.0055186
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0410247   -0.0687403   -0.0133091
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0088464   -0.0152647    0.0329575
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0594070   -0.1033119   -0.0155021
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0479776   -0.0944716   -0.0014837
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0162056   -0.0526251    0.0202140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0476525   -0.1314686    0.0361637
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0411758   -0.0672727   -0.0150789
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0014143   -0.0034308    0.0006022
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0177503   -0.0284600   -0.0070407
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0066888   -0.0117333    0.0251108
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0658415   -0.0790683   -0.0526147
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1029907   -0.1257388   -0.0802427
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0095601   -0.0368495    0.0177293
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0077442   -0.0161189    0.0006305
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0008644   -0.0059443    0.0042156


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1823856   -0.4804514    0.0556692
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1903289   -0.3841510   -0.0236477
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0407370   -0.2247626    0.2486826
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1885938   -0.4353803    0.0157624
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1557046   -0.2733766   -0.0489065
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0475502   -0.0233106    0.1135040
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0320934   -0.0719416    0.0062735
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1089798   -0.1715348   -0.0497650
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0220647   -0.0752057    0.0284498
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0204544   -0.1133953    0.0647284
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0528413   -0.1443077    0.0313141
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0771787   -0.0133481    0.1596184
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0401708   -0.4443813    0.2509213
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.3605263   -1.1152923    0.1249286
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0608751   -0.1072254   -0.0164651
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0058404   -0.0161665    0.0273706
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0654131   -0.1066474   -0.0257153
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0222451   -0.0330613    0.0745906
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1160655   -0.1562387   -0.0772881
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1749302   -0.2264353   -0.1255882
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1979509   -0.5938669    0.0996197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0159429   -0.0427800    0.0102035
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0003274   -0.0151949    0.0143224
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0354543   -0.3723992    0.3221008
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.2271231   -0.5026014   -0.0021494
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.2268834   -0.1509448    0.4806795
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0777027   -0.3394415    0.3649351
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0712116   -0.0658334    0.1906353
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0761919   -0.0045139    0.1504135
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1050260   -0.1526290   -0.0593889
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0620814   -0.0505319    0.1626228
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0696787   -0.1526854    0.0073505
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0319933   -0.1975193    0.1106531
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.3009595   -0.3391616    0.6351018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0618710   -0.1463279    0.0163634
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0098371   -0.0137699    0.0328944
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0328594   -0.0682517    0.0013603
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0357705   -0.0712284    0.1320819
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0300187   -0.0077154    0.0663398
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0253671   -0.0825174    0.0287661
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0475027   -0.0779761   -0.0178907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0079352   -0.0370102    0.0203247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2222222   -0.8619721    0.1977177
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1431649   -0.4755176    0.1143270
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1132195   -0.5456457    0.1982266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1711886   -0.5160436    0.0952221
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.3532267   -0.6478796   -0.1112598
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0336922   -0.1795445    0.2083802
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0361337   -0.0903341    0.0153724
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1340783   -0.2355252   -0.0409611
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0248689   -0.0453297    0.0903533
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.2021332   -0.3645633   -0.0590379
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2980430   -0.6163095   -0.0424461
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1232298   -0.4362839    0.1215907
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.2966846   -0.9397229    0.1331798
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0869432   -0.1444684   -0.0323094
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1405648   -0.3549399    0.0398924
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1888008   -0.3090547   -0.0795937
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0523734   -0.1030803    0.1859195
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.5198064   -0.6273544   -0.4193660
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3862497   -0.4786634   -0.2996116
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1238191   -0.5366825    0.1781195
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0472233   -0.0998070    0.0028463
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0033937   -0.0235261    0.0163427
