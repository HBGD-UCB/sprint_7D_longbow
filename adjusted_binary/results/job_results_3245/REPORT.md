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
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0       48     752
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1      608     752
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       12     752
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1       54     752
0-24 months   ki1000109-EE               PAKISTAN                       High                   0        6     752
0-24 months   ki1000109-EE               PAKISTAN                       High                   1       24     752
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      240    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      602    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       74    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1      132    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       76    1198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       74    1198
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     8969   54345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1    10760   54345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     7875   54345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     8717   54345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0    10656   54345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     7368   54345
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1751    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     2433    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       59    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       94    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       49    4484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       98    4484
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
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0      164     752
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1      492     752
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 0       22     752
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 1       44     752
0-6 months    ki1000109-EE               PAKISTAN                       High                   0       10     752
0-6 months    ki1000109-EE               PAKISTAN                       High                   1       20     752
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      578    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1      264    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      162    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       44    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      124    1198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       26    1198
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0    10698   54272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     9008   54272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     9208   54272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     7368   54272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0    12070   54272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     5920   54272
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     2656    4346
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1404    4346
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       92    4346
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       54    4346
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0       72    4346
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1       68    4346
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
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0       44     192
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1      116     192
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       12     192
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1       10     192
6-24 months   ki1000109-EE               PAKISTAN                       High                   0        6     192
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        4     192
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      232     846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      338     846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       72     846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       88     846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       68     846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       48     846
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4735   20975
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     1752   20975
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4839   20975
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     1349   20975
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6852   20975
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     1448   20975
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1747    2954
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1029    2954
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       59    2954
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       40    2954
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       49    2954
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       30    2954


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/78306541-a8d6-4616-9137-3d0e6bee21f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78306541-a8d6-4616-9137-3d0e6bee21f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/78306541-a8d6-4616-9137-3d0e6bee21f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78306541-a8d6-4616-9137-3d0e6bee21f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.5951083   0.4995718   0.6906448
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6050750   0.4966112   0.7135388
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.5827342   0.4848213   0.6806471
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.2505335   0.1480241   0.3530428
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.1998558   0.1194668   0.2802449
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2590917   0.1654387   0.3527447
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6160154   0.5137248   0.7183061
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5841795   0.4851486   0.6832103
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5519089   0.4352672   0.6685507
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4065795   0.3104499   0.5027092
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2769117   0.1791085   0.3747148
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2139892   0.1102596   0.3177187
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.5448968   0.4646587   0.6251349
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.5399773   0.4630152   0.6169393
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.4415589   0.3602485   0.5228692
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5499802   0.4837480   0.6162124
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5106407   0.4329700   0.5883114
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4457331   0.3710128   0.5204535
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9528302   0.9124175   0.9932429
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.9449541   0.9020810   0.9878273
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.8924051   0.8440236   0.9407866
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6649331   0.6020364   0.7278298
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.7153379   0.6558043   0.7748714
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5857675   0.5165733   0.6549617
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.9268293   0.8986092   0.9550493
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.8181818   0.6864129   0.9499507
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.8000000   0.5973061   1.0026939
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7166201   0.6636718   0.7695684
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6407177   0.6155553   0.6658801
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5481790   0.4895353   0.6068227
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8373494   0.7976046   0.8770942
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7555556   0.6298411   0.8812700
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8292683   0.7139546   0.9445820
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7084483   0.6621244   0.7547721
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.6884270   0.6393770   0.7374770
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.6341169   0.5802770   0.6879567
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4252803   0.3797668   0.4707939
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4136040   0.3684860   0.4587220
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3902594   0.3469039   0.4336148
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5394501   0.4970550   0.5818452
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5401438   0.4992324   0.5810552
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.4845680   0.4429288   0.5262072
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3449155   0.2751017   0.4147293
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3509036   0.3284611   0.3733460
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3371637   0.3033639   0.3709635
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.6143031   0.5256612   0.7029450
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.5136715   0.4230920   0.6042509
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.4678320   0.3872141   0.5484499
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7256169   0.6843117   0.7669221
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.7082881   0.6374240   0.7791521
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6299140   0.5637123   0.6961157
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1852655   0.1633829   0.2071481
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1569885   0.1391047   0.1748723
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1451149   0.1262950   0.1639348
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4215347   0.4058836   0.4371858
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.4256724   0.4116751   0.4396696
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3695107   0.3598219   0.3791995
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7879713   0.7612125   0.8147300
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7635832   0.7337300   0.7934364
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8212494   0.7926921   0.8498067
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4836025   0.4643371   0.5028679
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3573668   0.3421762   0.3725574
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2596244   0.2383089   0.2809400
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7655936   0.7423703   0.7888169
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7040345   0.6798499   0.7282191
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6106106   0.5870624   0.6341587
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6565324   0.6121251   0.7009398
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6578248   0.6109920   0.7046577
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5960701   0.5509926   0.6411477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5190183   0.5089633   0.5290733
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4977391   0.4875646   0.5079136
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4863224   0.4762975   0.4963474
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5829570   0.5580076   0.6079064
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5987550   0.4840658   0.7134443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.6443397   0.5516884   0.7369910
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4095825   0.3251440   0.4940209
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3745325   0.2845259   0.4645391
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2879356   0.2118323   0.3640389
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.1967582   0.1079349   0.2855814
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.1712532   0.0973106   0.2451959
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2486981   0.1613043   0.3360919
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3131234   0.2087459   0.4175009
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3553586   0.2512436   0.4594736
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2918915   0.1807721   0.4030109
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2083333   0.1269135   0.2897532
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1578947   0.0757319   0.2400576
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1320755   0.0407211   0.2234299
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2793532   0.2080555   0.3506509
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.2703235   0.2003008   0.3403463
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2592137   0.1844889   0.3339385
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3726494   0.3100570   0.4352418
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4713524   0.3994099   0.5432950
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3949139   0.3262628   0.4635650
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.4179475   0.3479183   0.4879767
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.4343010   0.3664748   0.5021271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.4362549   0.3731924   0.4993174
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.4446989   0.3825186   0.5068791
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5032996   0.4406780   0.5659211
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.3438141   0.2821530   0.4054751
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.7494067   0.7026229   0.7961904
0-6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.6657798   0.5095278   0.8220319
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.6736780   0.4477872   0.8995688
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4245169   0.3977436   0.4512901
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4034172   0.3661994   0.4406349
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3210756   0.2683676   0.3737835
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3913725   0.3390908   0.4436542
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3844316   0.2535104   0.5153527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3787214   0.2271614   0.5302814
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3258326   0.2779364   0.3737288
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3664721   0.3162023   0.4167420
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3166160   0.2653847   0.3678474
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2395821   0.1975092   0.2816549
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2424199   0.2000471   0.2847927
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2526640   0.2116383   0.2936897
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2999159   0.2549458   0.3448860
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3225845   0.2789344   0.3662346
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2955882   0.2535647   0.3376117
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2003456   0.1225718   0.2781193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1935492   0.1747593   0.2123391
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2006190   0.1705812   0.2306567
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2536999   0.1649623   0.3424375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.2815291   0.1901345   0.3729237
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3219841   0.2413904   0.4025779
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3121878   0.2691667   0.3552088
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1916217   0.1281129   0.2551304
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1321221   0.0756658   0.1885784
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1026442   0.0865724   0.1187159
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0986111   0.0855340   0.1116882
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0932813   0.0806033   0.1059593
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2598791   0.2473564   0.2724018
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2687796   0.2572105   0.2803487
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2512063   0.2427450   0.2596676
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3735615   0.3406972   0.4064257
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3570832   0.3231325   0.3910339
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3785990   0.3451390   0.4120590
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2067968   0.1929868   0.2206067
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1808845   0.1691671   0.1926019
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1510212   0.1372317   0.1648107
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2445362   0.2224826   0.2665899
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2397497   0.2188449   0.2606544
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2099552   0.1914274   0.2284830
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4606758   0.3685576   0.5527940
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3666975   0.2781390   0.4552559
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3032467   0.2194701   0.3870233
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4319444   0.4225487   0.4413400
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4153561   0.4057987   0.4249134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4027927   0.3937925   0.4117929
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3476776   0.3242464   0.3711088
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3460593   0.2603098   0.4318088
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4574234   0.3832696   0.5315771
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4103709   0.2740387   0.5467030
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4262944   0.2911485   0.5614402
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3725502   0.2546639   0.4904364
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4506749   0.3195526   0.5817972
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4041194   0.2715763   0.5366625
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3756462   0.2397971   0.5114953
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2666667   0.1663109   0.3670224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1587302   0.0682476   0.2492128
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1333333   0.0337407   0.2329259
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4526084   0.3154634   0.5897533
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4200782   0.2917619   0.5483945
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2921183   0.1527590   0.4314776
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.4292725   0.3233820   0.5351631
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3538609   0.1854949   0.5222270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2496001   0.1211089   0.3780913
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9056604   0.8267531   0.9845676
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.8823529   0.7936881   0.9710178
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7901235   0.7012009   0.8790460
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3957748   0.2963247   0.4952250
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3944157   0.2868951   0.5019363
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3591588   0.2602852   0.4580325
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5535740   0.4898389   0.6173092
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4289045   0.3814870   0.4763221
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3250995   0.2536229   0.3965761
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7708333   0.7112604   0.8304063
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.6666667   0.4776798   0.8556536
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7407407   0.5751020   0.9063795
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6833378   0.6020655   0.7646100
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5737196   0.4861452   0.6612941
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4771050   0.3896009   0.5646091
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3227199   0.2596948   0.3857451
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3014180   0.2414820   0.3613541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2414042   0.1864429   0.2963655
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3061321   0.2342276   0.3780365
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2865257   0.2174675   0.3555839
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2053366   0.1478502   0.2628229
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2385802   0.1401151   0.3370454
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2363048   0.2117191   0.2608905
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1833390   0.1465790   0.2200989
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.5638811   0.4445177   0.6832445
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.3880004   0.2795213   0.4964796
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.2714806   0.1746324   0.3683289
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6105069   0.5566920   0.6643218
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6174306   0.5330360   0.7018251
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5565555   0.4759274   0.6371836
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0939199   0.0783606   0.1094793
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0673008   0.0538468   0.0807548
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0603618   0.0460225   0.0747011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2917152   0.2714923   0.3119380
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2801923   0.2625639   0.2978207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2113374   0.2001786   0.2224961
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7719861   0.7341808   0.8097914
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7306005   0.6869504   0.7742507
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8520935   0.8098783   0.8943087
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3805497   0.3582917   0.4028077
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2280425   0.2122244   0.2438606
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1090186   0.0912724   0.1267649
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7461158   0.7178601   0.7743714
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6687255   0.6386576   0.6987934
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5661647   0.5381150   0.5942144
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5799713   0.5329320   0.6270105
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6015990   0.5525537   0.6506442
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5388217   0.4931786   0.5844648
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2411275   0.2269745   0.2552806
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2152814   0.2014075   0.2291553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2041446   0.1919627   0.2163265
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3708810   0.3414700   0.4002921
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3949701   0.2355870   0.5543531
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3836249   0.1969347   0.5703151


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
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9122340   0.8835956   0.9408724
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4939737   0.4861261   0.5018213
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5854148   0.5611270   0.6097026
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2168772   0.2075237   0.2262307
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3720379   0.3435585   0.4005173


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.0167477   0.8117158   1.2735688
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.9792070   0.7928749   1.2093286
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               Low               0.7977211   0.4497588   1.4148895
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 Low               1.0341599   0.5994072   1.7842407
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.9483196   0.7561680   1.1892992
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.8959336   0.6910224   1.1616079
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.6810763   0.4451753   1.0419827
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5263156   0.3072786   0.9014885
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.9909716   0.8126865   1.2083684
0-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.8103532   0.6452773   1.0176591
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.9284709   0.7769807   1.1094977
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.8104530   0.6717411   0.9778083
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9917340   0.9320133   1.0552815
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.9365835   0.8742835   1.0033230
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               1.0758043   0.9573584   1.2089045
0-24 months   ki1000108-IRC              INDIA                          High                 Low               0.8809420   0.7649805   1.0144819
0-24 months   ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Medium               Low               0.8827751   0.7493204   1.0399983
0-24 months   ki1000109-EE               PAKISTAN                       High                 Low               0.8631579   0.6687480   1.1140842
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8940828   0.8451807   0.9458143
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7649506   0.6811289   0.8590877
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9023181   0.7589551   1.0727618
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9903492   0.8550202   1.1470974
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.9717392   0.8873012   1.0642126
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.8950786   0.8087296   0.9906472
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9725444   0.8493010   1.1136718
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.9176520   0.8036159   1.0478703
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0012860   0.9111046   1.1003935
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8982629   0.8114757   0.9943320
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0173609   0.8235193   1.2568295
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9775255   0.7806559   1.2240425
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.8361857   0.6706271   1.0426159
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.7615654   0.6116322   0.9482527
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.9761185   0.8703062   1.0947955
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8681083   0.7702569   0.9783905
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8473702   0.7632922   0.9407096
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.7832806   0.7017963   0.8742259
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0098158   0.9630149   1.0588911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8765843   0.8399630   0.9148023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9690496   0.9231547   1.0172260
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0422327   0.9951829   1.0915068
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7389679   0.7002105   0.7798706
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.5368550   0.4917827   0.5860582
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9195930   0.8794168   0.9616046
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7975649   0.7604848   0.8364529
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0019685   0.9127495   1.0999085
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.9079066   0.8247525   0.9994446
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9590010   0.9371281   0.9813845
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9370044   0.9170854   0.9573560
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0270999   0.8456035   1.2475517
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1052955   0.9551956   1.2789820
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9144251   0.6778755   1.2335204
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7029979   0.5202640   0.9499140
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               Low               0.8703741   0.4684296   1.6172142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 Low               1.2639784   0.7166543   2.2293054
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               1.1348836   0.7289073   1.7669747
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.9321932   0.5626524   1.5444421
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.7578947   0.3953468   1.4529128
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 Low               0.6339623   0.2864409   1.4031103
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               0.9676765   0.6865919   1.3638347
0-6 months    ki0047075b-MAL-ED          PERU                           High                 Low               0.9279068   0.6427714   1.3395293
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2648684   1.0352081   1.5454786
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.0597465   0.8598117   1.3061729
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0391280   0.8339448   1.2947943
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0438030   0.8454846   1.2886394
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               1.1317762   0.9587520   1.3360257
0-6 months    ki1000108-IRC              INDIA                          High                 Low               0.7731392   0.6311659   0.9470476
0-6 months    ki1000109-EE               PAKISTAN                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Medium               Low               0.8884093   0.6963364   1.1334622
0-6 months    ki1000109-EE               PAKISTAN                       High                 Low               0.8989485   0.6395639   1.2635303
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9502972   0.8526519   1.0591248
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7563317   0.6502566   0.8797106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9822651   0.6847225   1.4091031
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9676750   0.6350626   1.4744923
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.1247254   0.9358930   1.3516579
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.9717139   0.7946217   1.1882735
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0118450   0.8173927   1.2525562
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0546033   0.8619079   1.2903793
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0755831   0.9064408   1.2762875
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.9855703   0.8263528   1.1754650
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9660768   0.6477652   1.4408066
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.0013647   0.6609092   1.5171997
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               1.1096937   0.6899511   1.7847931
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               1.2691538   0.8272570   1.9470989
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.6138026   0.4288322   0.8785572
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.4232136   0.2701717   0.6629479
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.9607082   0.8461939   1.0907195
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9087831   0.7842835   1.0530461
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0342488   0.9746617   1.0974789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9666277   0.9171889   1.0187313
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9558887   0.8562060   1.0671768
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0134852   0.9106787   1.1278976
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.8746970   0.8112274   0.9431324
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.7302879   0.6635381   0.8037525
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9804259   0.8748733   1.0987134
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.8585852   0.7659919   0.9623711
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               0.7959990   0.5854152   1.0823332
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.6582649   0.4697156   0.9225003
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9615962   0.9387918   0.9849546
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9325106   0.9115781   0.9539238
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9953453   0.7767595   1.2754427
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.3156538   1.1130677   1.5551119
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.0388028   0.6680275   1.6153694
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.9078378   0.5881760   1.4012294
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8966982   0.5849110   1.3746837
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.8335192   0.5300390   1.3107605
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.5952381   0.3006358   1.1785301
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.5000000   0.2166352   1.1540137
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.9281273   0.6037175   1.4268599
6-24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.6454108   0.3668497   1.1354924
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               0.8243270   0.4826521   1.4078774
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.5814491   0.3286370   1.0287431
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9742647   0.8529358   1.1128525
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               0.8724280   0.7566898   1.0058688
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.9965659   0.6892678   1.4408674
6-24 months   ki1000108-IRC              INDIA                          High                 Low               0.9074828   0.6265024   1.3144803
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7747916   0.6651077   0.9025637
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.5872738   0.4443120   0.7762351
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.8648649   0.6446754   1.1602602
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9609610   0.7585001   1.2174632
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.8395843   0.6932987   1.0167360
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.6981979   0.5629817   0.8658902
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9339925   0.7109859   1.2269470
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7480299   0.5576501   1.0034047
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9359545   0.6695769   1.3083050
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6707450   0.4655421   0.9663977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9904627   0.6474027   1.5153108
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7684583   0.4856716   1.2159000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               Low               0.6880891   0.4890387   0.9681578
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 Low               0.4814501   0.3195295   0.7254237
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0113408   0.8603663   1.1888079
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9116285   0.7696336   1.0798210
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.7165760   0.6186902   0.8299486
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6426941   0.5293502   0.7803072
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9604997   0.8752486   1.0540543
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7244648   0.6645184   0.7898189
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9463908   0.8773599   1.0208532
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1037680   1.0302634   1.1825168
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.5992450   0.5481281   0.6551290
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.2864767   0.2411950   0.3402595
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8962758   0.8459592   0.9495851
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7588162   0.7138777   0.8065835
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0372909   0.9299610   1.1570081
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.9290490   0.8313791   1.0381930
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.8928114   0.8210371   0.9708602
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8466251   0.7846400   0.9135069
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0649508   0.7045638   1.6096772
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0343611   0.6319064   1.6931351


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0016504   -0.0757062    0.0724054
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0177748   -0.1042235    0.0686738
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0296518   -0.1093323    0.0500287
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0732462   -0.1439261   -0.0025663
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.0743085    0.0113344    0.1372826
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0053942   -0.0480206    0.0372321
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0278972   -0.0656057    0.0098113
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0234697   -0.0703629    0.0234235
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0145952   -0.0296655    0.0004751
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0251654   -0.0507168    0.0003860
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0095982   -0.0291892    0.0099928
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0439014   -0.0805584   -0.0072443
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0090054   -0.0251001    0.0431109
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0618775   -0.0924623   -0.0312928
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0016897   -0.0671609    0.0705403
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.0611116   -0.1373748    0.0151515
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0511594   -0.0766517   -0.0256672
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0177801   -0.0284072   -0.0071530
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0247511   -0.0383873   -0.0111149
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0221249   -0.0416549   -0.0025948
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1018527   -0.1172029   -0.0865025
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0791973   -0.1000791   -0.0583155
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0189403   -0.0549648    0.0170842
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0250446   -0.0321790   -0.0179103
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0024578   -0.0026563    0.0075719
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0731339   -0.1368665   -0.0094013
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0027927   -0.0786457    0.0730604
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0096039   -0.0748387    0.0940465
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0350000   -0.0935627    0.0235627
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1444879    0.0884828    0.2004930
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0127768   -0.0519486    0.0263950
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0929221    0.0340636    0.1517805
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0203086   -0.0646268    0.0240096
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0100450   -0.0286233    0.0085334
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0009733   -0.0244898    0.0264364
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0019494   -0.0246804    0.0207815
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0239290   -0.0120582    0.0599161
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0010106   -0.0313812    0.0293599
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0021949   -0.0290302    0.0334200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0054587   -0.0818177    0.0709002
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0632813   -0.0132806    0.1398431
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0333898   -0.0556471   -0.0111324
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0031355   -0.0108336    0.0045626
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0018077   -0.0123276    0.0087123
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0516691   -0.0718052   -0.0315329
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0183475   -0.0272424   -0.0094525
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0054911   -0.0224160    0.0114338
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1048706   -0.1766299   -0.0331112
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0211248   -0.0273335   -0.0149161
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0034499   -0.0009876    0.0078873
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0094765   -0.1001200    0.1190729
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0393274   -0.1410516    0.0623968
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0699454   -0.1417192    0.0018285
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0566352   -0.1667389    0.0534684
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0644927   -0.1349659    0.0059806
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0570117   -0.1300898    0.0160664
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0186562   -0.0977609    0.0604485
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0504990   -0.0974831   -0.0035149
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0136317   -0.0429421    0.0156787
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1094247   -0.1762247   -0.0426248
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0229388   -0.0736900    0.0278125
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0432862   -0.1014083    0.0148358
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0119052   -0.1084829    0.0846725
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.1746919   -0.2757300   -0.0736538
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0502232   -0.0824743   -0.0179721
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0170689   -0.0240694   -0.0100684
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0456175   -0.0637243   -0.0275107
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0053570   -0.0333435    0.0226295
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1210434   -0.1386186   -0.1034681
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1011370   -0.1269520   -0.0753220
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0188988   -0.0200266    0.0578241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0242503   -0.0356647   -0.0128359
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0011569   -0.0063650    0.0086788


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0027809   -0.1356903    0.1145741
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0763660   -0.5203399    0.2379574
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0505690   -0.1958569    0.0770675
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2197386   -0.4535535   -0.0235345
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1200062    0.0124986    0.2158097
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0099052   -0.0914075    0.0655108
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0301613   -0.0719843    0.0100299
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0365877   -0.1126447    0.0342703
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -0.0159994   -0.0328101    0.0005377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0363949   -0.0735220   -0.0005518
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0115955   -0.0355909    0.0118439
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0660621   -0.1235985   -0.0114720
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0207361   -0.0607167    0.0959341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1295667   -0.1980787   -0.0649726
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0048750   -0.2149529    0.1849283
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.1104710   -0.2597725    0.0211361
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0758527   -0.1153616   -0.0377434
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1061594   -0.1720974   -0.0439308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0623793   -0.0973704   -0.0285039
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0288895   -0.0549011   -0.0035192
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.2668048   -0.3090651   -0.2259088
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1153813   -0.1470328   -0.0846031
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0297060   -0.0880924    0.0255474
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0507003   -0.0653482   -0.0362538
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0041984   -0.0045821    0.0129022
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2173701   -0.4329742   -0.0342056
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.0143978   -0.4919007    0.3102739
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0297586   -0.2706047    0.2591178
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2019231   -0.5888018    0.0907493
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 0.3409010    0.1955311    0.4600022
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0355036   -0.1510386    0.0684346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.1818900    0.0606277    0.2874987
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.0478536   -0.1583658    0.0521153
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.0135860   -0.0391073    0.0113084
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0022876   -0.0593091    0.0603026
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0050060   -0.0651039    0.0517009
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0684151   -0.0394679    0.1651013
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0042362   -0.1400099    0.1153670
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0072652   -0.1016571    0.1054182
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0280097   -0.5050093    0.2978090
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.1996373   -0.0794642    0.4065756
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1197633   -0.2034487   -0.0418971
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0315097   -0.1113229    0.0425714
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0070045   -0.0486134    0.0329535
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1605166   -0.2277191   -0.0969926
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0973602   -0.1456600   -0.0510967
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0229710   -0.0963839    0.0455262
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2947415   -0.5193114   -0.1033653
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0514211   -0.0667315   -0.0363304
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0098251   -0.0029056    0.0223941
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0225712   -0.2764994    0.2515727
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0956063   -0.3736552    0.1261613
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.3555556   -0.7676234   -0.0395488
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1430279   -0.4586821    0.1043197
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1767989   -0.3883049    0.0024845
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0671794   -0.1580136    0.0165298
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0494703   -0.2820649    0.1409265
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1003807   -0.1985382   -0.0102620
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0180027   -0.0575751    0.0200890
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1906643   -0.3159450   -0.0773106
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0765184   -0.2613383    0.0812205
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1646830   -0.4077022    0.0363826
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0525211   -0.5778715    0.2979145
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -0.4488611   -0.7541320   -0.1967164
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0896389   -0.1502675   -0.0322059
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2221037   -0.3263082   -0.1260863
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1853633   -0.2618274   -0.1135328
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0069877   -0.0441862    0.0288856
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.4664370   -0.5386012   -0.3976575
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1568067   -0.1991959   -0.1159158
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0315574   -0.0352602    0.0940624
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1118158   -0.1663538   -0.0598279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0031096   -0.0173149    0.0231240
