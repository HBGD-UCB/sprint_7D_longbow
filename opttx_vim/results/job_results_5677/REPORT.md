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
```




# Results Detail

## Results Plots
![](/tmp/4dee9529-dd00-4678-a837-d764d54fb32f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4dee9529-dd00-4678-a837-d764d54fb32f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4509565   0.3301735   0.5717394
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5259660   0.4027606   0.6491714
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1919397   0.0634707   0.3204087
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5193061   0.4222041   0.6164082
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5997643   0.4588268   0.7407018
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6079712   0.5510673   0.6648752
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7618513   0.6875574   0.8361451
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2808877   0.2380558   0.3237196
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3930221   0.3543116   0.4317326
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3384966   0.3033075   0.3736858
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5050943   0.4381093   0.5720794
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1402265   0.1224181   0.1580349
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3056426   0.2868640   0.3244212
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6765242   0.6398124   0.7132361
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2913534   0.2621056   0.3206012
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5817695   0.5564565   0.6070826
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5401209   0.4846558   0.5955860
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4721723   0.4613747   0.4829698
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4891673   0.4454964   0.5328383
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1573758   0.0563349   0.2584167
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1109468   0.0229626   0.1989310
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4138485   0.3024124   0.5252846
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2439867   0.1051101   0.3828634
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2917105   0.2092033   0.3742176
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2846834   0.2523373   0.3170296
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3535664   0.2670971   0.4400357
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1563709   0.1227531   0.1899887
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2624535   0.2279798   0.2969272
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1674517   0.1408178   0.1940857
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.0936489   0.0516764   0.1356214
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0871247   0.0736272   0.1006223
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2041605   0.1892635   0.2190575
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2628835   0.2304913   0.2952758
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1028067   0.0854388   0.1201747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1940277   0.1755374   0.2125180
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2645906   0.1663867   0.3627944
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3915100   0.3816885   0.4013315
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2648036   0.2349092   0.2946979
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2625575   0.1169352   0.4081797
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3861246   0.2061909   0.5660582
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.1955494   0.0759305   0.3151682
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4269753   0.1681662   0.6857844
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4054502   0.3368989   0.4740015
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7157036   0.6100241   0.8213831
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2486362   0.1948631   0.3024092
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1571655   0.1104560   0.2038749
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2126284   0.1783005   0.2469562
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4027513   0.3302646   0.4752380
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0581795   0.0440856   0.0722734
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1963206   0.1710725   0.2215688
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6872448   0.6351999   0.7392896
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2047276   0.1732951   0.2361600
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5459759   0.5163187   0.5756331
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4349308   0.3795203   0.4903413
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1600545   0.1473659   0.1727431
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3206567   0.2532400   0.3880733


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5557976   0.4757696   0.6358256
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5653723   0.4849487   0.6457958
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3547604   0.2594061   0.4501148
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6321495   0.5721152   0.6921839
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.6039754   0.5120066   0.6959442
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6930041   0.6526993   0.7333090
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8273632   0.7911215   0.8636049
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4463100   0.4095652   0.4830548
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4798224   0.4442402   0.5154046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3468161   0.3277049   0.3659273
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6806712   0.6432103   0.7181321
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1651932   0.1462684   0.1841180
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3931993   0.3850187   0.4013799
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7736177   0.7501801   0.7970553
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3811697   0.3561772   0.4061623
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6904189   0.6735239   0.7073140
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6358395   0.6027679   0.6689111
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4921570   0.4842516   0.5000624
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5847918   0.5625826   0.6070009
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3479513   0.2715098   0.4243928
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3114166   0.2366580   0.3861751
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4304076   0.3689511   0.4918642
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3743119   0.2835385   0.4650853
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4019115   0.3357840   0.4680391
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4285091   0.4004578   0.4565604
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3909208   0.3440065   0.4378351
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2415765   0.2099804   0.2731726
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3048091   0.2720994   0.3375188
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1951879   0.1792730   0.2111028
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2836633   0.2478206   0.3195060
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0958172   0.0828141   0.1088202
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2568302   0.2495150   0.2641454
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3257319   0.2971001   0.3543638
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1706068   0.1513495   0.1898642
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2384672   0.2229070   0.2540274
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3566563   0.2991227   0.4141900
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4095803   0.4020419   0.4171187
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3496078   0.3284891   0.3707265
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3592522   0.2589918   0.4595125
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4043173   0.3045784   0.5040562
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.4220394   0.3339373   0.5101415
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4254868   0.2983148   0.5526589
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5059706   0.4621948   0.5497465
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7573721   0.7033503   0.8113939
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3020088   0.2599570   0.3440606
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2633446   0.2249534   0.3017358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2265590   0.2060164   0.2471016
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5713263   0.5241057   0.6185470
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0759200   0.0619357   0.0899044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2425381   0.2329923   0.2520840
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7644782   0.7354952   0.7934611
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2667765   0.2415339   0.2920191
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6484912   0.6275946   0.6693879
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6026179   0.5664556   0.6387802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2182064   0.2087766   0.2276362
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3743633   0.3489936   0.3997330


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.8113681   0.6571727   1.0017431
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9303003   0.7786111   1.1115417
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.5410403   0.3016075   0.9705483
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.8214926   0.7051398   0.9570444
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.9930277   0.8118879   1.2145814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8772981   0.8096505   0.9505979
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9208184   0.8504122   0.9970536
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6293556   0.5586511   0.7090086
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8190992   0.7641247   0.8780288
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9760119   0.8888412   1.0717315
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.7420533   0.6622769   0.8314395
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8488635   0.7716538   0.9337987
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.7773224   0.7335017   0.8237611
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8744942   0.8363798   0.9143456
0-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.7643665   0.7093409   0.8236606
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8426327   0.8152844   0.8708984
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8494610   0.7850958   0.9191032
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9593937   0.9429016   0.9761741
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8364812   0.7718789   0.9064903
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.4522926   0.2544633   0.8039219
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.3562649   0.1708746   0.7427943
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.9615269   0.7705467   1.1998414
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.6518274   0.3991015   1.0645890
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7258076   0.5862601   0.8985716
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.6643580   0.6072879   0.7267913
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9044450   0.7340016   1.1144674
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6472935   0.5467079   0.7663852
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8610422   0.7906606   0.9376889
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8579002   0.7425244   0.9912035
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.3301411   0.2162273   0.5040675
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.9092811   0.7940660   1.0412134
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.7949241   0.7430684   0.8503987
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8070549   0.7313104   0.8906445
0-6 months    ki1135781-COHORTS          INDIA                          optimal              observed          0.6025945   0.5349717   0.6787652
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8136450   0.7559851   0.8757027
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.7418642   0.5353343   1.0280725
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9558809   0.9383773   0.9737111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7574304   0.6888797   0.8328025
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7308444   0.4630952   1.1533990
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9550038   0.6466043   1.4104951
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.4633439   0.2658081   0.8076786
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          1.0034983   0.6154225   1.6362885
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8013315   0.6859379   0.9361374
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9449828   0.8355509   1.0687470
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.8232746   0.6897331   0.9826714
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.5968053   0.4649963   0.7659772
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9385122   0.8176127   1.0772889
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.7049409   0.6035811   0.8233221
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.7663256   0.6534113   0.8987524
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8094423   0.7143821   0.9171519
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8989724   0.8476399   0.9534135
6-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.7674124   0.6780318   0.8685755
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8419171   0.8080233   0.8772327
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.7217357   0.6528950   0.7978348
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7335005   0.6853397   0.7850456
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8565388   0.7054375   1.0400052
