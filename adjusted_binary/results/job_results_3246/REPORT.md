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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
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
* delta_meducyrs
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

agecat        studyid                    country                        feducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       15     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       25     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       20     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       35     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       31     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       23     149
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       28     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       31     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       26     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       26     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       16      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       12      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       15      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       13      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       32      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1       10      98
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       28     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       41     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       20     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       41     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       45     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1       75     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       18     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       19     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       11     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       19     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       15     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       28     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       10     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       51     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       18     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       20     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1      110     212
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      166    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      488    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      148    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      339    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      159    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1      230    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      121     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1      137     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       88     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      115     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1      123     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      131     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       99     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      150     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       82     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      112     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1      130     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0       92     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1      128     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      192     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1      104     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      811    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      459    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      443    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      221    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      303    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      146    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      140    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      374    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      122    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1      272    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0      128    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1      166    1202
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5219   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1199   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6044   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1145   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2355   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      352   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1273   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1038   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     6366   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     4016   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      674   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      326   13693
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      122    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      445    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      114    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      335    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       55    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      179    1250
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      240    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1      232    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      256    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      152    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      404    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                   1      163    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      160    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      668    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      267    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      754    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      466    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      565    2880
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      107     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      184     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       98     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      173     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0       90     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      161     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     9985   52427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1    11581   52427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     8699   52427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     9176   52427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     7959   52427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     5027   52427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1812    5986
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     2542    5986
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      353    5986
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      531    5986
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      330    5986
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      418    5986
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       26     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       14     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       32     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       23     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       40     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       14     149
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       41     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1       18     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       32     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1       12     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       29     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       15     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       24      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1        4      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       21      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1        7      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       36      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        6      98
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       41     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1       28     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       37     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1       24     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       65     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1       55     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       28     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        9     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       17     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       13     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       24     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       19     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       36     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       25     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       10     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       11     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       81     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       49     212
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      338    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1      315    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      285    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      200    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      255    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1      134    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       88     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       58     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       95     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       65     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       71     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       39     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      166     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       72     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      179     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      188     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       44     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      167     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       75     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      136     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       84     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      226     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       70     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1002    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      268    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      538    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      126    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      378    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       71    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      346    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1      168    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      294    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1      100    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      228    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       66    1202
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5701   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      717   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     6523   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      662   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2492   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      215   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1648   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      660   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     7746   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     2621   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      779   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      219   13673
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      304    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1      152    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      256    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1      114    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      134    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       60    1020
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0      361    1421
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1       97    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0      342    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1       62    1421
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      485    1421
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       74    1421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      580    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1      248    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      751    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1      270    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      863    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1      168    2880
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       65     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1       39     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       53     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1       37     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       54     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1       19     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0    11880   52358
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     9662   52358
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0    10138   52358
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     7720   52358
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     8932   52358
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     4026   52358
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     2766    5814
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1466    5814
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      560    5814
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      300    5814
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0      474    5814
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1      248    5814
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       13      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       11      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       18      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       12      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       26      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        9      89
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       23      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       13      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       16      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       14      94
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       17      94
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       11      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       16      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        8      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       15      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        6      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       29      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        4      78
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       20     121
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       13     121
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       18     121
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       17     121
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       33     121
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1       20     121
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       17      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       10      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0        6      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        6      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       11      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        9      59
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0        7     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       26     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        7     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       18     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       61     122
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      121     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      173     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      134     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      139     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      149     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       96     812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       63     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       72     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       49     243
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       88     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       51     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0       97     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       48     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      135     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       38     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      101     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       55     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0       89     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       44     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      183     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       34     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      640    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      191    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      356    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       95    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      238    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       75    1595
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      136     850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      206     850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      112     850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1      172     850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0      124     850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1      100     850
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5136   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      482   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     5936   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      483   14466
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2292   14466
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      137   14466
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0      907    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      378    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     4504    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1395    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      457    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      107    7748
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0       84     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      293     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0       81     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      221     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       33     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      119     831
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      231    1179
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      135    1179
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      246    1179
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       90    1179
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      388    1179
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       89    1179
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      124    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      420    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      214    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      484    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      368    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      397    2007
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      105     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      145     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       93     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      136     707
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0       86     707
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      142     707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5491   20241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     1919   20241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5227   20241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     1456   20241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     5147   20241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     1001   20241
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1800    3958
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1076    3958
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      351    3958
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      231    3958
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      330    3958
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      170    3958


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d0a24787-8f72-44ac-9c9c-6f061fe8a9be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0a24787-8f72-44ac-9c9c-6f061fe8a9be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0a24787-8f72-44ac-9c9c-6f061fe8a9be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0a24787-8f72-44ac-9c9c-6f061fe8a9be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.5900265   0.4532897   0.7267633
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6347894   0.5146696   0.7549091
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4528694   0.3325735   0.5731653
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5312276   0.4081102   0.6543451
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5800500   0.4376703   0.7224296
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5938830   0.4521705   0.7355955
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4398330   0.2633406   0.6163254
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.4530499   0.2792314   0.6268684
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2404054   0.1141554   0.3666555
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.5943724   0.4870142   0.7017307
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6637678   0.5532614   0.7742741
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.6261785   0.5457937   0.7065633
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5154458   0.3585242   0.6723674
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.6355066   0.4675542   0.8034590
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.6521968   0.5111215   0.7932722
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7153133   0.6514955   0.7791310
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6920569   0.6520376   0.7320761
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.6345513   0.5781164   0.6909863
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8182446   0.7574214   0.8790679
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.8556234   0.8013693   0.9098775
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7981825   0.7252935   0.8710716
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4638017   0.4169020   0.5107015
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4015279   0.3541525   0.4489032
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3651797   0.3208660   0.4094934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.4842353   0.4419195   0.5265511
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.4961939   0.4538498   0.5385381
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3740082   0.3349453   0.4130712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3517401   0.3270672   0.3764130
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3412400   0.3095209   0.3729592
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3292219   0.2953028   0.3631410
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7535672   0.7062322   0.8009022
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6949820   0.6373611   0.7526028
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5824559   0.5160468   0.6488651
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1774837   0.1552837   0.1996837
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1608332   0.1409409   0.1807256
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1414858   0.1228090   0.1601625
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4337355   0.4162630   0.4512079
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3914649   0.3825142   0.4004156
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3509692   0.3299724   0.3719661
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7599786   0.7307274   0.7892297
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7497975   0.7184427   0.7811524
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7247061   0.6895557   0.7598565
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4087711   0.3748169   0.4427253
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3487151   0.3140474   0.3833827
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2977428   0.2677709   0.3277147
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7760328   0.7527411   0.7993246
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7293880   0.7059493   0.7528268
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5843210   0.5589945   0.6096475
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6296658   0.5773530   0.6819785
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6535368   0.6003138   0.7067597
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6462711   0.5907812   0.7017609
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5077107   0.4981534   0.5172680
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4906260   0.4804170   0.5008350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4868519   0.4757037   0.4980002
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5850496   0.5599046   0.6101947
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5871484   0.5454096   0.6288871
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5480310   0.5020236   0.5940384
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3266835   0.1877749   0.4655921
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4228705   0.3030453   0.5426957
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2725932   0.1639918   0.3811946
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3049295   0.1937330   0.4161259
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2605499   0.1355573   0.3855426
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3440280   0.2103669   0.4776892
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.3655266   0.2665341   0.4645191
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.3570550   0.2419116   0.4721983
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4366449   0.3546894   0.5186005
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2432432   0.1043667   0.3821198
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4333333   0.2551999   0.6114668
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4418605   0.2927490   0.5909719
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3908611   0.2803662   0.5013560
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5402954   0.3510099   0.7295809
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3826354   0.3025150   0.4627558
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4409024   0.4050651   0.4767397
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3981171   0.3619377   0.4342965
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3928545   0.3411756   0.4445334
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3695676   0.2960826   0.4430526
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3960110   0.3258503   0.4661718
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3287835   0.2480208   0.4095463
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2459682   0.2052042   0.2867322
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2028391   0.1620732   0.2436049
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1817741   0.1455508   0.2179975
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2779680   0.2411309   0.3148051
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2811915   0.2442376   0.3181454
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2473444   0.2130662   0.2816227
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2014664   0.1809037   0.2220291
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1943452   0.1684616   0.2202289
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1589576   0.1325940   0.1853212
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3439618   0.2921029   0.3958207
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2532947   0.1998596   0.3067299
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2275375   0.1706917   0.2843832
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1054199   0.0891323   0.1217076
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0959716   0.0819886   0.1099547
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0937281   0.0799776   0.1074786
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2640849   0.2498330   0.2783368
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2563917   0.2485187   0.2642648
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2345349   0.2177089   0.2513609
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3085012   0.2761627   0.3408397
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3370714   0.3023838   0.3717589
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3013264   0.2666781   0.3359746
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1673757   0.1432026   0.1915487
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1445195   0.1214365   0.1676024
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1359043   0.1157708   0.1560378
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2556568   0.2334201   0.2778935
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2546116   0.2330946   0.2761287
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1975455   0.1789358   0.2161551
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3669960   0.2762236   0.4577685
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4154484   0.3155600   0.5153369
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2600281   0.1618218   0.3582343
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4164098   0.4074086   0.4254110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4093167   0.3998335   0.4187999
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4037331   0.3936658   0.4138004
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3481315   0.3249921   0.3712709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3343048   0.2970571   0.3715525
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3409774   0.3019070   0.3800478
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4583333   0.2578617   0.6588050
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4000000   0.2237023   0.5762977
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2571429   0.1115274   0.4027584
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3782943   0.2233720   0.5332165
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4607698   0.2848432   0.6366963
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3772794   0.1948787   0.5596802
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4392550   0.2864977   0.5920122
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.5480815   0.3973356   0.6988274
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3936508   0.2667775   0.5205242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3703704   0.1866578   0.5540830
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5000000   0.2146752   0.7853248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4500000   0.2300962   0.6699038
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5587658   0.4834485   0.6340830
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4933241   0.4398083   0.5468399
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3802902   0.3112629   0.4493175
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7540457   0.6629093   0.8451820
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7873926   0.7041440   0.8706413
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7190160   0.6138043   0.8242277
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3951076   0.3270366   0.4631786
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3441447   0.2795853   0.4087040
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2719414   0.2179999   0.3258828
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3117011   0.2434665   0.3799357
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2834738   0.2109154   0.3560323
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1453341   0.0989954   0.1916729
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2313976   0.2040116   0.2587836
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2260259   0.1914697   0.2605821
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2655574   0.2262924   0.3048224
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6557840   0.5951376   0.7164305
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6127342   0.5445093   0.6809591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4573301   0.3843810   0.5302791
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0821852   0.0673340   0.0970364
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0729749   0.0586082   0.0873417
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0550084   0.0409775   0.0690393
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.3104587   0.2878929   0.3330245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2389750   0.2283887   0.2495613
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2085901   0.1830160   0.2341643
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7737909   0.7346570   0.8129249
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7536256   0.7095827   0.7976684
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7973178   0.7454116   0.8492240
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3204137   0.2815784   0.3592490
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2559909   0.2186517   0.2933301
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2012937   0.1702291   0.2323583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7533401   0.7234554   0.7832248
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6935282   0.6641081   0.7229482
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5521011   0.5223368   0.5818654
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5777385   0.5244957   0.6309814
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6059061   0.5515094   0.6603029
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6261925   0.5728006   0.6795844
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2446550   0.2309708   0.2583393
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2177856   0.2040436   0.2315276
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2014590   0.1871641   0.2157540
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3713879   0.3428247   0.3999511
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3789982   0.3245037   0.4334927
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3124943   0.2431383   0.3818503


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5570470   0.4770190   0.6370750
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5646258   0.4842023   0.6450494
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3571429   0.2617885   0.4524972
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6280000   0.5679657   0.6880343
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6000000   0.5080312   0.6919688
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466219   0.3275107   0.3657331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6755408   0.6380799   0.7130017
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1652568   0.1463320   0.1841817
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3929015   0.3847209   0.4010821
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7672000   0.7437624   0.7906376
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3780235   0.3530310   0.4030160
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6899306   0.6730355   0.7068256
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6371464   0.6040748   0.6702180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4918077   0.4839022   0.4997131
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5831941   0.5609849   0.6054033
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3422819   0.2658404   0.4187234
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3061224   0.2313639   0.3808810
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4280000   0.3665434   0.4894566
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3727273   0.2819539   0.4635007
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4009434   0.3348159   0.4670709
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1951322   0.1792173   0.2110471
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2778702   0.2420275   0.3137129
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0977315   0.0847284   0.1107345
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2559789   0.2486637   0.2632941
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3196078   0.2909760   0.3482397
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1639690   0.1447117   0.1832264
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2381944   0.2226342   0.2537546
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4088773   0.4013389   0.4164158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3464052   0.3252865   0.3675239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3595506   0.2592902   0.4598109
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4042553   0.3045164   0.5039942
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4132231   0.3251210   0.5013252
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4237288   0.2965568   0.5509008
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2263323   0.2057897   0.2468748
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5623529   0.5151323   0.6095736
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0761786   0.0621943   0.0901630
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2426433   0.2330974   0.2521891
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7617329   0.7327499   0.7907158
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2663274   0.2410848   0.2915700
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6482312   0.6273346   0.6691278
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983027   0.5621404   0.6344650
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2161949   0.2067650   0.2256247
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3731683   0.3477986   0.3985379


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.0758658   0.8041738   1.4393497
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7675407   0.5475644   1.0758895
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               1.0919047   0.7833248   1.5220454
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.1179445   0.8067391   1.5491994
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.0300500   0.5965165   1.7786648
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5465835   0.2824723   1.0576384
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               1.1167540   0.8785898   1.4194788
0-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               1.0535120   0.8514202   1.3035720
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2329261   0.8238085   1.8452185
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.2653063   0.8709637   1.8381937
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9674878   0.8905701   1.0510489
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8870957   0.7887740   0.9976734
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0456816   0.9490739   1.1521231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9754815   0.8680341   1.0962291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8657316   0.7541946   0.9937638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7873616   0.6853365   0.9045750
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0246958   0.9225251   1.1381821
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.7723688   0.6866793   0.8687513
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9701483   0.8654718   1.0874851
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9359806   0.8281224   1.0578867
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.9222562   0.8315149   1.0228998
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7729317   0.6787622   0.8801659
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.9061858   0.8086757   1.0154537
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.7971761   0.6886497   0.9228054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9025430   0.8638501   0.9429691
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8091781   0.7540805   0.8683015
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9866035   0.9356429   1.0403398
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9535876   0.8994817   1.0109480
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.8530815   0.7586045   0.9593246
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.7283851   0.6469561   0.8200631
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9398932   0.9004007   0.9811179
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7529591   0.7152071   0.7927039
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0379106   0.9273165   1.1616943
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               1.0263716   0.9140643   1.1524776
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9663495   0.9462950   0.9868291
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9589160   0.9361076   0.9822802
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0035873   0.9287367   1.0844704
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9367257   0.8573571   1.0234418
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.2944347   0.7846871   2.1353240
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.8344260   0.4738237   1.4694637
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8544597   0.4700703   1.5531750
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               1.1282218   0.6712211   1.8963711
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               0.9768235   0.6516843   1.4641815
0-6 months    ki0047075b-MAL-ED          PERU                           High                 Low               1.1945640   0.8758642   1.6292288
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.7814815   0.8815409   3.6001464
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.8165375   0.9358691   3.5259294
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3823208   0.8907886   2.1450777
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9789550   0.6993632   1.3703222
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9029596   0.8062793   1.0112328
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8910237   0.7671205   1.0349393
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0715524   0.8249440   1.3918817
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.8896439   0.6515987   1.2146528
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8246555   0.6538141   1.0401378
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7390147   0.5896641   0.9261929
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0115967   0.8752332   1.1692059
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8898307   0.7652028   1.0347566
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9646533   0.8199635   1.1348750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7890029   0.6526661   0.9538194
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.7364036   0.5689904   0.9530747
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6615195   0.4947615   0.8844827
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.9103745   0.7963983   1.0406624
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.8890930   0.7379187   1.0712376
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9708687   0.9176828   1.0271370
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8881043   0.8150858   0.9676640
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0926095   0.9630489   1.2396002
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9767429   0.8534326   1.1178699
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.8634437   0.7295812   1.0218670
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.8119717   0.6945691   0.9492189
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9959120   0.8927279   1.1110225
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7726979   0.6884848   0.8672116
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1320243   0.8022284   1.5973992
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.7085310   0.4513053   1.1123647
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9829662   0.9620696   1.0043167
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9695572   0.9449204   0.9948364
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9602832   0.8570373   1.0759670
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9794502   0.8692340   1.1036413
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8727273   0.4690371   1.6238648
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5610390   0.2743094   1.1474804
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               1.2180194   0.7003128   2.1184409
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9973173   0.5309389   1.8733641
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               1.2477525   0.8006624   1.9444978
6-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.8961784   0.5567543   1.4425318
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.3500000   0.6338195   2.8754244
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.2150000   0.6055836   2.4376900
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8828818   0.7517142   1.0369370
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6805896   0.5347796   0.8661553
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0442240   0.8901669   1.2249431
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9535443   0.7895763   1.1515628
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8710150   0.6812462   1.1136461
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.6882716   0.5341906   0.8867956
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9094411   0.6503377   1.2717748
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4662612   0.3166256   0.6866137
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9767859   0.8057558   1.1841189
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.1476239   0.9504868   1.3856486
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.9343536   0.8098196   1.0780385
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6973791   0.5801970   0.8382284
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8879328   0.7609984   1.0360400
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6693228   0.5304272   0.8445891
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7697481   0.7073970   0.8375949
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6718773   0.5827990   0.7745709
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9739395   0.9034458   1.0499337
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0304047   0.9503899   1.1171561
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7989388   0.6649178   0.9599731
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.6282306   0.5186189   0.7610090
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9206043   0.8693851   0.9748411
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7328710   0.6861274   0.7827991
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0487550   0.9271349   1.1863290
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               1.0838684   0.9603724   1.2232449
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.8901741   0.8248774   0.9606398
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8234411   0.7546763   0.8984716
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0204916   0.8702868   1.1966206
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8414230   0.6663535   1.0624880


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0329795   -0.1472291    0.0812701
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0333982   -0.0599234    0.1267198
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0826901   -0.2285173    0.0631371
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0336276   -0.0543235    0.1215787
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0845542   -0.0419814    0.2110898
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0244636   -0.0603745    0.0114473
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0095065   -0.0387202    0.0577333
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0295160   -0.0630111    0.0039790
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0066628   -0.0366588    0.0233332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0051182   -0.0214189    0.0111825
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0780264   -0.1163658   -0.0396870
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0122269   -0.0236978   -0.0007559
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0408340   -0.0566044   -0.0250635
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0072214   -0.0138677    0.0283106
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0307476   -0.0553628   -0.0061325
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0861023   -0.1072745   -0.0649301
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0074806   -0.0329404    0.0479016
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0159030   -0.0217163   -0.0100897
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0018555   -0.0122259    0.0085149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0155984   -0.1003417    0.1315384
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0011930   -0.0839789    0.0863649
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0624734   -0.0194314    0.1443783
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1294840    0.0088531    0.2501150
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0100823   -0.0804571    0.1006217
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0158861   -0.0457450    0.0139729
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0198555   -0.0380881    0.0777990
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0073968   -0.0353840    0.0205904
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0241428    0.0003488    0.0479369
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0063342   -0.0194231    0.0067546
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0660916   -0.1043809   -0.0278024
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0076885   -0.0158581    0.0004811
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0081059   -0.0205940    0.0043821
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0111066   -0.0100269    0.0322402
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0034066   -0.0177924    0.0109791
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0174623   -0.0344068   -0.0005178
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0111908   -0.0814770    0.0590953
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0075324   -0.0125028   -0.0025620
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0017262   -0.0106982    0.0072457
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0987828   -0.2677979    0.0702323
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0259610   -0.0964800    0.1484021
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0260318   -0.1576211    0.1055574
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0533584   -0.0846014    0.1913183
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0563027   -0.1137916    0.0011862
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0031560   -0.0703914    0.0767034
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0953264   -0.1487667   -0.0418862
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0488553   -0.1033711    0.0056606
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0050653   -0.0237951    0.0136645
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0934311   -0.1421333   -0.0447289
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0060066   -0.0134084    0.0013952
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0678154   -0.0886566   -0.0469743
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0120581   -0.0407635    0.0166473
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0540863   -0.0839928   -0.0241798
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1051089   -0.1324170   -0.0778008
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0205642   -0.0203103    0.0614387
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0284602   -0.0384846   -0.0184358
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0017804   -0.0131634    0.0167242


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0592042   -0.2861489    0.1276954
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0591511   -0.1217788    0.2108990
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2315323   -0.7197400    0.1180808
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0535471   -0.0976078    0.1838860
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1409236   -0.0997039    0.3288992
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0354109   -0.0878863    0.0145333
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0114848   -0.0485402    0.0680736
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0679646   -0.1488547    0.0072301
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0139513   -0.0789500    0.0471317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0147659   -0.0629376    0.0312227
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1155021   -0.1755620   -0.0585108
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0739871   -0.1461775   -0.0063435
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1039293   -0.1449566   -0.0643721
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0094127   -0.0184209    0.0364856
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0813379   -0.1490476   -0.0176181
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1247985   -0.1568893   -0.0935978
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0117408   -0.0537857    0.0731927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0323359   -0.0442639   -0.0205441
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0031816   -0.0211142    0.0144361
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0455717   -0.3612778    0.3308247
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0038971   -0.3170281    0.2466213
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1459659   -0.0681854    0.3171838
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3473962   -0.0675051    0.6010401
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0251465   -0.2288559    0.2266471
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0373775   -0.1107294    0.0311303
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0509869   -0.1100442    0.1886577
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0310046   -0.1556427    0.0801910
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0799139   -0.0011350    0.1544013
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0324612   -0.1018326    0.0325426
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.2378507   -0.3881346   -0.1038370
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0786696   -0.1647222    0.0010252
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0316664   -0.0816655    0.0160215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0347508   -0.0331589    0.0981969
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0207761   -0.1123967    0.0632984
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0733112   -0.1473669   -0.0040354
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0314521   -0.2492645    0.1483842
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0184222   -0.0306583   -0.0063313
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0049833   -0.0312145    0.0205806
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2747396   -0.8470843    0.1202562
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0642194   -0.2931536    0.3228297
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0629971   -0.4360264    0.2131323
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1259259   -0.2694922    0.3981802
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1120534   -0.2320509   -0.0037433
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0041679   -0.0978570    0.0967116
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3179867   -0.5150694   -0.1465409
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1858705   -0.4130123    0.0047583
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0223799   -0.1086669    0.0571915
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1661432   -0.2601876   -0.0791170
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0788486   -0.1839319    0.0169076
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.2794861   -0.3695524   -0.1953429
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0158298   -0.0542766    0.0212149
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.2030820   -0.3229040   -0.0941128
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1621473   -0.2067263   -0.1192150
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0343708   -0.0363468    0.1002629
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1316414   -0.1794084   -0.0858091
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0047710   -0.0360700    0.0440020
