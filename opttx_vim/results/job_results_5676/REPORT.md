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
```




# Results Detail

## Results Plots
![](/tmp/ab133bd9-a0d0-4eb7-b8e8-4b6a85f73fd5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab133bd9-a0d0-4eb7-b8e8-4b6a85f73fd5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4536978   0.3519080   0.5554876
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2323064   0.1331496   0.3314633
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5528103   0.4362634   0.6693573
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2232010   0.1185473   0.3278547
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5766684   0.5014816   0.6518553
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4123535   0.3403133   0.4843937
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8928784   0.8444969   0.9412599
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.5120197   0.4415983   0.5824412
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.8010562   0.5983616   1.0037508
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5443832   0.4870039   0.6017625
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7604064   0.6346848   0.8861280
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6061916   0.5531804   0.6592029
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3273404   0.2837936   0.3708872
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.4365529   0.3947093   0.4783964
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2897100   0.2581329   0.3212872
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3778715   0.2981702   0.4575728
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5318993   0.4640556   0.5997429
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1292956   0.1130786   0.1455127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3580166   0.3481965   0.3678366
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7008160   0.6685676   0.7330644
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2468141   0.2263654   0.2672627
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6119831   0.5887374   0.6352289
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4746935   0.4267436   0.5226435
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4711961   0.4616010   0.4807912
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.5571835   0.5039016   0.6104654
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1146095   0.0484246   0.1807944
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.0575097   0.0092613   0.1057580
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2901165   0.1784866   0.4017463
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1720323   0.0862838   0.2577807
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4042663   0.3326165   0.4759161
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2339482   0.1721344   0.2957620
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3847008   0.3208939   0.4485078
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3287831   0.2639815   0.3935846
0-6 months    ki1000109-EE               PAKISTAN                       optimal              NA                0.6772624   0.4514801   0.9030447
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2951771   0.2541094   0.3362447
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3921669   0.2616020   0.5227317
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2848422   0.2389491   0.3307353
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2258591   0.1858258   0.2658923
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2431096   0.2035878   0.2826315
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1233942   0.0763718   0.1704167
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2743612   0.1908655   0.3578568
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1863195   0.1272186   0.2454205
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0892062   0.0767744   0.1016380
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2259847   0.2173503   0.2346191
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2839850   0.2531904   0.3147796
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.1371081   0.1249215   0.1492946
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2085130   0.1901743   0.2268517
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2836995   0.1998508   0.3675482
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3894731   0.3806468   0.3982994
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2835053   0.2453197   0.3216908
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2417030   0.1155369   0.3678690
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1866310   0.0725348   0.3007271
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1309366   0.0313421   0.2305311
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.2996591   0.1601525   0.4391657
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2514088   0.1230199   0.3797977
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.7907127   0.7017900   0.8796353
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2481787   0.1540643   0.3422931
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3846221   0.3127071   0.4565372
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7433076   0.5662938   0.9203213
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4715772   0.3856234   0.5575310
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2472890   0.1917204   0.3028575
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2061086   0.1486273   0.2635899
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1280111   0.1000234   0.1559989
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2722203   0.1766255   0.3678150
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2593063   0.1877676   0.3308449
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0471289   0.0356622   0.0585956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2131125   0.2019479   0.2242772
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7184890   0.6744701   0.7625080
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1110545   0.0933858   0.1287232
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5653951   0.5372327   0.5935576
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4450075   0.3970480   0.4929670
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1585651   0.1473222   0.1698080
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3712231   0.3418127   0.4006336


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5948996   0.5289358   0.6608635
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2327216   0.1782261   0.2872172
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5873179   0.5220921   0.6525436
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3340787   0.2723457   0.3958118
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6170892   0.5622327   0.6719456
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5496588   0.4944876   0.6048300
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9248980   0.8981214   0.9516747
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6427665   0.5962894   0.6892436
0-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.9121308   0.8834924   0.9407692
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6979985   0.6575947   0.7384022
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8281366   0.7918949   0.8643782
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6647048   0.6277775   0.7016320
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4448741   0.4081293   0.4816189
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4810494   0.4454672   0.5166316
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3473538   0.3282548   0.3664527
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5552314   0.4971023   0.6133604
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6763038   0.6387479   0.7138598
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1666652   0.1479846   0.1853458
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3974755   0.3893866   0.4055645
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7683632   0.7456897   0.7910366
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3823949   0.3699467   0.3948430
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6870146   0.6705679   0.7034613
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6457199   0.6126774   0.6787625
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4941969   0.4863494   0.5020445
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5858481   0.5615603   0.6101359
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3484127   0.2849593   0.4118661
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1949235   0.1439339   0.2459130
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3231861   0.2612668   0.3851053
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1697955   0.1202242   0.2193668
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4250272   0.3692011   0.4808533
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3670377   0.3138656   0.4202097
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5206287   0.4694861   0.5717712
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4236523   0.3757526   0.4715521
0-6 months    ki1000109-EE               PAKISTAN                       observed             NA                0.7391696   0.6947392   0.7836000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4284308   0.4006609   0.4562008
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3891929   0.3422786   0.4361072
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3527285   0.3154300   0.3900269
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2407110   0.2091149   0.2723071
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3030969   0.2703872   0.3358066
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1957652   0.1798679   0.2116625
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3183504   0.2622224   0.3744783
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2793183   0.2433789   0.3152577
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0982088   0.0851642   0.1112534
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2590122   0.2517716   0.2662527
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3244839   0.2965813   0.3523866
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1894146   0.1792274   0.1996018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2400190   0.2249002   0.2551379
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3591146   0.3015809   0.4166482
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4116533   0.4042003   0.4191064
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3500623   0.3270230   0.3731015
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4304823   0.3456437   0.5153208
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4198051   0.3382937   0.5013164
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1968416   0.1390890   0.2545941
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3965662   0.3177749   0.4753575
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3655290   0.2904710   0.4405870
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8491474   0.7973634   0.9009315
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3797662   0.3177999   0.4417326
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5063828   0.4621569   0.5506087
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7553266   0.7013048   0.8093484
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5744260   0.5221694   0.6266826
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3002473   0.2581955   0.3422991
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2629191   0.2245279   0.3013104
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2275575   0.2070168   0.2480981
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3935772   0.3231285   0.4640259
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5723909   0.5250341   0.6197476
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0768389   0.0628736   0.0908042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2463600   0.2368874   0.2558325
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7672072   0.7393558   0.7950586
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2597516   0.2469380   0.2725651
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6453677   0.6249982   0.6657372
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6095022   0.5733739   0.6456305
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2193043   0.2099508   0.2286578
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3724015   0.3439221   0.4008809


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7626460   0.6440417   0.9030921
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.9982159   0.7063336   1.4107144
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9412456   0.7928579   1.1174048
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.6681090   0.4378920   1.0193599
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.9344977   0.8441187   1.0345535
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.7501990   0.6527531   0.8621920
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9653804   0.9302691   1.0018168
0-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.7965875   0.7179206   0.8838744
0-24 months   ki1000109-EE               PAKISTAN                       optimal              observed          0.8782252   0.6866949   1.1231764
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.7799203   0.7197193   0.8451569
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9182137   0.7868505   1.0715078
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9119712   0.8510606   0.9772412
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7358045   0.6654423   0.8136067
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9075012   0.8467248   0.9726401
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8340489   0.7592241   0.9162481
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.6805658   0.5751852   0.8052535
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.7864797   0.6981444   0.8859921
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.7757808   0.7120835   0.8451759
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9007260   0.8846241   0.9171210
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9120895   0.8801718   0.9451646
0-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.6454429   0.5973512   0.6974064
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8907862   0.8663117   0.9159521
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.7351384   0.6806430   0.7939971
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9534582   0.9408463   0.9662391
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9510717   0.8753703   1.0333196
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.3289475   0.1961172   0.5517438
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.2950371   0.1350180   0.6447057
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.8976763   0.6458785   1.2476384
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          1.0131731   0.6682570   1.5361153
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.9511539   0.8344494   1.0841806
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.6373956   0.5183577   0.7837699
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.7389160   0.6504871   0.8393661
0-6 months    ki1000108-IRC              INDIA                          optimal              observed          0.7760681   0.6657974   0.9046020
0-6 months    ki1000109-EE               PAKISTAN                       optimal              observed          0.9162476   0.6616795   1.2687558
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.6889725   0.6279477   0.7559277
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          1.0076413   0.7366279   1.3783635
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.8075395   0.7129300   0.9147041
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9382996   0.8273163   1.0641711
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8020856   0.7125364   0.9028892
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.6303175   0.4348986   0.9135466
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.8618213   0.6637266   1.1190392
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.6670510   0.4909167   0.9063800
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.9083321   0.8167487   1.0101849
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8724867   0.8505804   0.8949572
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8751898   0.7989629   0.9586893
0-6 months    ki1135781-COHORTS          INDIA                          optimal              observed          0.7238516   0.6744349   0.7768891
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8687353   0.8139953   0.9271564
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.7899972   0.6168306   1.0117781
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9461191   0.9322145   0.9602311
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8098710   0.7214269   0.9091579
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.5614702   0.3656536   0.8621514
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.4445658   0.2582265   0.7653695
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.6651879   0.3337569   1.3257399
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.7556345   0.5030377   1.1350709
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.6877944   0.4380803   1.0798503
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9311842   0.8614930   1.0065131
6-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.6535040   0.4732875   0.9023425
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.7595481   0.6349789   0.9085552
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9840876   0.7921210   1.2225763
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.8209538   0.7073265   0.9528345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.8236177   0.6856842   0.9892982
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7839239   0.6222987   0.9875269
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5625441   0.4625788   0.6841124
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.6916567   0.5211952   0.9178691
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.4530231   0.3498923   0.5865517
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.6133466   0.5186192   0.7253762
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8650454   0.8335683   0.8977111
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9364993   0.8929422   0.9821811
6-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.4275414   0.3667717   0.4983799
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8760822   0.8443240   0.9090349
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.7301164   0.6722332   0.7929836
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7230368   0.6832219   0.7651720
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9968357   0.9768446   1.0172359
