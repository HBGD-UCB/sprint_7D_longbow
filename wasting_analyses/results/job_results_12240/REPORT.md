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

unadjusted

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
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      162     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      167     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       21     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       12     377
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        9     377
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        6     377
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      160     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      261     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       45     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       58     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       40     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       35     599
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7051   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2685   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6108   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2098   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     6817   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2167   26926
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1467    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      683    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       58    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       22    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       51    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       26    2307
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
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0      235     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1       94     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0       26     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        7     377
0-6 months    ki1000109-EE               PAKISTAN                       High                  0       13     377
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        2     377
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      294     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      127     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       71     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       32     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       57     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       18     599
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7837   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1865   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6805   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1377   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     7456   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1489   26829
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1787    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      229    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       64    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        8    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       64    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1        6    2158
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
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0      213     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1      111     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0       25     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1        8     372
6-24 months   ki1000109-EE               PAKISTAN                       High                  0       11     372
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        4     372
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      201     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      213     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       63     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       39     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       45     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       26     587
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     4739   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1057   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     4494   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      896   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     5215   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      879   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1599    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      545    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       65    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       15    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       55    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       22    2301


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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/53a310bb-1f95-4d25-ab98-29e0eda0127e/28867e28-cce6-42b2-b0e8-39606c7fa465/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53a310bb-1f95-4d25-ab98-29e0eda0127e/28867e28-cce6-42b2-b0e8-39606c7fa465/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53a310bb-1f95-4d25-ab98-29e0eda0127e/28867e28-cce6-42b2-b0e8-39606c7fa465/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53a310bb-1f95-4d25-ab98-29e0eda0127e/28867e28-cce6-42b2-b0e8-39606c7fa465/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3428571   0.2314001   0.4543142
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3230769   0.2091213   0.4370326
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2435897   0.1481057   0.3390738
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5657895   0.4541010   0.6774779
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4567901   0.3480632   0.5655170
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3809524   0.2607634   0.5011413
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2812500   0.1911105   0.3713895
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3289474   0.2230829   0.4348118
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2452830   0.1291908   0.3613753
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2162162   0.1497874   0.2826450
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2028986   0.1078563   0.2979408
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1578947   0.0844517   0.2313377
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6509434   0.5600782   0.7418086
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6513761   0.5617959   0.7409564
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5632911   0.4858512   0.6407311
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6598639   0.5831855   0.7365424
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6402878   0.5604081   0.7201674
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6693548   0.5864506   0.7522591
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.5075988   0.4535051   0.5616925
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3636364   0.1992922   0.5279805
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.4000000   0.1517525   0.6482475
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4721408   0.3963949   0.5478866
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3791749   0.3230808   0.4352689
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3509317   0.2921897   0.4096736
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4819277   0.4281149   0.5357405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5111111   0.3648851   0.6573371
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3414634   0.1961391   0.4867877
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.5350877   0.4702949   0.5998805
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.4770642   0.4107081   0.5434203
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4044944   0.3323362   0.4766526
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3878505   0.3225205   0.4531805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3745020   0.3145834   0.4344206
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2936170   0.2353483   0.3518857
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3264463   0.2673284   0.3855642
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3244275   0.2677019   0.3811531
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3425197   0.2841211   0.4009182
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2317073   0.1403664   0.3230482
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2370766   0.2167539   0.2573994
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2367150   0.2032763   0.2701537
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368   0.0654954   0.2239782
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818   0.0154251   0.1209386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1101695   0.0535765   0.1667625
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6199525   0.5735471   0.6663578
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5631068   0.4672384   0.6589752
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4666667   0.3536655   0.5796679
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2588525   0.1967465   0.3209584
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2603996   0.2029486   0.3178507
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2411123   0.1802186   0.3020060
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2392344   0.2237761   0.2546928
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2484021   0.2339667   0.2628375
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2265925   0.2171500   0.2360350
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2583732   0.2240968   0.2926496
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2771084   0.2340310   0.3201859
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2214286   0.1727767   0.2700804
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3977447   0.3760253   0.4194642
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3138710   0.2975336   0.3302084
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2484237   0.2183469   0.2785005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4495006   0.4170142   0.4819869
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3924180   0.3617793   0.4230568
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3775685   0.3497623   0.4053747
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0996169   0.0632610   0.1359728
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1098039   0.0714070   0.1482009
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0369128   0.0154923   0.0583332
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2757806   0.2656849   0.2858763
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2556666   0.2449889   0.2663443
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2412066   0.2310166   0.2513966
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3176744   0.2935304   0.3418184
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2750000   0.1681350   0.3818650
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3376623   0.2193912   0.4559335
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2285714   0.1299708   0.3271721
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2615385   0.1544494   0.3686275
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1794872   0.0941217   0.2648526
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3947368   0.2845939   0.5048797
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2839506   0.1855296   0.3823716
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2539683   0.1462385   0.3616980
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1354167   0.0668174   0.2040159
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2105263   0.1186654   0.3023872
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2075472   0.0981207   0.3169737
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0945946   0.0473699   0.1418193
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1159420   0.0402794   0.1916047
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434517   0.1670747
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5192308   0.4230760   0.6153855
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5420561   0.4475248   0.6365873
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5031847   0.4248687   0.5815007
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5306122   0.4498378   0.6113867
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5251799   0.4420629   0.6082968
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.5806452   0.4936863   0.6676040
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2562592   0.1962736   0.3162448
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1884921   0.1453936   0.2315905
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1925466   0.1614318   0.2236614
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3815789   0.3184739   0.4446840
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3594470   0.2955526   0.4233414
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3220339   0.2531424   0.3909254
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2663551   0.2070865   0.3256238
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2908367   0.2346130   0.3470603
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2170213   0.1642800   0.2697626
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2438017   0.1896685   0.2979348
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2557252   0.2028639   0.3085865
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2755906   0.2206058   0.3305753
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610   0.0333249   0.1617971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374   0.1225043   0.1555706
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378   0.1187176   0.1743580
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3016627   0.2577830   0.3455424
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3106796   0.2212340   0.4001253
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2400000   0.1432630   0.3367370
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2505740   0.1871663   0.3139816
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2531423   0.1949776   0.3113070
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2386484   0.1777317   0.2995650
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1744066   0.1606121   0.1882011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1816852   0.1687582   0.1946122
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1831512   0.1743983   0.1919040
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1980198   0.1632466   0.2327930
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2265861   0.1814667   0.2717055
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1674419   0.1175103   0.2173734
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2683571   0.2483945   0.2883197
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2470667   0.2315876   0.2625458
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2240000   0.1941592   0.2538408
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2222222   0.1950566   0.2493878
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2110656   0.1854606   0.2366705
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2662671   0.2409143   0.2916199
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1922284   0.1831911   0.2012657
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1682963   0.1594012   0.1771913
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1664617   0.1576201   0.1753034
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1135913   0.0966039   0.1305787
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1111111   0.0495438   0.1726785
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0857143   0.0134603   0.1579683
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1692308   0.0778431   0.2606185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1355932   0.0480109   0.2231756
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389379   0.1864142
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3055556   0.1988966   0.4122145
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2987013   0.1962248   0.4011778
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1724138   0.0749646   0.2698630
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1720430   0.0951621   0.2489239
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1733333   0.0874690   0.2591977
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0961538   0.0158445   0.1764632
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1627907   0.0989607   0.2266207
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1428571   0.0510299   0.2346844
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.0945946   0.0277868   0.1614024
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3396226   0.2493466   0.4298987
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.3119266   0.2248380   0.3990152
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1835443   0.1231022   0.2439864
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2993197   0.2251977   0.3734418
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3237410   0.2458609   0.4016211
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3064516   0.2252084   0.3876948
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3517915   0.3012162   0.4023669
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2959831   0.2459568   0.3460093
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2284768   0.1563701   0.3005835
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3468750   0.2946596   0.3990904
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4523810   0.3016662   0.6030957
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3250000   0.1796709   0.4703291
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4081633   0.3392917   0.4770348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2553191   0.1929316   0.3177067
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1974522   0.1351266   0.2597778
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2162162   0.1568475   0.2755850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1324201   0.0874927   0.1773475
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1421801   0.0950197   0.1893405
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1495726   0.1038446   0.1953007
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1480000   0.1039520   0.1920480
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0975610   0.0604566   0.1346654
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1944444   0.1030046   0.2858843
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1635088   0.1443022   0.1827153
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1478599   0.1171658   0.1785540
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5144928   0.4663084   0.5626771
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3823529   0.2879641   0.4767418
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3661972   0.2540409   0.4783535
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0113865   0.0076947   0.0150783
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0106993   0.0071353   0.0142632
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0054054   0.0028193   0.0079915
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1096375   0.0967614   0.1225136
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1155289   0.1033943   0.1276635
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0778995   0.0709724   0.0848266
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1300527   0.1024037   0.1577017
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1291990   0.0957669   0.1626310
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1198347   0.0788997   0.1607697
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1943207   0.1760197   0.2126217
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1050119   0.0939161   0.1161078
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0493333   0.0338330   0.0648337
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3494687   0.3173527   0.3815848
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2764317   0.2473369   0.3055266
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1916509   0.1678846   0.2154171
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0926641   0.0573288   0.1279994
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1075697   0.0692154   0.1459240
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0375427   0.0157637   0.0593217
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1823671   0.1720995   0.1926348
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1662338   0.1556997   0.1767679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1442402   0.1345402   0.1539403
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2541978   0.2323254   0.2760702
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1875000   0.0900403   0.2849597
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2857143   0.1733576   0.3980710


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2581148   0.2516506   0.2645791
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3168617   0.2936158   0.3401077
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
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1266654   0.1178579   0.1354730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0772105   0.0587369   0.0956840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638889   0.1577625   0.1700152
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2529335   0.2320005   0.2738666


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9423077   0.5832726   1.5223480
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7104701   0.4269554   1.1822495
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8073500   0.5926045   1.0999140
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.6733112   0.4640741   0.9768870
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.1695906   0.7426439   1.8419895
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.8721174   0.4924147   1.5446101
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.9384058   0.5359244   1.6431524
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.7302632   0.4181994   1.2751913
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0006648   0.8225957   1.2172810
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.8653458   0.7113802   1.0526345
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.9703330   0.8182338   1.1507055
0-24 months   ki1000108-IRC              INDIA                          High                 Low               1.0143831   0.8559409   1.2021543
0-24 months   ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Medium               Low               0.7163854   0.4502836   1.1397440
0-24 months   ki1000109-EE               PAKISTAN                       High                 Low               0.7880240   0.4198203   1.4791608
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8030970   0.7286090   0.8852003
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7432777   0.5993648   0.9217452
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0605556   0.7801103   1.4418193
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7085366   0.4563247   1.1001466
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8915626   0.7414147   1.0721178
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.7559403   0.6093281   0.9378293
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9655834   0.7654134   1.2181018
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7570367   0.5835400   0.9821169
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9938158   0.7726476   1.2782929
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0492375   0.8181885   1.3455326
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0231729   0.6835111   1.5316252
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.0216120   0.6720838   1.5529181
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.4710744   0.1825726   1.2154677
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.7611710   0.3592838   1.6126008
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.9083064   0.7541596   1.0939600
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7527458   0.5842195   0.9698861
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0059771   0.8946987   1.1310958
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.9314661   0.8053990   1.0772661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0383207   0.9518960   1.1325922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9471567   0.8770609   1.0228545
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0725123   0.8742743   1.3156999
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8570106   0.6630089   1.1077787
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7891266   0.7317849   0.8509615
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.6245807   0.5468995   0.7132957
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8730090   0.7848981   0.9710110
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.8399734   0.7576234   0.9312744
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1022624   0.6649257   1.8272455
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.3705472   0.1866918   0.7354649
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9270651   0.8783133   0.9785230
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8746322   0.8286112   0.9232092
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.8656662   0.5848958   1.2812161
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0629195   0.7415085   1.5236480
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.1442308   0.6312646   2.0740337
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7852564   0.4131922   1.4923508
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7193416   0.4609857   1.1224909
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.6433862   0.3872283   1.0689969
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.5546559   0.7966524   3.0338890
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               1.5326560   0.7377415   3.1840890
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2256728   0.5389357   2.7874825
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.1127819   0.5148490   2.4051395
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0439598   0.8094862   1.3463505
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.9690965   0.7608672   1.2343127
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               0.9897620   0.7946261   1.2328175
0-6 months    ki1000108-IRC              INDIA                          High                 Low               1.0942928   0.8838756   1.3548023
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7355524   0.6505281   0.8316894
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7513743   0.6080852   0.9284280
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.9419990   0.7389368   1.2008634
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.8439509   0.6439990   1.1059848
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0919130   0.8131561   1.4662303
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.8147816   0.5860551   1.1327760
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0489067   0.7744389   1.4206482
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.1303884   0.8386622   1.5235906
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.4251337   0.7299304   2.7824651
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.5020128   0.7569649   2.9803793
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0298907   0.7459401   1.4219303
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7955906   0.5183083   1.2212120
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0102498   0.8935385   1.1422055
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9524069   0.8188692   1.1077214
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0417335   0.9365980   1.1586706
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0501389   0.9574436   1.1518085
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.1442598   0.8774468   1.4922051
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8455814   0.5982200   1.1952258
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.9206639   0.8353398   1.0147033
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.8347087   0.7165892   0.9722984
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9497951   0.7995295   1.1283019
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1982021   1.0262083   1.3990222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.8755015   0.8170837   0.9380960
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8659579   0.8090032   0.9269223
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9781659   0.5570595   1.7176058
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.7545853   0.3204741   1.7767396
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8012327   0.3452365   1.8595188
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6658131   0.2850155   1.5553784
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.9775679   0.5992226   1.5947980
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.5642633   0.2903868   1.0964447
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.0075000   0.5170191   1.9632857
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5588942   0.2167427   1.4411686
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.8775510   0.4133080   1.8632491
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.5810811   0.2590688   1.3033420
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9184506   0.6246507   1.3504370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.5404360   0.3539573   0.8251591
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               1.0815893   0.7658165   1.5275662
6-24 months   ki1000108-IRC              INDIA                          High                 Low               1.0238270   0.7123201   1.4715599
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8413593   0.7328194   0.9659754
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6494665   0.4607075   0.9155630
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.3041613   0.9048125   1.8797671
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9369369   0.5845209   1.5018296
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.6255319   0.4648212   0.8418080
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.4837580   0.3382096   0.6919430
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.6124429   0.3958309   0.9475922
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.6575829   0.4275073   1.0114806
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9894857   0.6458172   1.5160357
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6522648   0.4004083   1.0625390
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8409023   0.5178910   1.3653772
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7604225   0.4547882   1.2714542
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.7431649   0.5707131   0.9677261
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7117635   0.5167058   0.9804561
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.9396480   0.6811285   1.2962875
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.4747220   0.2946868   0.7647475
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0537352   0.9001275   1.2335563
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7105188   0.6131964   0.8232875
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9934353   0.7107143   1.3886222
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9214318   0.6162042   1.3778493
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.5404052   0.4690815   0.6225737
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.2538758   0.1828814   0.3524304
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.7910056   0.6878556   0.9096240
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5484063   0.4699695   0.6399340
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1608566   0.6887373   1.9566068
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.4051479   0.2023567   0.8111658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9115335   0.8413101   0.9876184
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7909332   0.7247223   0.8631932
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.7376147   0.4369277   1.2452298
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1239843   0.7481240   1.6886781


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0423877   -0.1321994    0.0474241
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0930622   -0.1837698   -0.0023546
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0076389   -0.0610249    0.0763027
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0207034   -0.0672771    0.0258703
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0370024   -0.1145353    0.0405305
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0037664   -0.0652702    0.0577374
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0168826   -0.0361768    0.0024116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0570714   -0.0874379   -0.0267048
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0106358   -0.0349506    0.0136789
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0575236   -0.1091828   -0.0058644
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0364219   -0.0903759    0.0175321
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0046883   -0.0441715    0.0535481
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0050907   -0.0846912    0.0948726
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0383539   -0.1031171    0.0264094
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0289675   -0.0550285   -0.0029065
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0022540   -0.0210406    0.0165325
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0045912   -0.0183047    0.0091224
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0019436   -0.0267409    0.0228538
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0647536   -0.0821544   -0.0473529
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0458881   -0.0729912   -0.0187850
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0197643   -0.0484230    0.0088944
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0176658   -0.0255513   -0.0097802
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0008127   -0.0064784    0.0048530
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0079142   -0.0882139    0.0723856
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0811005   -0.1678514    0.0056505
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0423611   -0.0141806    0.0989028
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0079695   -0.0274042    0.0433432
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0002090   -0.0816516    0.0812336
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0132902   -0.0513313    0.0779117
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0363256   -0.0566777   -0.0159736
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0246658   -0.0744917    0.0251601
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0077837   -0.0569624    0.0413950
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0147735   -0.0303057    0.0598528
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0420031   -0.0215270    0.1055333
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0061702   -0.0297540    0.0174136
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0007959   -0.0199231    0.0183312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0065437   -0.0057629    0.0188504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0027414   -0.0224420    0.0279248
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0172018   -0.0332882   -0.0011153
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0133231   -0.0096747    0.0363209
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0158894   -0.0228088   -0.0089699
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0009870   -0.0042329    0.0022588
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0307692   -0.1025049    0.0409664
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0398551   -0.1241199    0.0444098
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0174976   -0.0741137    0.0391185
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0237946   -0.0661931    0.0186040
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0742071   -0.1485784    0.0001642
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0104364   -0.0492509    0.0701236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0458160   -0.0738002   -0.0178318
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0088464   -0.0152647    0.0329575
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1142631   -0.1670140   -0.0615122
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0552406   -0.1026657   -0.0078155
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0180658   -0.0548399    0.0187083
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0338278   -0.1233833    0.0557277
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0408982   -0.0669954   -0.0148010
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0013250   -0.0033273    0.0006773
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0156212   -0.0268551   -0.0043873
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0023399   -0.0222347    0.0175549
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0676553   -0.0815450   -0.0537655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0828258   -0.1088437   -0.0568079
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0154536   -0.0434611    0.0125538
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0184783   -0.0264945   -0.0104621
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0012643   -0.0066381    0.0041096


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1410714   -0.4827438    0.1218685
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1968623   -0.4076263   -0.0176561
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0264423   -0.2427496    0.2373246
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1058928   -0.3710204    0.1079645
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0602702   -0.1946355    0.0589824
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0057406   -0.1039927    0.0837674
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0344040   -0.0746437    0.0043289
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1374984   -0.2062302   -0.0726829
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0225674   -0.0755269    0.0277843
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1204521   -0.2345396   -0.0169078
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.1036395   -0.2684385    0.0397483
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0141582   -0.1450086    0.1511994
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0214979   -0.4415893    0.3358259
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.3605263   -1.1152923    0.1249286
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0490157   -0.0943092   -0.0055968
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0087843   -0.0845259    0.0616675
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0195665   -0.0797171    0.0372331
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0075793   -0.1090734    0.0846269
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1944606   -0.2479721   -0.1432436
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1136934   -0.1830072   -0.0484408
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2475096   -0.6584856    0.0616258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0684415   -0.0995177   -0.0382436
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0025648   -0.0205994    0.0151511
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0358663   -0.4718268    0.2709612
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.2585812   -0.5687942   -0.0097097
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.2382812   -0.1492168    0.4951210
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0777027   -0.3394415    0.3649351
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0004027   -0.1702941    0.1448255
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0244349   -0.1019432    0.1363191
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1651665   -0.2424621   -0.0926796
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0691086   -0.2182759    0.0617945
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0301028   -0.2389747    0.1435566
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0571344   -0.1343054    0.2162644
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.3009595   -0.3391616    0.6351018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0208811   -0.1038892    0.0558851
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0031865   -0.0826601    0.0704533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0361630   -0.0342978    0.1018237
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0136549   -0.1201042    0.1314410
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0684905   -0.1344766   -0.0063424
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0565628   -0.0462736    0.1492916
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0901069   -0.1300891   -0.0515393
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0087653   -0.0378953    0.0195472
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2222222   -0.8619721    0.1977177
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1500000   -0.5147812    0.1269366
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1132195   -0.5456457    0.1982266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1711886   -0.5160436    0.0952221
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.2795883   -0.5924690   -0.0281809
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0336922   -0.1795445    0.2083802
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1497375   -0.2474580   -0.0596720
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0248689   -0.0453297    0.0903533
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.3887819   -0.5816571   -0.2194269
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3431613   -0.6686301   -0.0811757
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1373753   -0.4534010    0.1099341
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.2106123   -0.9184570    0.2360620
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0863570   -0.1433762   -0.0321813
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1316924   -0.3462030    0.0486371
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1661541   -0.2916428   -0.0528572
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0183213   -0.1866263    0.1261121
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.5341256   -0.6439900   -0.4316033
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3106243   -0.4118301   -0.2166734
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2001495   -0.6202508    0.1110273
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1127487   -0.1627788   -0.0648712
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0049984   -0.0264533    0.0160081
