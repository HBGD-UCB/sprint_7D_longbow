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
![](/tmp/f11e87ef-2c9a-4d35-be83-80daf190f25a/68ee798d-82e4-4952-8fb9-0e5ae8ff37dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f11e87ef-2c9a-4d35-be83-80daf190f25a/68ee798d-82e4-4952-8fb9-0e5ae8ff37dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4208523   0.2828521   0.5588524
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5777070   0.4526136   0.7028004
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2450902   0.1108735   0.3793069
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6650870   0.5655346   0.7646395
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.6080691   0.4390632   0.7770751
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6435580   0.5798776   0.7072383
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8180547   0.7461810   0.8899284
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4106847   0.3544277   0.4669417
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3865570   0.3343091   0.4388048
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3183792   0.2809248   0.3558335
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5792075   0.4980978   0.6603173
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1498547   0.1282989   0.1714104
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3509671   0.3239196   0.3780146
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7330599   0.6864810   0.7796387
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3091750   0.2746065   0.3437434
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5892764   0.5603619   0.6181909
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6446910   0.5914832   0.6978987
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4818608   0.4709199   0.4928016
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.5497576   0.4961990   0.6033162
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2629696   0.1267690   0.3991702
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3178874   0.1898021   0.4459727
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4329133   0.3103707   0.5554560
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2422205   0.1019429   0.3824981
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4364141   0.3375467   0.5352815
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4297403   0.3901030   0.4693777
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3580864   0.2687745   0.4473982
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2298426   0.1836527   0.2760325
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2854098   0.2400407   0.3307789
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1644672   0.1326246   0.1963098
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2999646   0.2281398   0.3717895
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0894101   0.0741324   0.1046878
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2414141   0.2192126   0.2636157
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3460357   0.2893531   0.4027183
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1391308   0.1146825   0.1635792
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2035117   0.1819607   0.2250628
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2614154   0.1577160   0.3651148
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4065355   0.3964652   0.4166059
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3288544   0.2899490   0.3677598
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2605685   0.1090283   0.4121087
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5175423   0.3217830   0.7133015
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5256266   0.3780674   0.6731858
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4672408   0.2485074   0.6859743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4044725   0.3266739   0.4822712
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7238408   0.6169493   0.8307324
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2468196   0.1863038   0.3073353
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1640976   0.1150900   0.2131053
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2082991   0.1706989   0.2458993
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4950494   0.4022324   0.5878664
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0584517   0.0431569   0.0737465
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1956681   0.1603563   0.2309799
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7170409   0.6611779   0.7729039
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1988749   0.1637216   0.2340281
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5425179   0.5080621   0.5769737
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5898903   0.5280055   0.6517751
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1987577   0.1823170   0.2151985
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3400604   0.2605587   0.4195621


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5570470   0.4770190   0.6370750
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5646259   0.4842023   0.6450494
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3236165   1.0125987   1.7301628
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9773568   0.8256882   1.1568849
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.4571894   0.9294437   2.2845934
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.9442373   0.8309641   1.0729515
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9867299   0.7886973   1.2344862
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0734848   0.9800187   1.1758649
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0118531   0.9397949   1.0894364
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0574676   0.9491059   1.1782012
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2354519   1.1147746   1.3691929
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0887079   0.9830883   1.2056749
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1663190   1.0336180   1.3160569
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.1027808   0.9940517   1.2234027
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1194825   1.0398103   1.2052592
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0465721   0.9913779   1.1048392
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.2226847   1.1218253   1.3326119
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1708098   1.1274905   1.2157934
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9882973   0.9249928   1.0559343
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0202057   1.0040928   1.0365771
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0542777   0.9640398   1.1529622
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3016024   0.8451411   2.0045987
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9629902   0.6828664   1.3580257
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           0.9886505   0.7830973   1.2481588
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.5387933   0.9326867   2.5387782
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9187223   0.7733274   1.0914532
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9890074   0.9451758   1.0348717
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0875116   0.8777974   1.3473285
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0379775   0.8882384   1.2129595
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0585159   0.9424630   1.1888594
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1864504   0.9980093   1.4104724
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9263433   0.7523390   1.1405919
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0930696   0.9723348   1.2287960
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0603311   0.9717041   1.1570416
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9236268   0.8054070   1.0591991
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.1785239   1.0360093   1.3406431
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1704211   1.0768205   1.2721578
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3610721   0.9592623   1.9311895
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0057604   0.9895992   1.0221856
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0533696   0.9498956   1.1681152
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3798698   0.8528045   2.2326813
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.7811059   0.5744769   1.0620557
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.7861534   0.6260156   0.9872552
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9068745   0.6467786   1.2715656
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2422674   1.0374482   1.4875233
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0460886   0.9247492   1.1833494
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2145761   0.9931170   1.4854193
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.6017652   1.2481004   2.0556453
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0865736   0.9329667   1.2654710
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1359532   0.9673084   1.3340002
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.3032751   1.0943871   1.5520340
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2400759   1.0409993   1.4772231
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0623283   0.9969050   1.1320451
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.3391707   1.1591951   1.5470892
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1948568   1.1378910   1.2546745
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0142609   0.9337209   1.1017480
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0887491   1.0138959   1.1691286
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1070196   0.8918720   1.3740674


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1361947    0.0256425   0.2467469
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0130812   -0.1104490   0.0842866
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1120526    0.0010715   0.2230338
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0370870   -0.1217076   0.0475336
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0080691   -0.1443550   0.1282167
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0472917   -0.0118906   0.1064740
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0096965   -0.0507178   0.0701109
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0236010   -0.0208527   0.0680548
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0910156    0.0516598   0.1303714
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0282428   -0.0042311   0.0607166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0963332    0.0269464   0.1657201
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0154022   -0.0004866   0.0312909
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0419344    0.0160241   0.0678448
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0341401   -0.0055373   0.0738176
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0688485    0.0421293   0.0955678
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1006542    0.0788203   0.1224880
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0075446   -0.0502083   0.0351191
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0097363    0.0020647   0.0174079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0298396   -0.0193617   0.0790409
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0793123   -0.0326932   0.1913177
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0117650   -0.1208100   0.0972801
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0049133   -0.1058755   0.0960488
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1305068    0.0083789   0.2526346
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0354707   -0.1103112   0.0393697
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0047240   -0.0243159   0.0148680
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0313367   -0.0453380   0.1080114
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0087288   -0.0271367   0.0445943
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0167010   -0.0164875   0.0498896
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0306650    0.0021904   0.0591395
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0220944   -0.0844317   0.0402429
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0083214   -0.0022797   0.0189224
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0145648   -0.0065093   0.0356389
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0264279   -0.0738848   0.0210291
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0248382    0.0067154   0.0429610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0346827    0.0175690   0.0517964
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0943898    0.0028447   0.1859349
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0023418   -0.0042431   0.0089267
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0175508   -0.0165036   0.0516052
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0989821   -0.0264720   0.2244362
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1132869   -0.2725087   0.0459349
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1124035   -0.2299352   0.0051283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0435120   -0.2029272   0.1159031
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0979905    0.0237958   0.1721852
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0333608   -0.0557085   0.1224301
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0529616    0.0027129   0.1032103
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0987482    0.0564034   0.1410930
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0180332   -0.0136909   0.0497573
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0673035   -0.0119799   0.1465870
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0177269    0.0072179   0.0282360
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0469752    0.0127386   0.0812118
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0446920   -0.0007121   0.0900960
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0674525    0.0383749   0.0965302
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1057133    0.0796540   0.1317726
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0084124   -0.0403707   0.0571955
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0176396    0.0034449   0.0318343
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0363931   -0.0368445   0.1096307


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2444941    0.0124419    0.4220197
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0231678   -0.2111109    0.1356097
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.3137474   -0.0759124    0.5622854
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0590558   -0.2034214    0.0679914
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0134486   -0.2679136    0.1899464
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0684544   -0.0203887    0.1495621
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0117143   -0.0640619    0.0820942
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0543445   -0.0536232    0.1512485
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1905796    0.1029577    0.2696427
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0814800   -0.0172026    0.1705890
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1426017    0.0325246    0.2401544
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0932015   -0.0059839    0.1826077
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1067301    0.0382861    0.1703030
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0444997   -0.0086971    0.0948909
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1821276    0.1085956    0.2495940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1458903    0.1130746    0.1774918
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0118412   -0.0810895    0.0529714
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0198055    0.0040762    0.0352864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0514833   -0.0373015    0.1326688
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2317162   -0.1832344    0.5011470
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0384322   -0.4644154    0.2636369
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0114798   -0.2769805    0.1988199
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3501401   -0.0721714    0.6061097
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0884682   -0.2931134    0.0837903
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0111148   -0.0580043    0.0336966
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0804696   -0.1392150    0.2577905
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0365879   -0.1258239    0.1755702
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0552811   -0.0610496    0.1588576
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1571498   -0.0019947    0.2910177
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0795134   -0.3291880    0.1232622
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0851452   -0.0284523    0.1861953
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0568984   -0.0291198    0.1357268
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0826884   -0.2416082    0.0558904
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1514810    0.0347577    0.2540893
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1456067    0.0713401    0.2139340
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2652851   -0.0424677    0.4821844
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0057274   -0.0105102    0.0217041
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0506656   -0.0527473    0.1439200
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2752939   -0.1726017    0.5521080
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.2802361   -0.7407139    0.0584298
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.2720164   -0.5974043   -0.0129093
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1026884   -0.5461241    0.2135679
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1950203    0.0360964    0.3277416
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0440581   -0.0813743    0.1549411
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1766675   -0.0069307    0.3267894
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3756888    0.1987824    0.5135348
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0796758   -0.0718497    0.2097804
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1196820   -0.0337964    0.2503749
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.2327023    0.0862466    0.3556842
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1935977    0.0393846    0.3230542
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0586714   -0.0031046    0.1166430
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.2532692    0.1373325    0.3536249
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1630796    0.1211812    0.2029805
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0140604   -0.0709838    0.0923514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0815148    0.0137054    0.1446621
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0966736   -0.1212371    0.2722337
