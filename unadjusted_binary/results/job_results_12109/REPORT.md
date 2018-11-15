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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       45     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       41     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       37     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       41     214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       47     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1       16     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       72     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1       18     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       59     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1       20     232
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       29     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       47     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       48     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       29     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       34     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       56     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       54     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       22     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1       13     225
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       37     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       40     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       38     302
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1       53     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       64     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       86     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       29     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       40     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       50     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       45     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       12     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       52     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       22     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1      120     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        4     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        7     217
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1      101     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1      103     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1      141     373
0-24 months   ki1000108-IRC              INDIA                          Low                    0       51     410
0-24 months   ki1000108-IRC              INDIA                          Low                    1       96     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 0       43     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 1       96     410
0-24 months   ki1000108-IRC              INDIA                          High                   0       53     410
0-24 months   ki1000108-IRC              INDIA                          High                   1       71     410
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0       24     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1      304     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        6     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1       27     376
0-24 months   ki1000109-EE               PAKISTAN                       High                   0        3     376
0-24 months   ki1000109-EE               PAKISTAN                       High                   1       12     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      158    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      538    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      170    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      344    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      145    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1      178    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       54     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      278     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       34     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0       65     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1      165     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0       70     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1      150     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0       76     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1      103     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      113     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1      101     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      136     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1      115     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      147     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       88     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      117     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1      125     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      122     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1      140     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      157     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       97     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       50    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       32    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1083    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      600    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      426    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      195    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       27     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       49     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       39     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       49     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0       60     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1       58     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      120     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      301     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       37     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       66     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       38     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       37     599
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4879   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1221   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6733   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1224   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2455   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      385   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1668   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1290   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1957   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1514   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     4852   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     2772   14053
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      132    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      504    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      117    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      303    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       65    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      220    1341
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      931    5852
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1     1025    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     2039    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1     1064    5852
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      648    5852
0-24 months   ki1135781-COHORTS          INDIA                          High                   1      145    5852
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      177    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      726    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      287    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      695    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      495    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      678    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0       84     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      177     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       86     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      169     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      125     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      173     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4488   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     5385   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     3941   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     4361   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     5341   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     3686   27202
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      902    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1248    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       32    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       48    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       26    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       51    2307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       42     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       28     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       42     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       24     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       58     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       20     214
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    0       51     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    1       12     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 0       75     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 1       15     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   0       61     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   1       18     232
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1       24     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1       29     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       45     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       18     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       76     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1       20     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       64     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1       12     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       46     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        7     225
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       60     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1       44     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       64     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1       43     302
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       50     302
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1       41     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      100     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       50     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       40     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       29     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       61     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       34     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       39     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       25     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       82     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       10     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        1     217
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       51     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       58     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       80     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       77     368
0-6 months    ki1000108-IRC              INDIA                          Low                    0       84     410
0-6 months    ki1000108-IRC              INDIA                          Low                    1       63     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 0       70     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 1       69     410
0-6 months    ki1000108-IRC              INDIA                          High                   0       82     410
0-6 months    ki1000108-IRC              INDIA                          High                   1       42     410
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0       82     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1      246     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 0       11     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 1       22     376
0-6 months    ki1000109-EE               PAKISTAN                       High                   0        5     376
0-6 months    ki1000109-EE               PAKISTAN                       High                   1       10     376
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      350    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1      345    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      301    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      211    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      228    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1       95    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      201     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      130     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       27     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       14     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    0      146     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    1       84     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      137     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       83     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   0      126     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   1       53     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      163     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      186     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       65     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       51     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      166     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       76     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      168     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       94     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      195     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       59     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       65    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       17    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1353    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      330    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      503    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      118    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       52     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       22     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       55     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       24     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   0       74     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   1       38     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      289     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1      132     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0       81     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       22     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0       62     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       13     599
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5385   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      713   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     7219   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      736   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2608   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      232   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2148   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      805   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     2502   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      963   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     5760   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     1853   14031
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      322    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1      192    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      245    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1       95    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      164    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       60    1078
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0     1436    5662
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1      473    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0     2483    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1      517    5662
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      676    5662
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       77    5662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      638    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1      265    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      735    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1      247    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      954    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1      219    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       49     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1       43     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       58     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1       30     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       65     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1       22     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5349   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     4504   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4604   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     3684   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6035   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2960   27136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1328    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      702    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       46    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       27    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0       36    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1       34    2173
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       21     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       17     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       23     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       17     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       32     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       21     131
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       41     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        4     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       64     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        3     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       53     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        2     167
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       27     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       23     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       29     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       19     141
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       27     141
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       16     141
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       55     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       20     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       53     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       10     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       39     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        6     183
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       28     149
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       23     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       33     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       24     149
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       29     149
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1       12     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       48     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       36     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       20     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       11     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       33     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       11     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       10     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       27     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       17     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        2     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        6     122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0        5     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       48     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0        6     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       45     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       17     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       64     185
6-24 months   ki1000108-IRC              INDIA                          Low                    0       51     236
6-24 months   ki1000108-IRC              INDIA                          Low                    1       33     236
6-24 months   ki1000108-IRC              INDIA                          Medium                 0       43     236
6-24 months   ki1000108-IRC              INDIA                          Medium                 1       27     236
6-24 months   ki1000108-IRC              INDIA                          High                   0       53     236
6-24 months   ki1000108-IRC              INDIA                          High                   1       29     236
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0       22      96
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1       58      96
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        6      96
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        5      96
6-24 months   ki1000109-EE               PAKISTAN                       High                   0        3      96
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        2      96
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      124     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      193     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      150     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      133     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      130     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       83     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       44     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      148     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       16     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       20     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0       38     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       81     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0       48     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       67     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0       61     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1       50     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       87     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       50     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      107     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       50     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      126     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       37     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      109     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       49     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      114     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       46     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      150     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       38     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       40    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       15    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      867    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      270    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      328    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       77    1597
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       22     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       27     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       37     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       25     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0       54     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1       20     185
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      116     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      169     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       36     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       44     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       34     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       24     423
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4768   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      508   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6637   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      488   14951
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2397   14951
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      153   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1159    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      485    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1388    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      551    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     3442    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      919    7944
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0       89     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      312     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0       88     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      208     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       30     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      160     887
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      821    4497
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      552    4497
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     1902    4497
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      547    4497
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      607    4497
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       68    4497
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      136    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      461    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      223    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      448    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      394    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      459    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0       82     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      134     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       82     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      139     708
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      120     708
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      151     708
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2371   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      881   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2423   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      677   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3439   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      726   10517
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      900    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      546    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       32    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       21    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       26    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       17    1542


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
![](/tmp/14e6b914-8e5d-4734-9b4b-fc98515cfc91/5e093229-b56f-40ed-9d39-97c23726afac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14e6b914-8e5d-4734-9b4b-fc98515cfc91/5e093229-b56f-40ed-9d39-97c23726afac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14e6b914-8e5d-4734-9b4b-fc98515cfc91/5e093229-b56f-40ed-9d39-97c23726afac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14e6b914-8e5d-4734-9b4b-fc98515cfc91/5e093229-b56f-40ed-9d39-97c23726afac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6428571   0.5303463   0.7553680
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6212121   0.5039086   0.7385157
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.5256410   0.4145661   0.6367160
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.2539683   0.1462513   0.3616852
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.2000000   0.1171820   0.2828180
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2531646   0.1570727   0.3492564
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6184211   0.5089587   0.7278834
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5925926   0.4853450   0.6998402
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5396825   0.4163252   0.6630399
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4166667   0.3178267   0.5155066
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2894737   0.1872849   0.3916625
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2452830   0.1291908   0.3613753
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.6442308   0.5520678   0.7363938
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6261682   0.5343434   0.7179930
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.5824176   0.4809246   0.6839106
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5733333   0.4940571   0.6526096
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5797101   0.4630571   0.6963632
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4736842   0.3731193   0.5742492
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9528302   0.9124175   0.9932429
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.9449541   0.9020810   0.9878273
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.8924051   0.8440236   0.9407866
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6530612   0.5760200   0.7301024
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6906475   0.6137121   0.7675828
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5725806   0.4854014   0.6597599
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7729885   0.7210155   0.8249615
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6692607   0.6396161   0.6989053
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5510836   0.4766961   0.6254711
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8373494   0.7976046   0.8770942
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7555556   0.6298411   0.8812700
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8292683   0.7139546   0.9445820
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7173913   0.6591541   0.7756285
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.6818182   0.6202219   0.7434144
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.5754190   0.5029521   0.6478859
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4719626   0.4050300   0.5388952
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4581673   0.3964842   0.5198504
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3744681   0.3125444   0.4363918
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5165289   0.4535262   0.5795317
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5343511   0.4739108   0.5947915
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3818898   0.3221010   0.4416786
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3902439   0.2846404   0.4958474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3565062   0.3336185   0.3793940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3140097   0.2774987   0.3505207
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.6447368   0.5369467   0.7525270
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.5568182   0.4528439   0.6607924
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.4915254   0.4011634   0.5818875
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7149644   0.6718063   0.7581224
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6407767   0.5480451   0.7335083
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4933333   0.3800903   0.6065764
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2001639   0.1758651   0.2244628
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1538268   0.1350237   0.1726299
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1355634   0.1171526   0.1539741
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4361055   0.4182341   0.4539769
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.4361855   0.4196872   0.4526839
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3635887   0.3527906   0.3743867
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7924528   0.7609226   0.8239830
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7214286   0.6785391   0.7643180
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7719298   0.7231982   0.8206614
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.5240286   0.5018942   0.5461631
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3428940   0.3261911   0.3595969
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1828499   0.1559441   0.2097558
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.8039867   0.7780901   0.8298833
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7077393   0.6792891   0.7361895
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5780051   0.5497375   0.6062728
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6781609   0.6214482   0.7348736
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6627451   0.6046824   0.7208078
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5805369   0.5244749   0.6365989
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5454269   0.5342733   0.5565805
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5252951   0.5142738   0.5363165
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4083306   0.3963985   0.4202626
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5804651   0.5552217   0.6057085
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6000000   0.4655404   0.7344596
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.6623377   0.5427794   0.7818960
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4000000   0.2849672   0.5150328
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3636364   0.2473096   0.4799631
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2564103   0.1592805   0.3535400
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.1904762   0.0933020   0.2876504
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.1666667   0.0895055   0.2438278
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2278481   0.1351552   0.3205410
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3157895   0.2110466   0.4205323
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3580247   0.2533816   0.4626678
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2857143   0.1739073   0.3975213
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2083333   0.1269135   0.2897532
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1578947   0.0757319   0.2400576
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1320755   0.0407211   0.2234299
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4230769   0.3279682   0.5181856
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.4018692   0.3088191   0.4949193
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4505495   0.3481534   0.5529455
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3333333   0.2577739   0.4088928
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4202899   0.3036368   0.5369429
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3578947   0.2613431   0.4544464
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5096154   0.4134072   0.6058236
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5420561   0.4475248   0.6365873
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.4904459   0.4121426   0.5687491
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.4285714   0.3484752   0.5086677
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.4964029   0.4131825   0.5796233
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.3387097   0.2553075   0.4221119
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.7500000   0.7030765   0.7969235
0-6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.6666667   0.5056158   0.8277176
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.6666667   0.4277896   0.9055438
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4964029   0.4659049   0.5269008
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4121094   0.3677555   0.4564632
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2941176   0.2411400   0.3470953
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3927492   0.3400750   0.4454235
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4000000   0.2566921   0.5433079
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3500000   0.2020103   0.4979897
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3652174   0.3029418   0.4274930
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3772727   0.3131726   0.4413729
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2960894   0.2291569   0.3630219
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2383178   0.1811940   0.2954415
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2589641   0.2047315   0.3131968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2170213   0.1642800   0.2697626
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3140496   0.2555339   0.3725653
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3587786   0.3006619   0.4168954
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2322835   0.1803165   0.2842504
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2073171   0.1195565   0.2950777
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1960784   0.1771062   0.2150507
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1900161   0.1591539   0.2208783
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2972973   0.1929612   0.4016334
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.3037975   0.2021924   0.4054025
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3392857   0.2514341   0.4271373
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3135392   0.2691861   0.3578923
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2135922   0.1343770   0.2928075
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1733333   0.0875927   0.2590739
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1169236   0.0980848   0.1357624
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0925204   0.0798750   0.1051658
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0816901   0.0688010   0.0945793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2726041   0.2565427   0.2886655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2779221   0.2630056   0.2928385
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2433994   0.2337594   0.2530395
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3735409   0.3317016   0.4153801
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2794118   0.2316944   0.3271291
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2678571   0.2098375   0.3258768
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2477737   0.2284057   0.2671417
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1723333   0.1588176   0.1858490
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1022576   0.0806149   0.1239004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2934662   0.2637618   0.3231706
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2515275   0.2243854   0.2786696
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1867008   0.1643975   0.2090040
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4673913   0.3652472   0.5695354
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3409091   0.2416858   0.4401324
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2528736   0.1613670   0.3443801
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4571197   0.4460173   0.4682220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4444981   0.4331580   0.4558382
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3290717   0.3182386   0.3399048
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3458128   0.3219490   0.3696766
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3698630   0.2359301   0.5037959
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4857143   0.3552717   0.6161569
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4473684   0.2886707   0.6060662
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4250000   0.2712162   0.5787838
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3962264   0.2640412   0.5284116
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4600000   0.3213613   0.5986387
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3958333   0.2569956   0.5346711
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3720930   0.2271048   0.5170813
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2666667   0.1663109   0.3670224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1587302   0.0682476   0.2492128
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1333333   0.0337407   0.2329259
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4509804   0.3139560   0.5880048
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4210526   0.2924468   0.5496585
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2926829   0.1529418   0.4324240
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.4285714   0.3224089   0.5347339
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3548387   0.1858775   0.5237999
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2500000   0.1216510   0.3783490
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9056604   0.8267531   0.9845676
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.8823529   0.7936881   0.9710178
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7901235   0.7012009   0.8790460
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3928571   0.2881941   0.4975202
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3857143   0.2714424   0.4999861
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3536585   0.2499567   0.4573603
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.6088328   0.5381122   0.6795534
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4699647   0.4127627   0.5271667
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3896714   0.2921804   0.4871623
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7708333   0.7112604   0.8304063
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.6666667   0.4776798   0.8556536
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7407407   0.5751020   0.9063795
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6806723   0.5967857   0.7645588
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5826087   0.4923499   0.6728675
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4504505   0.3577581   0.5431428
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3649635   0.2842609   0.4456661
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3184713   0.2455170   0.3914257
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2269939   0.1626172   0.2913705
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3101266   0.2379322   0.3823210
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2875000   0.2173013   0.3576987
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2021277   0.1446660   0.2595893
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2727273   0.1549895   0.3904650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2374670   0.2127250   0.2622090
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1901235   0.1518953   0.2283517
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.5510204   0.4113758   0.6906650
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.4032258   0.2807900   0.5256616
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.2702703   0.1688116   0.3717290
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5929825   0.5358784   0.6500865
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5500000   0.4408548   0.6591452
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4137931   0.2868921   0.5406941
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0962851   0.0798929   0.1126772
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0684912   0.0538970   0.0830855
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0600000   0.0433987   0.0766013
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2950122   0.2729659   0.3170584
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2841671   0.2640910   0.3042432
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2107315   0.1986266   0.2228363
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7780549   0.7373591   0.8187506
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7027027   0.6506038   0.7548016
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8421053   0.7902273   0.8939833
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4020393   0.3761016   0.4279770
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2233565   0.2068592   0.2398537
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1007407   0.0780322   0.1234493
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7721943   0.7385425   0.8058462
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6676602   0.6320103   0.7033101
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5381008   0.5046365   0.5715651
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6203704   0.5556064   0.6851344
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6289593   0.5652238   0.6926947
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5571956   0.4980149   0.6163763
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2709102   0.2542588   0.2875616
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2183871   0.2032682   0.2335060
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1743097   0.1617682   0.1868513
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3775934   0.3480943   0.4070924
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3962264   0.2355632   0.5568896
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3953488   0.2169574   0.5737403


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5934579   0.5274941   0.6594218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2327586   0.1782631   0.2872542
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5863636   0.5211379   0.6515894
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3333333   0.2716003   0.3950664
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6192053   0.5643489   0.6740617
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466052   0.3275063   0.3657041
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744574   0.6369015   0.7120134
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3967836   0.3886946   0.4048726
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7658464   0.7431730   0.7885198
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3817498   0.3693017   0.3941980
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6375921   0.6045496   0.6706347
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4937872   0.4859431   0.5016313
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5838752   0.5596094   0.6081410
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3364486   0.2729952   0.3999020
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1939655   0.1429760   0.2449551
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3227273   0.2608080   0.3846465
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1733333   0.1237620   0.2229046
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4238411   0.3680149   0.4796672
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.7393617   0.6949313   0.7837921
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1948868   0.1789895   0.2107841
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2787980   0.2428586   0.3147374
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2580714   0.2508309   0.2653119
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3218924   0.2939898   0.3497950
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1884493   0.1782621   0.1986366
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108196   0.4033665   0.4182726
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3511275   0.3280882   0.3741668
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4198473   0.3350088   0.5046859
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4113475   0.3298362   0.4928589
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1967213   0.1389688   0.2544739
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2266750   0.2061344   0.2472157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5602837   0.5129269   0.6076405
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2460977   0.2366251   0.2555702
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7666291   0.7387777   0.7944805
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2595063   0.2466928   0.2723199
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5988701   0.5627418   0.6349983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2171722   0.2078051   0.2265392
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3787289   0.3502539   0.4072039


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9663300   0.7469822   1.2500882
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.8176638   0.6214600   1.0758119
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               Low               0.7875000   0.4353306   1.4245639
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 Low               0.9968354   0.5642017   1.7612157
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.9582348   0.7439284   1.2342773
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.8726781   0.6535843   1.1652164
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.6947368   0.4540556   1.0629959
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5886792   0.3467012   0.9995443
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.9719626   0.7919115   1.1929507
0-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.9040512   0.7215664   1.1326866
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.0111223   0.7920795   1.2907396
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.8261934   0.6412806   1.0644256
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9917340   0.9320133   1.0552815
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.9365835   0.8742835   1.0033230
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               1.0575540   0.8991605   1.2438495
0-24 months   ki1000108-IRC              INDIA                          High                 Low               0.8767641   0.7231577   1.0629981
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8658094   0.8233186   0.9104930
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7129260   0.6114887   0.8311902
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9023181   0.7589551   1.0727618
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9903492   0.8550202   1.1470974
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.9504132   0.8417144   1.0731494
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.8020992   0.6904876   0.9317519
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9707704   0.7983490   1.1804300
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7934274   0.6381124   0.9865458
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0345038   0.8759686   1.2217312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.7393386   0.6062487   0.9016458
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9135472   0.6917432   1.2064716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8046498   0.5993680   1.0802400
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.8636364   0.6721728   1.1096369
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.7623660   0.5946277   0.9774214
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8962358   0.7661679   1.0483847
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6900111   0.5442216   0.8748555
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.7685042   0.6871619   0.8594753
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6772618   0.6037938   0.7596691
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0001836   0.9459328   1.0575457
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8337173   0.7925731   0.8769973
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9103741   0.8475240   0.9778852
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9741019   0.9040584   1.0495722
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.6543421   0.6134850   0.6979201
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.3489312   0.2994014   0.4066547
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8802873   0.8360905   0.9268204
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7189237   0.6780327   0.7622808
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               0.9772682   0.8657929   1.1030965
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.8560460   0.7533860   0.9726949
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9630898   0.9377456   0.9891190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7486439   0.7246466   0.7734360
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0336538   0.8216620   1.3003404
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1410465   0.9485002   1.3726797
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9090909   0.5912767   1.3977319
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6410256   0.3984043   1.0313992
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               Low               0.8750000   0.4393548   1.7426122
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 Low               1.1962025   0.6229069   2.2971338
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               1.1337449   0.7286495   1.7640544
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.9047619   0.5416879   1.5111913
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.7578947   0.3953468   1.4529128
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               0.6339623   0.2864409   1.4031103
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               0.9498726   0.6878753   1.3116592
0-6 months    ki0047075b-MAL-ED          PERU                           High                 Low               1.0649351   0.7735586   1.4660644
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2608696   0.8811260   1.8042732
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.0736842   0.7548236   1.5272412
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0636572   0.8225918   1.3753683
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.9623843   0.7515727   1.2323273
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               1.1582734   0.9011037   1.4888378
0-6 months    ki1000108-IRC              INDIA                          High                 Low               0.7903226   0.5801655   1.0766063
0-6 months    ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Medium               Low               0.8888889   0.6925814   1.1408385
0-6 months    ki1000109-EE               PAKISTAN                       High                 Low               0.8888889   0.6178437   1.2788404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8301913   0.7371620   0.9349610
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.5924979   0.4923822   0.7129699
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0184615   0.6947128   1.4930831
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.8911538   0.5718798   1.3886750
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.0330087   0.8120134   1.3141494
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.8107209   0.6107995   1.0760788
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0866339   0.7904049   1.4938838
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.9106383   0.6472959   1.2811175
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.1424267   0.8924905   1.4623558
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.7396395   0.5528084   0.9896133
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9457901   0.6126461   1.4600906
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9165483   0.5824304   1.4423366
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               1.0218642   0.6292908   1.6593385
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               1.1412338   0.7378453   1.7651592
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.6812298   0.4580443   1.0131641
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.5528283   0.3304848   0.9247600
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.7912897   0.6996654   0.8949127
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.6986627   0.5874582   0.8309179
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0195079   0.9414074   1.1040878
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8928678   0.8316782   0.9585594
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.7480086   0.6098315   0.9174942
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.7170759   0.5619030   0.9151008
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.6955271   0.6226222   0.7769687
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.4127058   0.3293470   0.5171629
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8570918   0.7392183   0.9937610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6361917   0.5439863   0.7440258
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               0.7293869   0.5068605   1.0496089
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.5410318   0.3545112   0.8256875
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9723889   0.9412928   1.0045122
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7198809   0.6928503   0.7479660
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0695469   0.7385899   1.5488034
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.4045584   1.0638147   1.8544436
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9500000   0.5723429   1.5768519
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.8856826   0.5442425   1.4413310
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8605072   0.5418954   1.3664496
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.8088979   0.4942594   1.3238307
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.5952381   0.3006358   1.1785301
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5000000   0.2166352   1.1540137
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.9336384   0.6068398   1.4364265
6-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.6489926   0.3685195   1.1429284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.8279570   0.4840646   1.4161598
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.5833333   0.3298792   1.0315224
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9742647   0.8529358   1.1128525
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.8724280   0.7566898   1.0058688
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.9818182   0.6591659   1.4624040
6-24 months   ki1000108-IRC              INDIA                          High                 Low               0.9002217   0.6057464   1.3378522
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7719109   0.6581572   0.9053254
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6400302   0.4722472   0.8674242
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.8648649   0.6446754   1.1602602
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9609610   0.7585001   1.2174632
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8559313   0.7022067   1.0433087
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.6617729   0.5206423   0.8411598
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8726115   0.6346667   1.1997648
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.6219632   0.4340929   0.8911416
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9270408   0.6615863   1.2990062
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6517586   0.4513482   0.9411565
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8707124   0.5584759   1.3575163
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.6971193   0.4329936   1.1223616
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.7317802   0.4927369   1.0867913
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.4904905   0.3118342   0.7715026
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.9275148   0.7439184   1.1564221
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6978168   0.5059890   0.9623692
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.7113380   0.6042108   0.8374590
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6231496   0.4899980   0.7924837
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9632386   0.8691034   1.0675697
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7143146   0.6500619   0.7849180
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9031532   0.8248145   0.9889323
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0823212   0.9982952   1.1734196
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.5555588   0.5036617   0.6128033
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.2505743   0.1982025   0.3167846
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8646272   0.8070427   0.9263205
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6968464   0.6458880   0.7518253
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0138448   0.8765692   1.1726186
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.8981660   0.7738882   1.0424014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.8061235   0.7374866   0.8811485
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.6434225   0.5893756   0.7024256
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0493469   0.6926306   1.5897781
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0470227   0.6624209   1.6549246


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0493992   -0.1428258    0.0440274
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0212096   -0.1121553    0.0697360
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0320574   -0.1212646    0.0571498
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0833333   -0.1557475   -0.0109192
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0250255   -0.1002123    0.0501614
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0287473   -0.0864021    0.0289074
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0278972   -0.0656057    0.0098113
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0115978   -0.0735606    0.0503650
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0815338   -0.1119526   -0.0511151
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0095982   -0.0291892    0.0099928
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0528444   -0.1005400   -0.0051488
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0376769   -0.0932734    0.0179196
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0389564   -0.0909268    0.0130140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0436387   -0.1473225    0.0600451
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0915454   -0.1850073    0.0019166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0405069   -0.0660966   -0.0149173
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0326786   -0.0449170   -0.0204402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0393219   -0.0551448   -0.0234990
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0266064   -0.0503812   -0.0028317
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1422788   -0.1600938   -0.1244638
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1175904   -0.1409369   -0.0942438
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0405688   -0.0879563    0.0068188
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0516397   -0.0596366   -0.0436428
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0034100   -0.0029968    0.0098169
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0635514   -0.1562988    0.0291960
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0034893   -0.0796631    0.0866418
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0069378   -0.0780625    0.0919381
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0350000   -0.0935627    0.0235627
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0007641   -0.0762560    0.0777842
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0265393   -0.0289749    0.0820534
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0012542   -0.0802315    0.0827399
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0041812   -0.0682864    0.0599240
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0106383   -0.0289252    0.0076486
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0709127   -0.0995666   -0.0422588
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0033262   -0.0269950    0.0203427
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0154559   -0.0647832    0.0338714
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0002537   -0.0473517    0.0478590
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0119388   -0.0599768    0.0360993
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0124302   -0.0986002    0.0737397
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0196838   -0.0695161    0.1088838
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0347412   -0.0569582   -0.0125242
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0174149   -0.0263557   -0.0084741
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0145327   -0.0287386   -0.0003268
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0516485   -0.0809699   -0.0223270
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0593244   -0.0743560   -0.0442928
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0544211   -0.0787075   -0.0301347
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1115861   -0.1925396   -0.0306325
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0463001   -0.0544073   -0.0381928
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0053147   -0.0012809    0.0119102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0275211   -0.1608306    0.1057884
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0486525   -0.1592558    0.0619508
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0699454   -0.1417192    0.0018285
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0550072   -0.1651463    0.0551318
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0637916   -0.1344722    0.0068891
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0570117   -0.1300898    0.0160664
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0157385   -0.0993816    0.0679046
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1057578   -0.1581624   -0.0533532
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0136317   -0.0429421    0.0156787
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1067592   -0.1768536   -0.0366648
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0651823   -0.1313365    0.0009718
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0472807   -0.1058552    0.0112938
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0460523   -0.1615048    0.0694002
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.1618312   -0.2807159   -0.0429465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0326988   -0.0660072    0.0006097
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0194340   -0.0276183   -0.0112498
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0489145   -0.0682690   -0.0295600
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0114258   -0.0419938    0.0191423
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1425330   -0.1631762   -0.1218898
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1272155   -0.1573794   -0.0970516
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0215003   -0.0757253    0.0327247
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0537380   -0.0662236   -0.0412524
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0011356   -0.0065309    0.0088021


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0832396   -0.2533604    0.0637904
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0911229   -0.5606858    0.2371629
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0546716   -0.2186072    0.0872103
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2500000   -0.4887271   -0.0495544
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0404155   -0.1693511    0.0743034
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0527875   -0.1643891    0.0481176
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0301613   -0.0719843    0.0100299
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0180802   -0.1194331    0.0740962
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1179164   -0.1629287   -0.0746463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0115955   -0.0355909    0.0118439
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0795195   -0.1542057   -0.0096660
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0867560   -0.2227777    0.0341346
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0815716   -0.1962398    0.0221048
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1259032   -0.4685702    0.1368080
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.1654858   -0.3492384   -0.0067585
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0600586   -0.0992018   -0.0223093
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1951131   -0.2692617   -0.1252961
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0991016   -0.1397354   -0.0599164
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0347412   -0.0663564   -0.0040633
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.3727017   -0.4212962   -0.3257686
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1713156   -0.2068650   -0.1368132
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0636281   -0.1408239    0.0083441
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1045789   -0.1209938   -0.0884043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0058404   -0.0052019    0.0167613
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1888889   -0.4997305    0.0575261
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0179894   -0.5195027    0.3653550
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0214974   -0.2807342    0.2524075
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2019231   -0.5888018    0.0907493
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0018029   -0.1975084    0.1679411
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0737463   -0.0941224    0.2158593
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0024550   -0.1705089    0.1498603
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0098522   -0.1727892    0.1304477
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0143885   -0.0394994    0.0101158
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1666611   -0.2415102   -0.0963246
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0085413   -0.0711919    0.0504452
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0441897   -0.1951998    0.0877407
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0010633   -0.2198061    0.1819400
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0395178   -0.2113250    0.1079212
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0637818   -0.6119741    0.2979839
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0620978   -0.2660437    0.3051894
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1246106   -0.2069634   -0.0478769
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1750090   -0.2600881   -0.0956742
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0563128   -0.1128125   -0.0026817
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1604526   -0.2553308   -0.0727453
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.3148029   -0.3962826   -0.2380780
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2276603   -0.3333267   -0.1303681
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.3136156   -0.5650474   -0.1025774
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1127017   -0.1326856   -0.0930705
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0151360   -0.0038388    0.0337522
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0655502   -0.4356502    0.2091407
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1182759   -0.4229663    0.1211732
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.3555556   -0.7676234   -0.0395488
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1389166   -0.4548355    0.1084003
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1748768   -0.3869061    0.0047375
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0671794   -0.1580136    0.0165298
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0417335   -0.2889429    0.1580630
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.2102227   -0.3194913   -0.1100027
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0180027   -0.0575751    0.0200890
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1860199   -0.3174952   -0.0676647
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2174330   -0.4594802   -0.0155281
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1798801   -0.4248655    0.0229836
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.2031642   -0.8371203    0.2120254
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.4158163   -0.7659075   -0.1351307
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0583611   -0.1198781   -0.0002233
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2528790   -0.3730429   -0.1432315
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1987604   -0.2799569   -0.1227148
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0149039   -0.0555926    0.0242164
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.5492467   -0.6312892   -0.4713303
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1972399   -0.2463577   -0.1500577
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0359015   -0.1305811    0.0508493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.2474443   -0.3057087   -0.1917797
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0029984   -0.0174529    0.0230385
