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

agecat        studyid                    country                        meducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       37     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       41     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       45     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       41     214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       59     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1       20     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       47     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1       16     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       72     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1       18     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       29     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       34     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       29     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       47     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       48     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1       13     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       56     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       54     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       22     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       38     302
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1       53     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       37     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       40     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       67     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       50     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       45     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       64     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       86     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       29     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       40     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        4     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        7     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       12     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       52     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       22     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1      120     217
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1      141     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1      101     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1      103     373
0-24 months   ki1000108-IRC              INDIA                          High                   0       53     410
0-24 months   ki1000108-IRC              INDIA                          High                   1       71     410
0-24 months   ki1000108-IRC              INDIA                          Low                    0       51     410
0-24 months   ki1000108-IRC              INDIA                          Low                    1       96     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 0       43     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 1       96     410
0-24 months   ki1000109-EE               PAKISTAN                       High                   0        3     376
0-24 months   ki1000109-EE               PAKISTAN                       High                   1       12     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0       24     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1      304     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        6     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1       27     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      145    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1      178    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      158    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      538    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      170    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      344    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       54     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      278     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       34     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0       76     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1      103     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0       65     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1      165     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0       70     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1      150     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      147     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       88     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      113     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1      101     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      136     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1      115     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      157     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       97     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      117     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1      125     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      122     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1      140     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      426    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      195    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       50    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       32    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1083    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      600    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0       60     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1       58     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       27     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       49     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       39     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       49     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       38     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       37     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      120     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      301     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       37     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       66     599
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2455   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      385   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4879   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1221   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6733   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1224   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     4852   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     2772   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1668   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1290   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1957   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1514   14053
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       65    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      220    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      132    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      504    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      117    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      303    1341
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      648    5852
0-24 months   ki1135781-COHORTS          INDIA                          High                   1      145    5852
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      931    5852
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1     1025    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     2039    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1     1064    5852
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      495    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      678    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      177    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      726    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      287    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      695    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      125     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      173     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0       84     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      177     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       86     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      169     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     5341   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     3686   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4488   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     5385   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     3941   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     4361   27202
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       26    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       51    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      902    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1248    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       32    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       48    2307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       58     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       20     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       42     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       28     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       42     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       24     214
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   0       61     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   1       18     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    0       51     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    1       12     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 0       75     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 1       15     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       45     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       18     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1       24     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1       29     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       46     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        7     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       76     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1       20     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       64     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1       12     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       50     302
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1       41     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       60     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1       44     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       64     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1       43     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       61     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       34     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      100     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       50     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       40     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       29     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       10     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        1     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       39     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       25     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       82     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     217
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       80     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       77     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       51     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       58     368
0-6 months    ki1000108-IRC              INDIA                          High                   0       82     410
0-6 months    ki1000108-IRC              INDIA                          High                   1       42     410
0-6 months    ki1000108-IRC              INDIA                          Low                    0       84     410
0-6 months    ki1000108-IRC              INDIA                          Low                    1       63     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 0       70     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 1       69     410
0-6 months    ki1000109-EE               PAKISTAN                       High                   0        5     376
0-6 months    ki1000109-EE               PAKISTAN                       High                   1       10     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0       82     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1      246     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 0       11     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 1       22     376
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      228    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1       95    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      350    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1      345    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      301    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      211    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       14     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      201     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      130     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       27     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       18     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   0      126     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   1       53     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    0      146     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    1       84     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      137     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       83     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      163     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      186     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       65     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      195     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       59     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      166     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       76     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      168     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       94     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      503    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      118    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       65    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       17    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1353    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      330    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   0       74     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   1       38     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       52     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       22     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       55     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       24     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0       62     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       13     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      289     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1      132     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0       81     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       22     599
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2608   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      232   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5385   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      713   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     7219   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      736   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     5760   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     1853   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2148   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      805   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     2502   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      963   14031
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      164    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       60    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      322    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1      192    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      245    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1       95    1078
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      676    5662
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       77    5662
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0     1436    5662
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1      473    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0     2483    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1      517    5662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      954    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1      219    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      638    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1      265    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      735    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1      247    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       65     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1       22     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       49     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1       43     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       58     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1       30     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6035   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2960   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5349   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     4504   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4604   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     3684   27136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0       36    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1       34    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1328    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      702    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       46    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       27    2173
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       32     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       21     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       21     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       17     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       23     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       17     131
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       53     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        2     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       41     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        4     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       64     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        3     167
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       27     141
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       16     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       27     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       23     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       29     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       19     141
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       39     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        6     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       55     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       20     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       53     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       10     183
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       29     149
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       28     149
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       23     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       33     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       24     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       33     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       11     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       48     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       36     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       20     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       11     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        2     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        6     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       10     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       27     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       17     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       17     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       64     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0        5     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       48     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0        6     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       45     185
6-24 months   ki1000108-IRC              INDIA                          High                   0       53     236
6-24 months   ki1000108-IRC              INDIA                          High                   1       29     236
6-24 months   ki1000108-IRC              INDIA                          Low                    0       51     236
6-24 months   ki1000108-IRC              INDIA                          Low                    1       33     236
6-24 months   ki1000108-IRC              INDIA                          Medium                 0       43     236
6-24 months   ki1000108-IRC              INDIA                          Medium                 1       27     236
6-24 months   ki1000109-EE               PAKISTAN                       High                   0        3      96
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        2      96
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0       22      96
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1       58      96
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        6      96
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        5      96
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      130     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       83     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      124     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      193     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      150     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      133     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       44     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      148     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       16     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0       61     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1       50     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0       38     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       81     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0       48     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       67     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      126     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       37     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       87     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       50     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      107     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       50     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      150     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       38     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      109     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       49     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      114     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       46     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      328    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       77    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       40    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       15    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      867    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      270    1597
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0       54     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1       20     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       22     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       27     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       37     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       25     185
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       34     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       24     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      116     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      169     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       36     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       44     423
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2397   14951
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      153   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4768   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      508   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6637   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      488   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     3442    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      919    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1159    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      485    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1388    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      551    7944
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       30     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      160     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0       89     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      312     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0       88     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      208     887
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      607    4497
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       68    4497
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      821    4497
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      552    4497
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     1902    4497
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      547    4497
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      394    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      459    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      136    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      461    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      223    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      448    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      120     708
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      151     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0       82     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      134     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       82     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      139     708
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3439   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      726   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2371   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      881   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2423   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      677   10517
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       26    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       17    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      900    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      546    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       32    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       21    1542


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/411e5b46-826e-45e5-82b2-ebf3dfb577bc/eb71848d-0c39-418a-a4ba-7b73a7cb5f99/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/411e5b46-826e-45e5-82b2-ebf3dfb577bc/eb71848d-0c39-418a-a4ba-7b73a7cb5f99/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6985295   0.5947743   0.8022846
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1999838   0.1164222   0.2835454
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5763982   0.4611509   0.6916456
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3038781   0.1869156   0.4208406
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5742053   0.4776938   0.6707169
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4949789   0.3895938   0.6003639
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8906225   0.8414341   0.9398109
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.5670897   0.4818231   0.6523563
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5936869   0.5250374   0.6623365
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7576243   0.6299215   0.8853270
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6121232   0.5392683   0.6849782
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4517817   0.3948357   0.5087278
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4394597   0.3853458   0.4935736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3393219   0.2769033   0.4017406
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.4575560   0.3640724   0.5510395
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5385147   0.4185567   0.6584726
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1564203   0.1342674   0.1785732
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3808416   0.3688902   0.3927930
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7415125   0.7014765   0.7815486
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2407693   0.2146205   0.2669181
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6083314   0.5812792   0.6353836
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6211638   0.5681633   0.6741642
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4822518   0.4720147   0.4924889
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.6509068   0.5727742   0.7290394
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3955806   0.3009456   0.4902157
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2009742   0.1061428   0.2958057
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3249822   0.2070530   0.4429115
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1544089   0.0528526   0.2559652
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.3839420   0.2949267   0.4729572
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3683619   0.2866730   0.4500507
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5070761   0.4238232   0.5903290
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3410779   0.2626876   0.4194683
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.7891114   0.5648215   1.0134013
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3584774   0.2893745   0.4275802
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2999487   0.1831980   0.4166994
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3699784   0.3044227   0.4355340
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2659378   0.2123100   0.3195655
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2882675   0.2416374   0.3348977
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2324814   0.1559873   0.3089755
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3014162   0.2044581   0.3983743
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2214901   0.1163413   0.3266389
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0905559   0.0750650   0.1060468
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2548000   0.2440151   0.2655849
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2712062   0.2188254   0.3235869
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1585277   0.1415043   0.1755511
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2282323   0.2062152   0.2502494
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2905600   0.1994258   0.3816941
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4094843   0.4002181   0.4187506
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3930930   0.3069704   0.4792157
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4161269   0.2752159   0.5570379
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3920811   0.2480181   0.5361441
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2303209   0.1111328   0.3495089
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.2942692   0.1517632   0.4367751
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2491451   0.1132024   0.3850878
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.7917929   0.7020495   0.8815363
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.4754173   0.3602945   0.5905400
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3887712   0.3009876   0.4765549
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7041683   0.5025622   0.9057745
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4679155   0.3780704   0.5577607
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2332647   0.1689729   0.2975565
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2158516   0.1581785   0.2735247
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1890290   0.1510476   0.2270104
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2677938   0.1637605   0.3718271
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4215652   0.2783029   0.5648275
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0707905   0.0559551   0.0856259
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2158443   0.2030604   0.2286283
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7316935   0.6822668   0.7811203
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1108859   0.0866683   0.1351035
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5590971   0.5263493   0.5918450
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5713879   0.5129443   0.6298315
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1982186   0.1837700   0.2126672
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4466055   0.3461941   0.5470170


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5934579   0.5274941   0.6594218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2327586   0.1782631   0.2872542
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5863636   0.5211379   0.6515894
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3333333   0.2716003   0.3950664
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6192053   0.5643489   0.6740617
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3466052   0.3275063   0.3657041
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6744574   0.6369015   0.7120134
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3967836   0.3886946   0.4048726
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7658464   0.7431730   0.7885198
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3817498   0.3693017   0.3941980
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6375921   0.6045496   0.6706347
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4937872   0.4859431   0.5016313
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5838752   0.5596094   0.6081410
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3364486   0.2729952   0.3999020
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1939655   0.1429760   0.2449551
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3227273   0.2608080   0.3846465
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1733333   0.1237620   0.2229046
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4238411   0.3680149   0.4796672
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000109-EE               PAKISTAN                       observed             NA                0.7393617   0.6949313   0.7837921
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1948868   0.1789895   0.2107841
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2787980   0.2428586   0.3147374
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2580714   0.2508309   0.2653119
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3218924   0.2939898   0.3497950
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1884493   0.1782621   0.1986366
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4108196   0.4033665   0.4182726
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3511275   0.3280882   0.3741668
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4198473   0.3350088   0.5046859
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4113475   0.3298362   0.4928589
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1967213   0.1389688   0.2544739
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2266750   0.2061344   0.2472157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5602837   0.5129269   0.6076405
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2460977   0.2366251   0.2555702
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7666291   0.7387777   0.7944805
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2595063   0.2466928   0.2723199
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5988701   0.5627418   0.6349983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2171722   0.2078051   0.2265392
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3787289   0.3502539   0.4072039


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.8495818   0.7570065   0.9534783
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.1638872   0.8293951   1.6332790
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0172891   0.8640307   1.1977318
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0969309   0.7806792   1.5412957
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.0783691   0.9399737   1.2371410
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1002207   0.9230565   1.3113883
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0385242   0.9997876   1.0787616
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.1311499   1.0009885   1.2782365
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1646789   1.0606261   1.2789399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0925616   0.9332777   1.2790308
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0856424   0.9824580   1.1996638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9612733   0.8715619   1.0602189
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0867267   0.9884100   1.1948229
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0214642   0.8573268   1.2170261
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.2090139   1.0246155   1.4265981
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2524402   1.0140006   1.5469483
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0707393   0.9815787   1.1679987
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0418599   1.0175408   1.0667602
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0328165   0.9881096   1.0795461
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.5855421   1.4312329   1.7564882
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1283263   1.0912169   1.1666978
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0264477   0.9583373   1.0993989
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0239199   1.0094335   1.0386142
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8970181   0.7982545   1.0080011
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.8505183   0.7126905   1.0150008
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.9651263   0.6698633   1.3905356
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9930612   0.7338129   1.3438993
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1225606   0.6344432   1.9862178
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.1039196   0.9242651   1.3184947
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9769541   0.8231393   1.1595112
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0074811   0.8805448   1.1527162
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.2442618   1.0304346   1.5024605
0-6 months    ki1000109-EE               PAKISTAN                       observed             optimal           0.9369548   0.7104742   1.2356315
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1869373   1.0226765   1.3775815
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.2982988   0.8933750   1.8867551
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9453567   0.8191823   1.0909652
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8970949   0.7738193   1.0400094
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0480223   0.9291028   1.1821628
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8382902   0.6107559   1.1505913
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0516394   0.8000027   1.3824272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2587379   0.8020064   1.9755716
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0988647   0.9711344   1.2433949
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0128390   0.9810561   1.0456516
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1868919   1.0027496   1.4048496
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.1887468   1.0817326   1.3063479
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0473766   0.9734182   1.1269541
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2245500   0.9393334   1.5963691
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0032608   0.9877658   1.0189988
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8932427   0.7257499   1.0993904
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0089406   0.7683429   1.3248788
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0491389   0.7702843   1.4289430
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8541185   0.5543104   1.3160828
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.3456156   0.8793687   2.0590695
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.4641262   0.9056429   2.3670097
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0718063   0.9907336   1.1595133
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.7932372   0.6574610   0.9570533
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2940130   1.0437868   1.6042258
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0753134   0.8212710   1.4079384
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.2265313   1.0472324   1.4365285
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2851545   1.0192732   1.6203919
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2177156   0.9767913   1.5180634
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1991549   1.0042926   1.4318263
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.4533166   1.0580699   1.9962095
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.3290558   0.9645141   1.8313774
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0856127   0.9601546   1.2274638
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1401629   1.0908640   1.1916896
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0477462   0.9930491   1.1054559
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.3403012   1.8945036   2.8909998
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1536077   1.1035898   1.2058926
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0480972   0.9681733   1.1346190
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0956197   1.0334938   1.1614801
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8480166   0.6783955   1.0600486


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.1050715   -0.1848640   -0.0252790
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0327748   -0.0351782    0.1007278
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0099654   -0.0841315    0.1040623
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0294552   -0.0741187    0.1330291
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0450000   -0.0337180    0.1237180
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0496071   -0.0368443    0.1360585
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0343105    0.0007885    0.0678325
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0743737    0.0055757    0.1431718
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0977677    0.0425400    0.1529954
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0701269   -0.0489264    0.1891803
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0524237   -0.0084880    0.1133353
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0174960   -0.0617050    0.0267130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0381129   -0.0035324    0.0797582
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0072833   -0.0521558    0.0667223
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0956355    0.0202072    0.1710638
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1359428    0.0225799    0.2493056
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0110651   -0.0025867    0.0247168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0159420    0.0069450    0.0249390
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0243338   -0.0084647    0.0571324
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1409806    0.1160716    0.1658895
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0780649    0.0579694    0.0981605
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0164284   -0.0262433    0.0591000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0115354    0.0046594    0.0184114
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0670316   -0.1427439    0.0086806
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0591321   -0.1283510    0.0100869
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0070087   -0.0806181    0.0666006
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0022550   -0.1005879    0.0960780
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0189244   -0.0689325    0.1067814
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0398991   -0.0279545    0.1077527
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0084892   -0.0715577    0.0545792
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0037935   -0.0645113    0.0720983
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0833123    0.0193117    0.1473129
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0497497   -0.2681741    0.1686748
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0670128    0.0158958    0.1181298
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0894744   -0.0234902    0.2024389
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0202168   -0.0732270    0.0327934
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0273663   -0.0669621    0.0122294
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0138433   -0.0209118    0.0485983
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0375945   -0.1113564    0.0361674
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0155649   -0.0669916    0.0981215
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0573079   -0.0424469    0.1570627
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0089528   -0.0024128    0.0203183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0032714   -0.0048535    0.0113963
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0506862    0.0049572    0.0964153
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0299216    0.0148339    0.0450093
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0108129   -0.0059187    0.0275445
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0652453   -0.0122837    0.1427742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0013352   -0.0050410    0.0077115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0419656   -0.1236970    0.0397658
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0037204   -0.1096460    0.1170868
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0192664   -0.1019244    0.1404573
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0335995   -0.1334592    0.0662601
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1017040   -0.0234462    0.2268542
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1156348   -0.0034463    0.2347158
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0568557   -0.0044504    0.1181619
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0982986   -0.1880675   -0.0085297
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1143038    0.0293892    0.1992184
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0530333   -0.1363701    0.2424368
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1059975    0.0326286    0.1793664
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0665165    0.0120125    0.1210205
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0469943   -0.0009310    0.0949195
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0376460    0.0040272    0.0712649
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1213954    0.0368872    0.2059035
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1387185    0.0042607    0.2731762
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0060606   -0.0028042    0.0149254
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0302534    0.0206667    0.0398400
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0349356   -0.0041956    0.0740667
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1486205    0.1242690    0.1729719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0858816    0.0614066    0.1103567
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0274822   -0.0177790    0.0727433
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0189536    0.0073611    0.0305461
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0678766   -0.1669279    0.0311746


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.1770496   -0.3209926   -0.0487915
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.1408102   -0.2056981    0.3877347
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0169953   -0.1573662    0.1650885
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0883656   -0.2809359    0.3511952
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0726738   -0.0638596    0.1916847
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0910914   -0.0833573    0.2374494
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0370951   -0.0002125    0.0730111
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1159439    0.0009875    0.2176722
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1413943    0.0571607    0.2181024
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0847198   -0.0714925    0.2181580
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0788863   -0.0178552    0.1664331
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0402869   -0.1473655    0.0567985
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0798054   -0.0117259    0.1630559
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0210132   -0.1664164    0.1783250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1728796    0.0240241    0.2990317
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2015587    0.0138073    0.3535660
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0660658   -0.0187670    0.1438346
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0401781    0.0172385    0.0625822
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0317738   -0.0120335    0.0736848
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.3693009    0.3013017    0.4306822
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1137316    0.0835919    0.1428800
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0257663   -0.0434740    0.0904120
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0233611    0.0093453    0.0371786
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1148048   -0.2527333    0.0079376
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.1757536   -0.4031336    0.0147791
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0361338   -0.4928419    0.2808527
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0069872   -0.3627452    0.2558966
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1091795   -0.5761852    0.4965305
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0941370   -0.0819407    0.2415593
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0235896   -0.2148612    0.1375676
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0074256   -0.1356606    0.1324838
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.1963106    0.0295357    0.3344251
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0672873   -0.4075106    0.1906972
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1574955    0.0221737    0.2740901
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2297613   -0.1193507    0.4699895
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0578017   -0.2207296    0.0833805
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1147092   -0.2922914    0.0384702
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0458218   -0.0763072    0.1540928
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1929044   -0.6373154    0.1308817
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0491037   -0.2499959    0.2766346
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2055534   -0.2468728    0.4938174
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0899698   -0.0297236    0.1957503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0126763   -0.0193097    0.0436585
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1574633    0.0027421    0.2881800
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1587780    0.0755571    0.2345071
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0452336   -0.0273076    0.1126524
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1833735   -0.0645847    0.3735784
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0032502   -0.0123857    0.0186445
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1195166   -0.3778852    0.0904050
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0088614   -0.3015023    0.2452140
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0468374   -0.2982219    0.3001820
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1707977   -0.8040432    0.2401694
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2568457   -0.1371794    0.5143437
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3169988   -0.1041879    0.5775260
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0669956   -0.0093530    0.1375692
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.2606570   -0.5210028   -0.0448738
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2272102    0.0419499    0.3766463
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0700386   -0.2176249    0.2897417
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1846927    0.0451021    0.3038774
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2218834    0.0189088    0.3828653
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1787902   -0.0237601    0.3412660
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1660794    0.0042742    0.3015913
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3119187    0.0548829    0.4990506
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2475861   -0.0367915    0.4539629
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0788612   -0.0414989    0.1853120
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1229323    0.0832955    0.1608553
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0455704   -0.0069995    0.0953959
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.5727046    0.4721573    0.6540989
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1331542    0.0938662    0.1707388
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0458901   -0.0328730    0.1186469
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0872745    0.0324083    0.1390296
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1792222   -0.4740664    0.0566470
