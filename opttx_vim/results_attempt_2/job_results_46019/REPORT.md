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
![](/tmp/dfecb431-bec1-491b-a164-0ca333ead4da/f3824066-2b9a-4316-8808-27240fb8a5b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dfecb431-bec1-491b-a164-0ca333ead4da/f3824066-2b9a-4316-8808-27240fb8a5b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.7244665   0.6415143   0.8074187
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2015721   0.1176354   0.2855088
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5922240   0.4859205   0.6985274
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2284851   0.1125043   0.3444658
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6157130   0.5246751   0.7067509
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4687728   0.3633836   0.5741621
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8922319   0.8434953   0.9409686
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.5648798   0.4787447   0.6510148
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5936869   0.5250374   0.6623365
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7571537   0.6288653   0.8854421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6343716   0.5643232   0.7044199
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4267884   0.3696251   0.4839517
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4379439   0.3836088   0.4922790
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3196835   0.2631634   0.3762035
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.4892462   0.3936134   0.5848790
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5296634   0.4080191   0.6513077
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1509124   0.1294792   0.1723456
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3843629   0.3722579   0.3964679
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7487753   0.7086248   0.7889258
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2405828   0.2141464   0.2670191
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6104296   0.5833571   0.6375021
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6023274   0.5471482   0.6575066
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4855937   0.4751040   0.4960835
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.6855839   0.5790759   0.7920919
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3549589   0.2547700   0.4551478
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2171139   0.1230584   0.3111694
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3288567   0.2138577   0.4438558
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1320575   0.0388340   0.2252810
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4010526   0.3215297   0.4805754
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4193785   0.3338024   0.5049545
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5842875   0.5030771   0.6654979
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3272915   0.2474989   0.4070840
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.7842983   0.5621840   1.0064126
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3584774   0.2893745   0.4275802
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2871095   0.1683476   0.4058713
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3859011   0.3226098   0.4491925
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2429820   0.1924798   0.2934842
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2789109   0.2322424   0.3255794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2481654   0.1727653   0.3235654
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3138741   0.2102885   0.4174597
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1727955   0.0844139   0.2611772
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0932377   0.0800720   0.1064034
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2627121   0.2514166   0.2740075
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2922962   0.2375805   0.3470120
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1607728   0.1445408   0.1770047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2266925   0.2045596   0.2488255
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2772040   0.1837460   0.3706620
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4082291   0.3985312   0.4179270
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4257405   0.3640684   0.4874126
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4302703   0.2900107   0.5705299
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4723265   0.3440231   0.6006300
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2237405   0.1055693   0.3419118
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.2918314   0.1474604   0.4362025
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2485189   0.1052480   0.3917898
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.7919679   0.7017983   0.8821375
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.4433005   0.3258581   0.5607430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3887712   0.3009876   0.4765549
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7910180   0.6264688   0.9555673
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4897938   0.3984028   0.5811847
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2192073   0.1563202   0.2820943
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2164440   0.1581141   0.2747740
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1875304   0.1496722   0.2253887
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3298577   0.2179230   0.4417924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4473855   0.2974891   0.5972820
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0710591   0.0535635   0.0885547
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2121151   0.1996191   0.2246110
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7516234   0.7036799   0.7995668
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1098616   0.0859702   0.1337531
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5603156   0.5276000   0.5930312
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6094435   0.5507608   0.6681263
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1953815   0.1807337   0.2100294
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4221345   0.3212587   0.5230103


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.8191655   0.7372649   0.9101643
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.1547165   0.8244920   1.6172021
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9901045   0.8522524   1.1502543
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.4588846   0.9216146   2.3093648
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.0056720   0.8901167   1.1362287
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1617269   0.9637919   1.4003120
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0366508   0.9985342   1.0762224
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.1355751   1.0032852   1.2853083
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1646789   1.0606261   1.2789399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.0932406   0.9330391   1.2809486
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0475673   0.9557570   1.1481970
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0175668   0.9167310   1.1294940
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0904880   0.9909633   1.2000083
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0842138   0.9161465   1.2831130
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.1307017   0.9672001   1.3218426
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2733700   1.0240673   1.5833637
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.1098182   1.0117933   1.2173401
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0323150   1.0079883   1.0572289
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0227987   0.9791708   1.0683704
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.5867713   1.4305070   1.7601056
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1244480   1.0874135   1.1627438
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0585474   0.9856825   1.1367988
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0168731   1.0027086   1.0312378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8516465   0.7313977   0.9916653
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9478522   0.7696544   1.1673081
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.8933814   0.6386444   1.2497258
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9813614   0.7313178   1.3168968
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.3125596   0.6945274   2.4805540
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.0568217   0.9037014   1.2358862
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8581094   0.7387210   0.9967929
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.8743462   0.7802758   0.9797577
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.2966738   1.0591053   1.5875313
0-6 months    ki1000109-EE               PAKISTAN                       observed             optimal           0.9427047   0.7150438   1.2428501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1869373   1.0226765   1.3775815
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3563574   0.9105656   2.0203987
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9063501   0.7918475   1.0374100
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9818483   0.8440443   1.1421510
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0831804   0.9556481   1.2277321
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7853103   0.5863001   1.0518714
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0098988   0.7629105   1.3368484
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.6134560   0.9852249   2.6422804
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0672580   0.9729690   1.1706845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9823356   0.9508162   1.0148999
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1012540   0.9339399   1.2985423
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.1721468   1.0750165   1.2780532
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0544906   0.9789032   1.1359146
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2835501   0.9650001   1.7072545
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0063457   0.9916282   1.0212816
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8247454   0.7182401   0.9470439
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9757759   0.7556747   1.2599846
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8708965   0.6828370   1.1107492
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8792386   0.5671848   1.3629781
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.3568558   0.8789713   2.0945594
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.4678154   0.8806697   2.4464132
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0715695   0.9898764   1.1600045
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.8507065   0.6908179   1.0476012
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2940130   1.0437868   1.6042258
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9572495   0.7846037   1.1678848
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1717443   1.0061172   1.3646370
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.3675695   1.0677851   1.7515194
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2143825   0.9723063   1.5167286
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2087372   1.0112890   1.4447360
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.1798701   0.9010926   1.5448949
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2523509   0.9134090   1.7170652
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0815084   0.9233626   1.2667400
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1602085   1.1107226   1.2118990
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0199644   0.9692284   1.0733562
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.3621195   1.9140134   2.9151355
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1510992   1.1013473   1.2030985
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9826506   0.9087916   1.0625123
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1115288   1.0474290   1.1795513
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8971760   0.7108714   1.1323071


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.1310085   -0.2021037   -0.0599134
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0311865   -0.0368670    0.0992401
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0058603   -0.0946021    0.0828814
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1048483   -0.0004743    0.2101709
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0034923   -0.0716741    0.0786587
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0758132   -0.0109873    0.1626136
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0327010   -0.0004118    0.0658139
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0765836    0.0072230    0.1459442
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0977677    0.0425400    0.1529954
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0705975   -0.0490413    0.1902363
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0301753   -0.0279209    0.0882715
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0074973   -0.0370489    0.0520435
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0396287   -0.0022466    0.0815039
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0269217   -0.0269561    0.0807996
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0639453   -0.0121967    0.1400873
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1447941    0.0298291    0.2597590
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0165729    0.0024232    0.0307227
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0124207    0.0032531    0.0215883
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0170711   -0.0155540    0.0496962
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1411671    0.1159810    0.1663531
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0759667    0.0557511    0.0961824
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0352647   -0.0075778    0.0781072
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0081935    0.0013857    0.0150013
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1017088   -0.2058954    0.0024778
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0185103   -0.0925477    0.0555271
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0231484   -0.0964819    0.0501851
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0061294   -0.1028403    0.0905814
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0412758   -0.0432367    0.1257884
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0227885   -0.0402407    0.0858176
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0595058   -0.1224251    0.0034134
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0734179   -0.1391478   -0.0076881
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0970988    0.0313345    0.1628631
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0449366   -0.2617562    0.1718830
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0670128    0.0158958    0.1181298
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1023136   -0.0130405    0.2176677
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0361396   -0.0880372    0.0157580
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0044105   -0.0412024    0.0323813
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0231999   -0.0117747    0.0581746
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0532786   -0.1259571    0.0194000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0031070   -0.0849314    0.0911454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1060025    0.0198594    0.1921455
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0062710   -0.0025858    0.0151278
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0046406   -0.0132091    0.0039278
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0295962   -0.0186072    0.0777995
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0276765    0.0136557    0.0416974
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0123526   -0.0045270    0.0292322
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0786012   -0.0006472    0.1578497
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0025905   -0.0034224    0.0086034
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0746130   -0.1330239   -0.0162021
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0104229   -0.1204314    0.0995855
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0609790   -0.1733988    0.0514408
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0270192   -0.1254392    0.0714008
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1041417   -0.0222627    0.2305462
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1162610   -0.0096384    0.2421603
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0566807   -0.0051550    0.1185165
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0661819   -0.1590868    0.0267231
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1143038    0.0293892    0.1992184
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0338164   -0.1910402    0.1234074
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0841193    0.0099971    0.1582414
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0805739    0.0253891    0.1357588
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0464018   -0.0019998    0.0948034
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0391446    0.0055911    0.0726981
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0593315   -0.0291590    0.1478220
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1128982   -0.0276286    0.2534249
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0057919   -0.0054434    0.0170272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0339826    0.0246791    0.0432861
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0150057   -0.0233266    0.0533380
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1496447    0.1255877    0.1737016
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0846632    0.0602045    0.1091219
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0105735   -0.0581663    0.0370193
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0217907    0.0101900    0.0333914
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0434056   -0.1414617    0.0546505


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.2207545   -0.3563646   -0.0987028
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.1339866   -0.2128680    0.3816481
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0099944   -0.1733613    0.1306270
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.3145448   -0.0850523    0.5669805
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0056400   -0.1234482    0.1198955
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1392125   -0.0375684    0.2858735
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0353550   -0.0014680    0.0708241
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1193889    0.0032744    0.2219766
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1413943    0.0571607    0.2181024
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0852883   -0.0717665    0.2193286
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0454074   -0.0462911    0.1290693
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0172635   -0.0908325    0.1146478
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0829794   -0.0091191    0.1666724
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0776726   -0.0915285    0.2206454
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1155934   -0.0339122    0.2434803
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2146823    0.0235017    0.3684332
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0989515    0.0116558    0.1785369
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0313035    0.0079250    0.0541310
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0222905   -0.0212722    0.0639950
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.3697895    0.3009471    0.4318523
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1106747    0.0803866    0.1399653
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0553092   -0.0145255    0.1203369
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0165932    0.0027012    0.0302916
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1741961   -0.3672451   -0.0084047
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0550168   -0.2992844    0.1433282
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.1193427   -0.5658166    0.1998245
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0189926   -0.3673946    0.2406391
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.2381298   -0.4398280    0.5968642
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0537666   -0.1065602    0.1908640
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1653525   -0.3536911   -0.0032174
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1437117   -0.2815981   -0.0206605
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.2287960    0.0558068    0.3700912
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0607775   -0.3985157    0.1953977
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1574955    0.0221737    0.2740901
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2627312   -0.0982185    0.5050482
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1033264   -0.2628694    0.0360609
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0184873   -0.1847719    0.1244590
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0767928   -0.0464103    0.1854901
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2733820   -0.7056113    0.0493135
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0098018   -0.3107697    0.2519720
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.3802124   -0.0149967    0.6215390
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0630194   -0.0277820    0.1457989
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0179820   -0.0517279    0.0146811
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0919443   -0.0707327    0.2299057
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1468646    0.0697817    0.2175599
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0516748   -0.0215515    0.1196521
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2209108   -0.0362693    0.4142643
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0063057   -0.0084425    0.0208381
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.2124954   -0.3922920   -0.0559172
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0248255   -0.3233207    0.2063395
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1482421   -0.4644783    0.0997068
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1373477   -0.7630937    0.2663125
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2630020   -0.1376935    0.5225726
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3187154   -0.1354995    0.5912383
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0667894   -0.0102271    0.1379344
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.1754935   -0.4475595    0.0454383
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2272102    0.0419499    0.3766463
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0446597   -0.2745289    0.1437511
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1465715    0.0060800    0.2672044
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2687757    0.0634820    0.4290671
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1765362   -0.0284825    0.3406862
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1726903    0.0111630    0.3078320
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1524491   -0.1097638    0.3527068
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2015018   -0.0947998    0.4176109
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0753654   -0.0829982    0.2105720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1380859    0.0996852    0.1748487
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0195736   -0.0317485    0.0683428
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.5766514    0.4775376    0.6569628
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1312651    0.0920212    0.1688128
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0176557   -0.1003623    0.0588344
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1003382    0.0452814    0.1522200
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1146086   -0.4067242    0.1168473
