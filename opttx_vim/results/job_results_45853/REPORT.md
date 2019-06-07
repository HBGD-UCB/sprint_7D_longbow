---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
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

agecat        studyid                    country                        feducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       31     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       23     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       15     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       25     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       20     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       35     149
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       26     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       28     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       31     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       26     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       32      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       16      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       12      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       15      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       13      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       45     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1       75     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       28     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       41     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       20     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       41     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       15     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       28     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       18     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       19     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       11     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       19     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       20     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1      110     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       10     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       51     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       18     212
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      159    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1      230    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      166    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      488    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      148    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      339    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       88     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      121     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1      137     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      150     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       82     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      115     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1      123     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      131     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       99     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      192     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1      104     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      112     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1      130     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0       92     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1      128     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      303    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      146    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      811    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      459    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      443    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      221    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       64     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       83     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0       70     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      187     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       61     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1      136     601
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2355   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      352   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5219   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1199   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6044   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1145   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      674   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      326   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1273   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1038   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     6366   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     4016   13693
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       55    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      179    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      122    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      445    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      114    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      335    1250
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      404    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                   1      163    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      240    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1      232    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      256    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      152    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      466    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      565    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      160    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      668    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      267    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      754    2880
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0       90     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      161     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      107     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      184     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       98     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      173     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3989   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2516   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4998   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     5794   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4354   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     4590   26241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      172    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      215    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      937    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1300    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      185    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      269    3078
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       40     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       14     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       26     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       14     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       32     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       23     149
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       29     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       15     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       41     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1       18     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       32     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1       12     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       36      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        6      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       24      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1        4      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       21      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1        7      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       65     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1       55     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       41     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1       28     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       37     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1       24     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       24     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       19     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       28     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        9     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       17     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       13     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       81     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       49     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       36     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       25     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       10     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       11     212
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      255    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1      134    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      338    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1      315    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      285    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      200    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       71     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       39     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       88     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       58     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       95     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       65     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      188     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       44     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      166     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       72     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      179     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       51     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      226     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       70     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      167     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       75     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      136     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       84     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      378    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       71    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1002    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      268    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      538    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      126    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      114     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       33     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      173     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       84     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      147     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       50     601
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2492   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      215   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5701   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      717   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     6523   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      662   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      779   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      219   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1648   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      660   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     7746   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     2621   13673
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      134    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       60    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      304    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1      152    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      256    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1      114    1020
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      485    1421
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       74    1421
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0      361    1421
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1       97    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0      342    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1       62    1421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      863    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1      168    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      580    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1      248    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      751    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1      270    2880
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       54     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1       19     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       65     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1       39     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       53     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1       37     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     4466   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2013   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5940   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     4831   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5069   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     3860   26179
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0      237    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1      124    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1383    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      733    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      280    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      150    2907
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       26      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        9      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       13      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       11      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       18      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       12      89
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       17      94
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       11      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       23      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       13      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       16      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       14      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       29      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        4      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       16      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        8      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       15      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        6      78
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       33     121
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1       20     121
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       20     121
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       13     121
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       18     121
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       17     121
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       11      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        9      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       17      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       10      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0        6      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        6      59
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       18     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       61     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0        7     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       26     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        7     122
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      149     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       96     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      121     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      173     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      134     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      139     812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       49     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       63     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       72     243
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      135     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       38     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       88     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       51     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0       97     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       48     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      183     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       34     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      101     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       55     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0       89     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       44     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      238    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       75    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      640    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      191    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      356    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       95    1595
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       62     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       50     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0       68     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      103     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       56     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       86     425
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2292   14466
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      137   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5136   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      482   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     5936   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      483   14466
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      457    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      107    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0      907    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      378    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     4504    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1395    7748
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       33     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      119     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0       84     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      293     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0       81     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      221     831
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      388    1179
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       89    1179
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      231    1179
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      135    1179
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      246    1179
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       90    1179
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      368    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      397    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      124    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      420    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      214    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      484    2007
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0       86     707
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      142     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      105     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      145     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       93     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      136     707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     2583   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      503   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2751   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      963   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2618   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      730   10148
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      172    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       91    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      931    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      567    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      184    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      119    2064


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/db12e3b7-a47e-47b9-b339-30ae33526ceb/e9933b82-114a-4b92-9a88-56e8b742c8b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db12e3b7-a47e-47b9-b339-30ae33526ceb/e9933b82-114a-4b92-9a88-56e8b742c8b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3550590   0.2168764   0.4932416
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5265455   0.4013225   0.6517684
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2712059   0.1305051   0.4119067
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6425753   0.5312206   0.7539300
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5873215   0.4325464   0.7420967
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6435580   0.5798776   0.7072383
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8244015   0.7527536   0.8960493
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3925105   0.3367807   0.4482402
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3807057   0.3305516   0.4308598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3223696   0.2852582   0.3594811
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5906705   0.5084238   0.6729171
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1436289   0.1228645   0.1643933
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3541222   0.3262396   0.3820048
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7654668   0.7150879   0.8158458
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3114644   0.2765620   0.3463668
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5887457   0.5598609   0.6176305
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6449020   0.5905609   0.6992431
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4830893   0.4719701   0.4942084
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.5672960   0.5226481   0.6119438
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2973774   0.1657806   0.4289742
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3052384   0.1689521   0.4415248
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.5604577   0.4536969   0.6672186
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2437639   0.1026130   0.3849148
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4416610   0.3393136   0.5440083
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4297403   0.3901030   0.4693777
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3531750   0.2649502   0.4413998
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2385988   0.1921894   0.2850082
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2932644   0.2463956   0.3401333
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1661611   0.1338098   0.1985125
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2613644   0.1894978   0.3332310
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0967441   0.0822775   0.1112107
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2421272   0.2199265   0.2643278
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3192005   0.2597185   0.3786825
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1364853   0.1121070   0.1608635
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2036996   0.1819085   0.2254907
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2651880   0.1611114   0.3692646
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4038593   0.3940388   0.4136798
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3406547   0.3009167   0.3803927
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2521699   0.1036815   0.4006582
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5077226   0.3269457   0.6884996
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5010591   0.3508032   0.6513149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4649483   0.2896496   0.6402470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4044725   0.3266739   0.4822712
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7677922   0.6660982   0.8694862
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2452307   0.1836715   0.3067898
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1661627   0.1173001   0.2150253
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2274252   0.1893842   0.2654662
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4489995   0.3538997   0.5440993
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0594623   0.0442378   0.0746867
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2015589   0.1664434   0.2366744
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7301062   0.6781205   0.7820919
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1957089   0.1605999   0.2308179
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5405943   0.5060222   0.5751664
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6316067   0.5738009   0.6894125
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1972655   0.1808189   0.2137120
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3363062   0.2554790   0.4171333


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5570470   0.4770190   0.6370750
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5646258   0.4842023   0.6450494
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3571429   0.2617885   0.4524972
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6280000   0.5679657   0.6880343
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.6000000   0.5080312   0.6919688
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3466219   0.3275107   0.3657331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6755408   0.6380799   0.7130017
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1652568   0.1463320   0.1841817
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3929015   0.3847209   0.4010821
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7672000   0.7437624   0.7906376
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3780235   0.3530310   0.4030160
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6899306   0.6730355   0.7068256
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6371464   0.6040748   0.6702180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4915971   0.4836947   0.4994995
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5795971   0.5574204   0.6017738
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3422819   0.2658404   0.4187234
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3061224   0.2313639   0.3808810
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4280000   0.3665434   0.4894566
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3727273   0.2819539   0.4635007
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4009434   0.3348159   0.4670709
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1951322   0.1792173   0.2110471
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2778702   0.2420275   0.3137129
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0977315   0.0847284   0.1107345
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2559789   0.2486637   0.2632941
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3196078   0.2909760   0.3482397
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1639690   0.1447117   0.1832264
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2381944   0.2226342   0.2537546
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4088773   0.4013389   0.4164158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3464052   0.3252865   0.3675239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3595506   0.2592902   0.4598109
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4042553   0.3045164   0.5039942
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.4132231   0.3251210   0.5013252
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4237288   0.2965568   0.5509008
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2263323   0.2057897   0.2468748
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5623529   0.5151323   0.6095736
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0761786   0.0621943   0.0901630
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2426433   0.2330974   0.2521891
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7617329   0.7327499   0.7907158
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2663274   0.2410848   0.2915700
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6482312   0.6273346   0.6691278
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5983027   0.5621404   0.6344650
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2163973   0.2069603   0.2258344
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3764535   0.3511984   0.4017086


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.5688857   1.1337099   2.1711043
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0723211   0.8950456   1.2847085
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.3168698   0.8662677   2.0018594
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.9773173   0.8441319   1.1315165
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0215869   0.8204696   1.2720031
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0734848   0.9800187   1.1758649
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0040632   0.9328624   1.0806984
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1064309   0.9886860   1.2381984
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2544403   1.1341862   1.3874444
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0752313   0.9722605   1.1891077
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1436847   1.0141005   1.2898274
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.1505819   1.0300123   1.2852650
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1095081   1.0288689   1.1964675
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0022642   0.9465631   1.0612431
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.2136973   1.1135015   1.3229091
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1718651   1.1285686   1.2168227
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9879740   0.9239152   1.0564742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0176114   1.0015884   1.0338907
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0216839   0.9514864   1.0970603
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1510016   0.7969944   1.6622508
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0028962   0.6908484   1.4558923
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           0.7636615   0.6487164   0.8989735
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.5290504   0.9275591   2.5205888
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9078080   0.7613322   1.0824650
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9890074   0.9451758   1.0348717
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1026350   0.8897391   1.3664724
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9998854   0.8617258   1.1601960
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0301652   0.9168482   1.1574875
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1743551   0.9861085   1.3985377
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0631526   0.8372937   1.3499365
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0102058   0.9109791   1.1202406
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0572086   0.9691590   1.1532575
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0012761   0.8559240   1.1713117
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.2013680   1.0530659   1.3705552
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1693416   1.0747157   1.2722991
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3417096   0.9492175   1.8964933
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0124252   0.9957782   1.0293505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0168808   0.9166192   1.1281092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.4258267   0.8764214   2.3196397
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.7962129   0.5954059   1.0647442
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.8246994   0.6461930   1.0525171
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9113461   0.6698270   1.2399497
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2422674   1.0374482   1.4875233
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9862065   0.8808600   1.1041519
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2224458   0.9941196   1.5032133
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.5818584   1.2367973   2.0231901
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9951944   0.8642943   1.1459196
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2524579   1.0422214   1.5051031
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.2811256   1.0756379   1.5258693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2038332   1.0169756   1.4250237
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0433178   0.9844278   1.1057308
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.3608342   1.1750329   1.5760151
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1991084   1.1414156   1.2597174
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9472710   0.8783549   1.0215942
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0969854   1.0206225   1.1790617
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1193773   0.8961564   1.3981996


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2019880    0.0909292    0.3130468
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0380804   -0.0568431    0.1330038
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0859370   -0.0276627    0.1995366
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0145753   -0.1086963    0.0795456
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0126785   -0.1161591    0.1415160
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0472917   -0.0118906    0.1064740
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0033497   -0.0572821    0.0639815
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0417753   -0.0024675    0.0860180
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0968669    0.0586154    0.1351184
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0242523   -0.0082178    0.0567224
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0848703    0.0143399    0.1554007
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0216279    0.0051112    0.0381446
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0387793    0.0120648    0.0654938
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0017332   -0.0420338    0.0455001
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0665591    0.0396565    0.0934617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1011849    0.0794098    0.1229599
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0077556   -0.0509841    0.0354729
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0085079    0.0008448    0.0161709
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0123012   -0.0281119    0.0527143
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0449045   -0.0641898    0.1539987
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0008840   -0.1128858    0.1146539
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1324577   -0.2213859   -0.0435295
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1289634    0.0064451    0.2514817
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0407176   -0.1182069    0.0367717
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0047240   -0.0243159    0.0148680
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0362481   -0.0394866    0.1119828
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0000274   -0.0355077    0.0354530
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0088464   -0.0253328    0.0430256
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0289710   -0.0000941    0.0580361
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0165058   -0.0458824    0.0788941
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0009874   -0.0090446    0.0110193
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0138517   -0.0072047    0.0349082
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0004073   -0.0496562    0.0504709
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0274838    0.0092909    0.0456766
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0344948    0.0171699    0.0518197
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0906173   -0.0012605    0.1824951
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0050180   -0.0016819    0.0117180
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0057505   -0.0296367    0.0411378
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1073807   -0.0154473    0.2302087
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1034673   -0.2499237    0.0429891
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0878359   -0.2087769    0.0331050
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0412195   -0.1820338    0.0995948
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0979905    0.0237958    0.1721852
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0105906   -0.0973146    0.0761335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0545505    0.0033517    0.1057494
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0966832    0.0542852    0.1390811
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0010929   -0.0331651    0.0309792
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1133534    0.0315497    0.1951572
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0167164    0.0059368    0.0274960
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0410844    0.0070904    0.0750783
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0316266   -0.0107429    0.0739962
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0706185    0.0415073    0.0997296
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1076369    0.0814347    0.1338391
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0333040   -0.0808377    0.0142296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0191319    0.0048534    0.0334104
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0401473   -0.0343570    0.1146516


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3626050    0.1179402    0.5394049
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0674435   -0.1172616    0.2216133
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.2406235   -0.1543776    0.5004644
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0232091   -0.1846490    0.1162303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0211308   -0.2188142    0.2138384
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0684544   -0.0203887    0.1495621
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0040468   -0.0719694    0.0746724
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0961930   -0.0114435    0.1923750
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2028317    0.1183106    0.2792504
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0699676   -0.0285310    0.1590333
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1256331    0.0139044    0.2247025
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1308746    0.0291378    0.2219503
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0986997    0.0280589    0.1642063
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0022591   -0.0564536    0.0577088
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1760714    0.1019320    0.2440902
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1466595    0.1139218    0.1781876
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0121724   -0.0823504    0.0534554
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0173066    0.0015859    0.0327797
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0212236   -0.0509872    0.0884731
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1311914   -0.2547140    0.3984061
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0028878   -0.4474957    0.3131360
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.3094807   -0.5415055   -0.1123798
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3459993   -0.0780984    0.6032673
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1015545   -0.3134871    0.0761826
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0111148   -0.0580043    0.0336966
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0930816   -0.1239250    0.2681887
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0001147   -0.1604620    0.1380766
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0292819   -0.0906931    0.1360598
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1484688   -0.0140872    0.2849674
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0594012   -0.1943240    0.2592244
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0101027   -0.0977200    0.1073346
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0541128   -0.0318224    0.1328910
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0012745   -0.1683280    0.1462563
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1676156    0.0503918    0.2703687
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1448179    0.0695214    0.2140213
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2546822   -0.0534994    0.4727110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0122727   -0.0042397    0.0285136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0166006   -0.0909656    0.1135610
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2986525   -0.1410036    0.5688986
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.2559454   -0.6795265    0.0608073
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.2125630   -0.5475254    0.0498967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0972780   -0.4929229    0.1935157
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1950203    0.0360964    0.3277416
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0139864   -0.1352542    0.0943275
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1819678   -0.0059152    0.3347584
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3678322    0.1914601    0.5057311
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0048288   -0.1570133    0.1273385
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2015699    0.0405110    0.3355937
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.2194364    0.0703191    0.3446359
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1693201    0.0166923    0.2982573
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0415193   -0.0158185    0.0956207
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.2651566    0.1489600    0.3654883
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1660471    0.1238949    0.2061711
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0556642   -0.1384920    0.0211377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0884108    0.0202058    0.1518679
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1066461   -0.1158767    0.2847945
