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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/9cb0e8c2-0f9d-4d53-a5e3-08014cafc675/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9cb0e8c2-0f9d-4d53-a5e3-08014cafc675/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9cb0e8c2-0f9d-4d53-a5e3-08014cafc675/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9cb0e8c2-0f9d-4d53-a5e3-08014cafc675/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6250000   0.4744655   0.7755345
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6363636   0.5088034   0.7639239
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4259259   0.2935940   0.5582578
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5254237   0.3975704   0.6532771
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5909091   0.4451370   0.7366811
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5909091   0.4451370   0.7366811
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4285714   0.2443293   0.6128135
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.4642857   0.2786098   0.6499616
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2380952   0.1086231   0.3675674
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.5942029   0.4781073   0.7102985
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6721311   0.5540908   0.7901715
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.6250000   0.5382073   0.7117927
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5135135   0.3517272   0.6752998
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.6333333   0.4601036   0.8065631
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.6511628   0.5080583   0.7942672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7461774   0.6806454   0.8117094
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6960986   0.6579970   0.7342001
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5912596   0.5098374   0.6726819
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8231293   0.7613743   0.8848842
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.8509317   0.7958515   0.9060118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8000000   0.7251603   0.8748397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5168067   0.4532744   0.5803390
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4304348   0.3663994   0.4944702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3534483   0.2918910   0.4150055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5371901   0.4743275   0.6000527
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5818182   0.5165954   0.6470410
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3513514   0.2969306   0.4057721
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3614173   0.3349902   0.3878445
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3328313   0.2969817   0.3686810
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3251670   0.2818292   0.3685049
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7276265   0.6731536   0.7820993
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6903553   0.6257386   0.7549720
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5646259   0.4844095   0.6448422
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1868183   0.1631805   0.2104562
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1592711   0.1385078   0.1800344
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1300332   0.1108237   0.1492428
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4491562   0.4288758   0.4694366
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3868233   0.3774548   0.3961919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3260000   0.2969462   0.3550538
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7848325   0.7509943   0.8186706
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7461024   0.7058282   0.7863767
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7649573   0.7106065   0.8193081
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4915254   0.4464090   0.5366419
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3725490   0.3256191   0.4194789
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2874780   0.2502124   0.3247436
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.8067633   0.7798649   0.8336617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7384917   0.7115313   0.7654521
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5480116   0.5176271   0.5783962
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6323024   0.5768683   0.6877365
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6383764   0.5811367   0.6956161
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6414343   0.5820681   0.7008004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5370027   0.5261616   0.5478438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5133427   0.5017407   0.5249446
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3871092   0.3733139   0.4009045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5838310   0.5575020   0.6101599
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6006787   0.5480531   0.6533043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5588235   0.4991319   0.6185151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3500000   0.2016898   0.4983102
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4181818   0.2873826   0.5489811
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2592593   0.1419820   0.3765365
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3050847   0.1871938   0.4229757
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2727273   0.1406838   0.4047707
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3409091   0.2003704   0.4814478
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4057971   0.2897015   0.5218927
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.3934426   0.2706054   0.5162799
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4583333   0.3690060   0.5476607
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2432432   0.1043667   0.3821198
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4333333   0.2551999   0.6114668
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4418605   0.2927490   0.5909719
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4098361   0.2861271   0.5335451
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5238095   0.3096969   0.7379221
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3769231   0.2934204   0.4604257
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4823890   0.4403385   0.5244394
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4123711   0.3526862   0.4720560
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3444730   0.2753468   0.4135992
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3972603   0.3177915   0.4767291
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4062500   0.3300580   0.4824420
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3545455   0.2650413   0.4440496
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3025210   0.2441209   0.3609211
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2217391   0.1680139   0.2754644
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1896552   0.1391737   0.2401366
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3099174   0.2516131   0.3682217
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3818182   0.3175775   0.4460588
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2364865   0.1880469   0.2849261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2110236   0.1885778   0.2334694
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1897590   0.1599283   0.2195897
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1581292   0.1243737   0.1918847
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3268482   0.2694534   0.3842431
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2538071   0.1929860   0.3146282
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2244898   0.1569837   0.2919959
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1117170   0.0933637   0.1300704
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0921364   0.0776795   0.1065932
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0794237   0.0672571   0.0915904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2859619   0.2675261   0.3043976
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2528215   0.2444547   0.2611882
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2194389   0.1937610   0.2451167
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3333333   0.2900448   0.3766218
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3081081   0.2610395   0.3551767
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3092784   0.2442075   0.3743492
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2117904   0.1743585   0.2492223
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1534653   0.1183062   0.1886245
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1323792   0.1042751   0.1604834
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2995169   0.2683124   0.3307215
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2644466   0.2373892   0.2915041
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1629486   0.1404012   0.1854959
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3750000   0.2817816   0.4682184
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4111111   0.3092665   0.5129557
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2602740   0.1594295   0.3611185
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4485192   0.4377553   0.4592831
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4322992   0.4206595   0.4439390
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3106961   0.2977535   0.3236387
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3464083   0.3218659   0.3709507
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3488372   0.2926314   0.4050430
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3434903   0.2857377   0.4012429
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4583333   0.2578617   0.6588050
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4000000   0.2237023   0.5762977
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2571429   0.1115274   0.4027584
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3611111   0.2033673   0.5188549
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4666667   0.2871881   0.6461453
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3928571   0.2109900   0.5747243
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.3939394   0.2265354   0.5613434
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4857143   0.3194462   0.6519823
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3773585   0.2463172   0.5083998
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3703704   0.1866578   0.5540830
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5000000   0.2146752   0.7853248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4500000   0.2300962   0.6699038
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5884354   0.5083124   0.6685583
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5091575   0.4487812   0.5695339
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3918367   0.3115574   0.4721160
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7590361   0.6668402   0.8512321
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7826087   0.6981503   0.8670671
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7205882   0.6137184   0.8274580
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3669065   0.2866966   0.4471164
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3310345   0.2543552   0.4077138
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2196532   0.1578923   0.2814140
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3525641   0.2775172   0.4276110
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3308271   0.2507844   0.4108697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1566820   0.1082700   0.2050940
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2298436   0.2012288   0.2584583
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2106430   0.1729981   0.2482879
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2396166   0.1923138   0.2869194
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6023392   0.5288982   0.6757802
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6056338   0.5251571   0.6861105
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4464286   0.3542535   0.5386036
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0857957   0.0703911   0.1012002
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0752454   0.0597978   0.0906930
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0564018   0.0412076   0.0715960
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2941634   0.2692478   0.3190790
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2364808   0.2256366   0.2473249
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1897163   0.1573564   0.2220762
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7771883   0.7351572   0.8192195
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7317881   0.6817918   0.7817844
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7828947   0.7173143   0.8484752
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3688525   0.3194005   0.4183044
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2678571   0.2204862   0.3152281
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1865828   0.1516072   0.2215584
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7720588   0.7367979   0.8073197
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6934097   0.6591958   0.7276237
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5189542   0.4835396   0.5543689
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5800000   0.5187757   0.6412243
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.5938865   0.5302343   0.6575386
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6228070   0.5598496   0.6857644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2589744   0.2432655   0.2746832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2178662   0.2024227   0.2333098
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1628172   0.1484773   0.1771571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3741307   0.3450775   0.4031840
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3969072   0.3328977   0.4609168
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3400000   0.2598938   0.4201062


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5570470   0.4770190   0.6370750
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5646259   0.4842023   0.6450494
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.0181818   0.7442802   1.3928817
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6814815   0.4599658   1.0096772
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               1.1246334   0.7952880   1.5903677
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.1246334   0.7952880   1.5903677
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.0833333   0.6022345   1.9487609
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5555556   0.2777659   1.1111587
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               1.1311475   0.8698132   1.4709995
0-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               1.0518293   0.8276433   1.3367411
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2333333   0.8126115   1.8718798
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.2680539   0.8635955   1.8619371
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9328862   0.8506227   1.0231053
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7923848   0.6826769   0.9197231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0337765   0.9362525   1.1414590
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9719008   0.8620698   1.0957247
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8328738   0.6866972   1.0101668
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.6839080   0.5526062   0.8464078
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0830769   0.9210456   1.2736129
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6540541   0.5386491   0.7941845
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9209058   0.8084929   1.0489487
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8996996   0.7728165   1.0474149
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.9487771   0.8416113   1.0695888
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7759831   0.6608607   0.9111600
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8525454   0.7586680   0.9580392
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6960412   0.5931004   0.8168487
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8612223   0.8182067   0.9064994
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7258054   0.6567968   0.8020646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9506519   0.8871936   1.0186492
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9746759   0.8969462   1.0591417
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7579446   0.6485547   0.8857848
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.5848689   0.4989728   0.6855517
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9153759   0.8712193   0.9617705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6792719   0.6367161   0.7246720
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0096061   0.8906157   1.1444942
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               1.0144422   0.8930218   1.1523717
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9559406   0.9300443   0.9825579
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7208701   0.6928358   0.7500388
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0288573   0.9330181   1.1345410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9571667   0.8527871   1.0743221
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.1948052   0.7056080   2.0231623
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7407407   0.3985469   1.3767435
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8939394   0.4811494   1.6608723
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               1.1174242   0.6350751   1.9661247
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               0.9695550   0.6348377   1.4807516
0-6 months    ki0047075b-MAL-ED          PERU                           High                 Low               1.1294643   0.7989744   1.5966589
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.7814815   0.8815409   3.6001464
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.8165375   0.9358691   3.5259294
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.2780952   0.7689253   2.1244293
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9196923   0.6324597   1.3373721
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8548519   0.7110146   1.0277873
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7140980   0.5659663   0.9010005
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0226293   0.7773738   1.3452611
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.8924765   0.6467132   1.2316345
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.7329710   0.5377074   0.9991429
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.6269157   0.4512417   0.8709818
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.2320000   0.9571932   1.5857029
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.7630631   0.5777990   1.0077298
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8992313   0.7437712   1.0871849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7493435   0.5903392   0.9511747
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.7765289   0.5769450   1.0451552
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6868319   0.4848615   0.9729336
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.8247300   0.7102760   0.9576271
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.7109364   0.5735238   0.8812722
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8841090   0.8223066   0.9505562
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7673711   0.6714035   0.8770560
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9243243   0.7563900   1.1295435
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9278351   0.7245902   1.1880893
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.7246096   0.5425504   0.9677608
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.6250484   0.4741810   0.8239164
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8829105   0.7629559   1.0217248
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5440380   0.4575162   0.6469222
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0962963   0.7718161   1.5571917
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.6940639   0.4380013   1.0998248
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9638367   0.9320248   0.9967345
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.6927153   0.6604541   0.7265524
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0070116   0.8456268   1.1991962
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9915764   0.8252301   1.1914540
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8727273   0.4690371   1.6238648
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5610390   0.2743094   1.1474804
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               1.2923077   0.7221088   2.3127529
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.0879121   0.5756610   2.0559892
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               1.2329670   0.7144429   2.1278227
6-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.9579100   0.5533351   1.6582929
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.3500000   0.6338195   2.8754244
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.2150000   0.6055836   2.4376900
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8652735   0.7237340   1.0344936
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6658960   0.5080268   0.8728230
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0310559   0.8764306   1.2129612
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9493464   0.7837365   1.1499510
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9022312   0.6561341   1.2406324
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.5986626   0.4192797   0.8547920
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9383459   0.6798445   1.2951387
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4444072   0.3053733   0.6467420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9164625   0.7370960   1.1394765
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.0425204   0.8255155   1.3165700
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0054697   0.8395519   1.2041773
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7411581   0.5831411   0.9419939
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8770300   0.7519540   1.0229105
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6573970   0.5192206   0.8323454
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8039095   0.7300918   0.8851907
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6449351   0.5330992   0.7802324
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9415840   0.8630121   1.0273093
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0073424   0.9117476   1.1129600
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7261905   0.5816601   0.9066336
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.5058467   0.4017258   0.6369541
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8981307   0.8397307   0.9605922
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6721693   0.6191795   0.7296941
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0239422   0.8809337   1.1901663
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               1.0738052   0.9277934   1.2427956
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.8412656   0.7699796   0.9191514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.6287000   0.5655802   0.6988640
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0608784   0.8884030   1.2668383
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9087732   0.7088288   1.1651174


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0679530   -0.1979466    0.0620406
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0392021   -0.0592497    0.1376540
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0714286   -0.2251828    0.0823257
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0337971   -0.0643984    0.1319926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0864865   -0.0439917    0.2169647
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0553277   -0.0928833   -0.0177721
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0046219   -0.0448228    0.0540667
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0825210   -0.1339196   -0.0311224
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0596175   -0.1115265   -0.0077085
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0147954   -0.0326623    0.0030714
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0520857   -0.0948976   -0.0092738
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0215615   -0.0336836   -0.0094394
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0562547   -0.0746772   -0.0378323
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0176325   -0.0432367    0.0079718
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1135019   -0.1500012   -0.0770027
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1168327   -0.1411831   -0.0924824
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0048440   -0.0395053    0.0491932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0451950   -0.0529649   -0.0374251
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0006368   -0.0135090    0.0122353
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0077181   -0.1343251    0.1188889
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0010377   -0.0902348    0.0923102
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0222029   -0.0768685    0.1212743
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1294840    0.0088531    0.2501150
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0088927   -0.1131510    0.0953656
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0573726   -0.0974916   -0.0172536
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0078372   -0.0717386    0.0560642
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0639496   -0.1096628   -0.0182364
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0078065   -0.0557516    0.0401385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0158914   -0.0307269   -0.0010560
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0489780   -0.0909490   -0.0070071
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0139856   -0.0237035   -0.0042677
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0299829   -0.0466757   -0.0132902
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0137255   -0.0456347    0.0181837
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0478214   -0.0772966   -0.0183461
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0613225   -0.0869340   -0.0357109
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0191948   -0.0915157    0.0531262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0396418   -0.0475883   -0.0316953
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0000031   -0.0130203    0.0130141
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0987828   -0.2677979    0.0702323
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0431442   -0.0824406    0.1687291
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0192837   -0.1238952    0.1624627
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0533584   -0.0846014    0.1913183
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0859723   -0.1506534   -0.0212912
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0018345   -0.0767464    0.0730774
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0671253   -0.1326105   -0.0016401
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0897183   -0.1499943   -0.0294422
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0035113   -0.0231989    0.0161763
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0399862   -0.0972848    0.0173123
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0096170   -0.0170505   -0.0021836
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0515202   -0.0740145   -0.0290258
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0154555   -0.0471368    0.0162258
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1025251   -0.1420771   -0.0629730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1238276   -0.1555449   -0.0921103
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0183027   -0.0307401    0.0673455
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0427795   -0.0543726   -0.0311864
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0009625   -0.0167996    0.0148747


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1219880   -0.3828654    0.0896750
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0694303   -0.1228200    0.2287633
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2000000   -0.7194426    0.1625193
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0538170   -0.1164262    0.1980999
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1441441   -0.1057052    0.3375366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0800864   -0.1339772   -0.0287567
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0055837   -0.0559852    0.0635629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.1900155   -0.3154470   -0.0765442
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1248345   -0.2394151   -0.0208465
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0426846   -0.0955316    0.0076131
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0771022   -0.1429092   -0.0150843
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1304726   -0.2060166   -0.0596606
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1431777   -0.1910882   -0.0971944
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0229829   -0.0569507    0.0098933
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.3002510   -0.4017479   -0.2061032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1693398   -0.2062128   -0.1335940
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0076026   -0.0645055    0.0748262
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0918957   -0.1079439   -0.0760800
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0010920   -0.0234064    0.0207358
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0225490   -0.4681968    0.2878295
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0033898   -0.3441681    0.2610806
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0518759   -0.2103665    0.2573000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3473962   -0.0675051    0.6010401
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0221794   -0.3182914    0.2074206
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1349892   -0.2365353   -0.0417821
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0201251   -0.1981587    0.1314545
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2680521   -0.4741121   -0.0907965
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0258400   -0.1974709    0.1211915
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0814393   -0.1600552   -0.0081512
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1762623   -0.3372497   -0.0346556
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1431023   -0.2428813   -0.0513336
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1171305   -0.1842616   -0.0538047
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0429448   -0.1477165    0.0522626
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.2916487   -0.4826621   -0.1252438
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2574471   -0.3693954   -0.1546505
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0539474   -0.2781675    0.1309394
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0969529   -0.1167065   -0.0775486
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0000089   -0.0383018    0.0368717
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2747396   -0.8470843    0.1202562
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.1067251   -0.2651335    0.3692840
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0466667   -0.3712393    0.3372095
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1259259   -0.2694922    0.3981802
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1711018   -0.3071953   -0.0491771
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0024227   -0.1064029    0.0917853
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2239143   -0.4631943   -0.0237644
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3413341   -0.5911452   -0.1307436
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0155138   -0.1063283    0.0678460
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0711052   -0.1783363    0.0263676
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1262432   -0.2327300   -0.0289550
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.2123288   -0.3085802   -0.1231571
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0202899   -0.0627815    0.0205029
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.3849588   -0.5417500   -0.2441127
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1910239   -0.2423232   -0.1418428
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0305910   -0.0549870    0.1092272
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1978748   -0.2524742   -0.1456555
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0025792   -0.0459418    0.0389857
