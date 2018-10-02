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
![](/tmp/35f84c8b-5e0b-4d11-9c7c-59ca7d829cac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/35f84c8b-5e0b-4d11-9c7c-59ca7d829cac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/35f84c8b-5e0b-4d11-9c7c-59ca7d829cac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/35f84c8b-5e0b-4d11-9c7c-59ca7d829cac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3507037   0.2460230   0.4553844
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3186635   0.2112327   0.4260944
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2469233   0.1563591   0.3374875
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5625517   0.4577420   0.6673614
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4543338   0.3517989   0.5568687
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3819849   0.2711894   0.4927805
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2934461   0.2046808   0.3822113
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3613999   0.2596723   0.4631274
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2883494   0.1771212   0.3995776
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2306927   0.1683303   0.2930551
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2211192   0.1422800   0.2999585
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1572151   0.0937985   0.2206317
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.7079741   0.6293797   0.7865685
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7032241   0.6251815   0.7812667
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5942725   0.5235601   0.6649848
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6116088   0.5535033   0.6697143
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.5765944   0.5145372   0.6386517
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6296076   0.5660137   0.6932016
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.5063641   0.4523032   0.5604250
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3911044   0.2317190   0.5504899
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.4419493   0.1917306   0.6921679
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4603036   0.3949510   0.5256561
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3809765   0.3360790   0.4258739
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3584648   0.3192502   0.3976794
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4817013   0.4279264   0.5354762
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5093760   0.3627151   0.6560368
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3448643   0.1983460   0.4913825
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4850322   0.4326626   0.5374019
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.4349834   0.3806922   0.4892745
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3630701   0.3079054   0.4182348
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3689276   0.3249433   0.4129119
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3255652   0.2833428   0.3677876
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2785142   0.2385740   0.3184545
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3063763   0.2675607   0.3451919
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2818382   0.2422658   0.3214107
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3036092   0.2630144   0.3442040
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2452870   0.1643067   0.3262673
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2371005   0.2168411   0.2573599
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2414186   0.2084197   0.2744175
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368   0.0654954   0.2239782
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818   0.0154251   0.1209386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1101695   0.0535765   0.1667625
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6272563   0.5821285   0.6723842
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6488820   0.5746980   0.7230661
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6207699   0.5543327   0.6872072
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2550802   0.1999917   0.3101686
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2578451   0.1996567   0.3160335
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2432298   0.1847091   0.3017505
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2499709   0.2381839   0.2617578
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2495487   0.2388978   0.2601995
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2218588   0.2141819   0.2295357
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2498550   0.2234794   0.2762307
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2732583   0.2452487   0.3012678
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2653887   0.2356455   0.2951319
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3713969   0.3540286   0.3887652
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3212213   0.3070082   0.3354345
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3027059   0.2808834   0.3245285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4739602   0.4487134   0.4992069
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4077576   0.3842915   0.4312238
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3813484   0.3595027   0.4031940
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0957479   0.0607210   0.1307748
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1040857   0.0673252   0.1408462
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0340204   0.0135952   0.0544456
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2625603   0.2537034   0.2714172
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2554276   0.2458496   0.2650055
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2476976   0.2387752   0.2566199
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3205781   0.2966467   0.3445095
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2957451   0.2064335   0.3850568
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3417998   0.2408794   0.4427202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2310360   0.1360682   0.3260038
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2593864   0.1570351   0.3617377
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1807822   0.0976406   0.2639238
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3825788   0.2823165   0.4828411
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2838561   0.1938189   0.3738932
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2624311   0.1642611   0.3606011
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1378294   0.0702380   0.2054209
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2053974   0.1163550   0.2944398
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2064873   0.1035036   0.3094710
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0945946   0.0473699   0.1418193
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1159420   0.0402794   0.1916047
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434517   0.1670747
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.4680557   0.3946068   0.5415045
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5168963   0.4432756   0.5905171
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.4733916   0.4064319   0.5403512
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.4997275   0.4377349   0.5617200
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.4879692   0.4223604   0.5535781
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.5474659   0.4823952   0.6125366
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2430323   0.1952980   0.2907666
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1869880   0.1450080   0.2289681
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1759751   0.1451118   0.2068385
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3358410   0.2857389   0.3859431
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3111207   0.2603230   0.3619183
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2858965   0.2330587   0.3387343
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2747690   0.2374613   0.3120768
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2610433   0.2241333   0.2979533
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2341696   0.1988124   0.2695267
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2666391   0.2168448   0.3164335
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2528261   0.2041130   0.3015393
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2756146   0.2261582   0.3250711
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610   0.0333249   0.1617971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374   0.1225043   0.1555706
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378   0.1187176   0.1743580
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3143473   0.2716126   0.3570819
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4204370   0.3487131   0.4921609
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3593097   0.3015058   0.4171136
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2473137   0.1907356   0.3038918
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2502012   0.1913172   0.3090853
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2397971   0.1816303   0.2979638
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1869070   0.1779059   0.1959081
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1834594   0.1753584   0.1915605
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1761905   0.1694652   0.1829159
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1927184   0.1633168   0.2221200
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2171805   0.1830310   0.2513300
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1668152   0.1336883   0.1999421
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2436333   0.2297510   0.2575156
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2502234   0.2373041   0.2631428
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2589737   0.2386053   0.2793421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2421960   0.2230593   0.2613326
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2153783   0.1984129   0.2323436
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2546484   0.2367379   0.2725590
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1847018   0.1772314   0.1921722
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1716717   0.1640256   0.1793177
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1676465   0.1604951   0.1747979
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1135377   0.0965548   0.1305206
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1106992   0.0501365   0.1712619
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0871690   0.0156179   0.1587201
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1692308   0.0778431   0.2606185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1355932   0.0480109   0.2231756
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389379   0.1864142
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3040958   0.2063903   0.4018013
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2852759   0.1907980   0.3797537
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1763135   0.0842644   0.2683627
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1720430   0.0951621   0.2489239
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1733333   0.0874690   0.2591977
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0961538   0.0158445   0.1764632
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1627907   0.0989607   0.2266207
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1428571   0.0510299   0.2346844
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.0945946   0.0277868   0.1614024
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3441351   0.2631867   0.4250836
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.3222347   0.2436108   0.4008586
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1961643   0.1388495   0.2534790
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2992904   0.2256415   0.3729393
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3234067   0.2461231   0.4006903
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3065411   0.2259161   0.3871662
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.3425926   0.2908478   0.3943374
6-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.2424242   0.0960122   0.3888362
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.2666667   0.0425769   0.4907564
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3470002   0.3031589   0.3908415
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3032032   0.2617224   0.3446840
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2457901   0.1918658   0.2997144
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3468272   0.2946194   0.3990351
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4518822   0.3011463   0.6026181
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3258366   0.1801860   0.4714872
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3536811   0.2966012   0.4107610
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2108373   0.1595472   0.2621275
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1538821   0.1046566   0.2031076
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2083866   0.1495613   0.2672120
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1277943   0.0838748   0.1717139
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1524528   0.1068388   0.1980669
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1476697   0.1023142   0.1930252
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1466681   0.1030490   0.1902871
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0994625   0.0627968   0.1361281
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2079736   0.1243688   0.2915785
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1636175   0.1444541   0.1827810
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1499016   0.1196669   0.1801364
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5135766   0.4668497   0.5603035
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4182763   0.3442638   0.4922888
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4703402   0.4011193   0.5395612
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0114757   0.0077193   0.0152322
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0107175   0.0071722   0.0142629
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0053362   0.0028134   0.0078590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1117644   0.0997550   0.1237738
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1191213   0.1078757   0.1303669
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0781442   0.0716677   0.0846206
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1217711   0.0961690   0.1473731
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1233413   0.0927289   0.1539538
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0963761   0.0640157   0.1287365
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1925015   0.1752724   0.2097307
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1065411   0.0955342   0.1175479
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0509014   0.0376177   0.0641851
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3705969   0.3429705   0.3982232
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2946255   0.2695915   0.3196595
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2188729   0.1978348   0.2399110
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0858541   0.0521429   0.1195654
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0978382   0.0616012   0.1340751
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0334866   0.0129060   0.0540672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1717317   0.1619616   0.1815018
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1649566   0.1552107   0.1747024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1558597   0.1463384   0.1653809
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2555759   0.2337494   0.2774025
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1919265   0.1032037   0.2806494
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2960184   0.1850545   0.4069824


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9086405   0.5835189   1.4149112
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7040796   0.4418639   1.1219023
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8076303   0.6074833   1.0737195
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.6790219   0.4835343   0.9535429
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.2315718   0.8171933   1.8560713
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.9826317   0.6034066   1.6001897
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.9585012   0.6159062   1.4916630
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.6814914   0.4208457   1.1035649
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9932908   0.8489584   1.1621613
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.8393986   0.7133700   0.9876924
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.9427503   0.8289023   1.0722351
0-24 months   ki1000108-IRC              INDIA                          High                 Low               1.0294286   0.9100397   1.1644804
0-24 months   ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Medium               Low               0.7723779   0.5071292   1.1763623
0-24 months   ki1000109-EE               PAKISTAN                       High                 Low               0.8727895   0.4905665   1.5528201
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8276635   0.7666957   0.8934794
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7787574   0.6761916   0.8968805
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0574520   0.7765110   1.4400371
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7159297   0.4613302   1.1110380
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8968133   0.7633535   1.0536065
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.7485483   0.6236844   0.8984105
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8824636   0.7667437   1.0156484
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7549291   0.6487377   0.8785030
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9199087   0.7820224   1.0821070
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.9909682   0.8440847   1.1634116
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9666250   0.6873044   1.3594615
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9842291   0.6885323   1.4069156
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.4710744   0.1825726   1.2154677
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.7611710   0.3592838   1.6126008
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0344766   0.9038754   1.1839485
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9896590   0.8700223   1.1257471
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0108394   0.9759906   1.0469326
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.9535426   0.9029015   1.0070240
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9983111   0.9437476   1.0560293
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8875387   0.8449794   0.9322415
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0936672   0.9770838   1.2241611
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0621707   0.9397226   1.2005741
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.8649004   0.8175586   0.9149837
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.8150470   0.7524206   0.8828860
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8603204   0.8002935   0.9248497
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.8046000   0.7490352   0.8642867
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0870809   0.6538503   1.8073633
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.3553123   0.1759279   0.7176056
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9728340   0.9294221   1.0182737
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9433932   0.9035175   0.9850287
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9225369   0.6827109   1.2466101
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0661983   0.7887105   1.4413133
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.1227097   0.6400784   1.9692541
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7824847   0.4241995   1.4433831
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7419545   0.4985521   1.1041905
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.6859529   0.4416725   1.0653401
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.4902287   0.7785940   2.8522976
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               1.4981366   0.7451016   3.0122244
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2256728   0.5389357   2.7874825
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.1127819   0.5148490   2.4051395
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.1043480   0.8941330   1.3639856
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0114002   0.8194797   1.2482682
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               0.9764707   0.8339995   1.1432802
0-6 months    ki1000108-IRC              INDIA                          High                 Low               1.0955289   0.9470983   1.2672218
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7693959   0.6990698   0.8467967
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7240813   0.6502819   0.8062562
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.9263928   0.7493384   1.1452819
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.8512854   0.6770678   1.0703313
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9500464   0.8350804   1.0808399
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.8522416   0.7461870   0.9733695
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9481959   0.7282166   1.2346265
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0336616   0.8015744   1.3329471
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.4251337   0.7299304   2.7824651
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.5020128   0.7569649   2.9803793
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.3374920   1.0753013   1.6636126
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.1430343   0.9259400   1.4110280
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0116755   0.9745071   1.0502615
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9696068   0.9195581   1.0223794
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9815547   0.9343245   1.0311725
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9426641   0.9029181   0.9841598
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.1269318   0.9183630   1.3828684
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8655903   0.6841750   1.0951096
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.0270492   0.9676456   1.0900996
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0629649   0.9767319   1.1568113
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8892727   0.8158161   0.9693433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0514149   0.9682312   1.1417452
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9294530   0.8831948   0.9781341
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9076604   0.8652287   0.9521729
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9750000   0.5591287   1.7001900
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.7677540   0.3333088   1.7684689
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8012327   0.3452365   1.8595188
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6658131   0.2850155   1.5553784
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.9381118   0.6015851   1.4628916
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.5797959   0.3167169   1.0613999
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.0075000   0.5170191   1.9632857
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5588942   0.2167427   1.4411686
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.8775510   0.4133080   1.8632491
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.5810811   0.2590688   1.3033420
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9363609   0.6696465   1.3093054
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.5700210   0.3925956   0.8276301
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               1.0805783   0.7677227   1.5209260
6-24 months   ki1000108-IRC              INDIA                          High                 Low               1.0242263   0.7152070   1.4667635
6-24 months   ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Medium               Low               0.7076167   0.3796893   1.3187663
6-24 months   ki1000109-EE               PAKISTAN                       High                 Low               0.7783784   0.3314279   1.8280683
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8737840   0.7726380   0.9881709
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7083283   0.5534385   0.9065670
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.3029028   0.9036194   1.8786179
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9394782   0.5861542   1.5057799
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.5961227   0.4458410   0.7970605
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.4350871   0.3043624   0.6219586
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.6132559   0.3943297   0.9537268
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7315864   0.4871005   1.0987846
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9932171   0.6487168   1.5206640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6735471   0.4172673   1.0872304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.7867225   0.5175718   1.1958385
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7207723   0.4596960   1.1301223
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8144380   0.6676462   0.9935041
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9158132   0.7704924   1.0885425
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.9339302   0.6802750   1.2821662
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.4649984   0.2932457   0.7373459
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0658249   0.9245183   1.2287294
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6991866   0.6109965   0.8001059
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0128951   0.7326903   1.4002594
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.7914533   0.5327752   1.1757275
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.5534557   0.4827721   0.6344882
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.2644206   0.2006862   0.3483961
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.7950026   0.7105412   0.8895039
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5905956   0.5233880   0.6664334
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1395857   0.6643030   1.9549145
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.3900409   0.1881182   0.8087039
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9605480   0.8871171   1.0400571
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9075764   0.8352224   0.9861982
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.7509571   0.4715952   1.1958064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1582407   0.7860051   1.7067593


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0502342   -0.1331799    0.0327116
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0898245   -0.1730418   -0.0066071
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0045572   -0.0713217    0.0622073
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0351799   -0.0785675    0.0082077
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0940330   -0.1619756   -0.0260905
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0444887    0.0019469    0.0870305
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0156479   -0.0347731    0.0034773
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0452342   -0.0705635   -0.0199048
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0104094   -0.0348050    0.0139861
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0074681   -0.0492269    0.0342906
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0174991   -0.0469691    0.0119710
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0247583   -0.0043405    0.0538570
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0084890   -0.0881587    0.0711807
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0383539   -0.1031171    0.0264094
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0362714   -0.0626957   -0.0098471
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0015183   -0.0042275    0.0072640
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0153276   -0.0247892   -0.0058659
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0065746   -0.0076955    0.0208447
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0384058   -0.0515223   -0.0252893
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0703477   -0.0903057   -0.0503897
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0158953   -0.0434302    0.0116396
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0042787   -0.0110776    0.0025203
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0001053   -0.0048284    0.0046178
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0103788   -0.0870364    0.0662789
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0689425   -0.1447684    0.0068835
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0399483   -0.0154731    0.0953698
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0079695   -0.0274042    0.0433432
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0509661   -0.0125252    0.1144573
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0441750    0.0016038    0.0867461
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0230987   -0.0332395   -0.0129580
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0210722   -0.0176396    0.0597840
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0161976   -0.0371224    0.0047273
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0080639   -0.0487740    0.0326462
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0420031   -0.0215270    0.1055333
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0188548   -0.0428382    0.0051286
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0024643   -0.0035073    0.0084359
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0059567   -0.0122615    0.0003482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0080428   -0.0123876    0.0284732
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0075220   -0.0018017    0.0168457
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0066506   -0.0196797    0.0063785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0083628   -0.0136437   -0.0030818
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0009334   -0.0041739    0.0023071
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0307692   -0.1025049    0.0409664
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0383953   -0.1134187    0.0366281
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0174976   -0.0741137    0.0391185
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0237946   -0.0661931    0.0186040
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0787196   -0.1447951   -0.0126441
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0104657   -0.0486367    0.0695681
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0119474   -0.0294135    0.0055186
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0410247   -0.0687403   -0.0133091
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0088941   -0.0152343    0.0330226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0597809   -0.1030295   -0.0165323
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0474110   -0.0938243   -0.0009978
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0161628   -0.0525025    0.0201768
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0473570   -0.1292365    0.0345224
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0399821   -0.0661341   -0.0138300
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0014143   -0.0034308    0.0006022
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0177481   -0.0284559   -0.0070403
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0059418   -0.0125755    0.0244591
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0658361   -0.0790938   -0.0525784
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1039539   -0.1269545   -0.0809534
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0086437   -0.0353013    0.0180139
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0077412   -0.0161058    0.0006233
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0008800   -0.0059781    0.0042180


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1671856   -0.4801759    0.0796214
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1900133   -0.3829164   -0.0240183
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0157748   -0.2753666    0.1909789
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1799364   -0.4277327    0.0248525
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1531630   -0.2718392   -0.0455605
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0678081    0.0011938    0.1299797
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0318879   -0.0717446    0.0064865
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1089798   -0.1715348   -0.0497650
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0220870   -0.0752333    0.0284324
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0156380   -0.1071942    0.0683472
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0497941   -0.1377380    0.0313520
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0747680   -0.0157827    0.1572466
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0358491   -0.4334825    0.2514849
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.3605263   -1.1152923    0.1249286
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0613744   -0.1076728   -0.0170113
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0059168   -0.0161976    0.0275500
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0653228   -0.1064711   -0.0257048
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0256391   -0.0314508    0.0795690
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1153358   -0.1558820   -0.0762119
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1742952   -0.2261109   -0.1246691
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1990580   -0.5954046    0.0988242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0165659   -0.0432833    0.0094673
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0003285   -0.0151749    0.0143007
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0470357   -0.4592493    0.2487345
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.2198165   -0.4889070    0.0006412
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.2247094   -0.1513830    0.4779534
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0777027   -0.3394415    0.3649351
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0981964   -0.0311142    0.2112904
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0812186   -0.0002716    0.1560699
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1050260   -0.1526290   -0.0593889
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0590402   -0.0551411    0.1608654
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0626425   -0.1477571    0.0161602
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0311860   -0.2015929    0.1150542
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.3009595   -0.3391616    0.6351018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0638080   -0.1489787    0.0150491
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0098661   -0.0137715    0.0329525
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0329188   -0.0683751    0.0013608
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0400613   -0.0666593    0.1361044
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0299496   -0.0077680    0.0662555
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0282350   -0.0852453    0.0257805
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0474244   -0.0779418   -0.0177710
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0082894   -0.0373766    0.0199822
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2222222   -0.8619721    0.1977177
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1445060   -0.4658880    0.1064161
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1132195   -0.5456457    0.1982266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1711886   -0.5160436    0.0952221
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.2965900   -0.5753646   -0.0671469
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0337869   -0.1771490    0.2069246
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0361337   -0.0903341    0.0153724
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1340783   -0.2355252   -0.0409611
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0250031   -0.0452460    0.0905309
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.2034055   -0.3634192   -0.0621714
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2945231   -0.6122198   -0.0394303
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1229048   -0.4352079    0.1214407
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.2948451   -0.9203522    0.1269185
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0844226   -0.1420436   -0.0297088
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1405649   -0.3549398    0.0398922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1887769   -0.3090098   -0.0795873
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0465246   -0.1097473    0.1807907
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.5197634   -0.6275898   -0.4190804
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3898620   -0.4834035   -0.3022190
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1119496   -0.5150953    0.1839247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0472054   -0.0997244    0.0028055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0034553   -0.0236599    0.0163505
