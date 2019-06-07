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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        meducyrs    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       59     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       19     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       46     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       24     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       44     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21     213
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       55     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        8     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       82     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        8     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       39     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       24     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       43     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       44     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       37     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       13     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       69     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       27     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       51     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       25     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0       87     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       93     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       11     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       95     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       12     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       80     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      116     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       32     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       55     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       14     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        9     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        2     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      126     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       15     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       89     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       71     373
0-24 months   ki1000108-IRC              INDIA                          High                  0       41     410
0-24 months   ki1000108-IRC              INDIA                          High                  1       83     410
0-24 months   ki1000108-IRC              INDIA                          Low                   0       50     410
0-24 months   ki1000108-IRC              INDIA                          Low                   1       97     410
0-24 months   ki1000108-IRC              INDIA                          Medium                0       50     410
0-24 months   ki1000108-IRC              INDIA                          Medium                1       89     410
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        9     377
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        6     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      162     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      167     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       21     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       12     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       71     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       29     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      115     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       90     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      100     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       58     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0        5     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       40     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       45     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0        8     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        6     106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      106     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       72     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      106     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1      122     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      114     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1      104     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      166     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       69     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      131     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       83     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      157     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       94     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      167     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       87     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      163     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       79     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      177     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       85     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      474    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      147    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       63    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       19    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1284    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      399    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      105     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       13     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       65     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       11     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       82     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        6     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       40     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       35     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      160     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      261     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       45     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       58     599
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0      942    8127
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      337    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     1997    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1      731    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     3030    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1090    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5840   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1711   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2226   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      700   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2587   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      855   13919
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      133     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       42     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      183     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       95     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      121     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       72     646
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      596    5844
0-24 months   ki1135781-COHORTS          INDIA                          High                  1      197    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1175    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      776    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2127    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      973    5844
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      727    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      441    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      496    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      405    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      593    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      383    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      287     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       26     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      227     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       28     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     3376   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1103   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     3407   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1391   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     3008   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1023   13308
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       16     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1        4     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      392     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      188     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       13     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        6     619
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       54     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       16     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       48     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0       58     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        5     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0       84     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        6     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       47     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       16     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       46     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       30     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       58     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       23     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       42     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       11     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       83     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       13     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       60     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       16     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0       88     301
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0      100     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0      102     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       85     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       10     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      134     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       14     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       61     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       61     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      134     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        7     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       78     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       79     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       50     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       58     368
0-6 months    ki1000108-IRC              INDIA                          High                  0       52     410
0-6 months    ki1000108-IRC              INDIA                          High                  1       72     410
0-6 months    ki1000108-IRC              INDIA                          Low                   0       69     410
0-6 months    ki1000108-IRC              INDIA                          Low                   1       78     410
0-6 months    ki1000108-IRC              INDIA                          Medium                0       66     410
0-6 months    ki1000108-IRC              INDIA                          Medium                1       73     410
0-6 months    ki1000109-EE               PAKISTAN                       High                  0       13     377
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        2     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0      235     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1       94     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0       26     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        7     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0       82     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       18     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0      153     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1       52     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0      125     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       32     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0        7     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       68     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       17     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       13     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        1     106
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  0      120     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  1       57     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   0      141     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   1       87     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                0      139     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                1       78     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0      157     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       57     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0      178     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       73     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      184     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       70     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      183     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       59     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      195     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       67     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      530    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       91    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       74    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        8    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1449    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      234    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  0      107     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  1        5     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       73     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        1     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       76     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       57     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       18     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      294     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      127     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       71     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       32     599
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0      946    8126
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      333    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     2012    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1      715    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     3056    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1064    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     6128   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1374   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2400   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      507   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2797   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      621   13827
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0      110     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       24     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0      164     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       56     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0      104     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       46     504
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      582    5626
0-6 months    ki1135781-COHORTS          INDIA                          High                  1      168    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0     1385    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      508    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0     2246    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      737    5626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0      857    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      311    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0      700    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      200    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0      770    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      206    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0       90     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        2     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0       86     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        2     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     3706   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1      754   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     3788   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1      992   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     3348   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      671   13259
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       17     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1        1     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      479     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1       63     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       14     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        3     577
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       63     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       54     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       51     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        8     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       52     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        3     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       77     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        3     206
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       48     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       10     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       50     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       22     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       54     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       23     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       47     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        5     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       77     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       16     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       62     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       13     220
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       80     269
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       84     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       88     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       67     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      108     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       21     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       48     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        7     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      120     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       11     202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0      129     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       29     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       70     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       75     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       34     373
6-24 months   ki1000108-IRC              INDIA                          High                  0       86     410
6-24 months   ki1000108-IRC              INDIA                          High                  1       38     410
6-24 months   ki1000108-IRC              INDIA                          Low                   0      103     410
6-24 months   ki1000108-IRC              INDIA                          Low                   1       44     410
6-24 months   ki1000108-IRC              INDIA                          Medium                0       94     410
6-24 months   ki1000108-IRC              INDIA                          Medium                1       45     410
6-24 months   ki1000109-EE               PAKISTAN                       High                  0       11     372
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        4     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0      213     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1      111     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0       25     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1        8     372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       82     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       16     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      130     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       56     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      103     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       45     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0        5     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       50     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       33     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0        8     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        5     103
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      126     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       31     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      116     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       80     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      140     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       48     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      181     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       30     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      145     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       40     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      190     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       29     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      222     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       24     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      199     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       35     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      213     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       37     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      438    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       76    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       58    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       14    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1192    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      233    2011
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      101     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       10     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       61     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       10     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       81     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       45     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       26     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      201     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      213     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       63     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       39     587
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0     1244    7975
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        7    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     2635    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       24    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     4030    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       35    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5303   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      448   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2014   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      248   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2358   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      308   10679
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      137     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       21     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      201     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       48     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      147     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       33     587
6-24 months   ki1135781-COHORTS          INDIA                          High                  0      713    5479
6-24 months   ki1135781-COHORTS          INDIA                          High                  1       37    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1447    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1      349    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2625    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1      308    5479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      852    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      202    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      551    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      296    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      657    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      251    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      282     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      224     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       27     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     2621    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      442    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     2309    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1      536    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     2205    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      431    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       17     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1        3     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      425     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      154     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       16     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        3     618


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/fded7baa-9bc3-428f-b1c8-9daa00f34a97/974aec8a-2f48-42e9-aa69-0781b3b84997/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fded7baa-9bc3-428f-b1c8-9daa00f34a97/974aec8a-2f48-42e9-aa69-0781b3b84997/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3009185   0.1981433   0.4036936
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3775583   0.2559419   0.4991746
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3252335   0.2081825   0.4422845
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1257421   0.0556026   0.1958816
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.6117848   0.5340440   0.6895255
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6461060   0.5710631   0.7211489
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.5796364   0.3976145   0.7616582
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2686345   0.1767796   0.3604894
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4087534   0.3342416   0.4832652
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3099608   0.2623328   0.3575889
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3529422   0.3006509   0.4052335
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2293832   0.1650207   0.2937458
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0684256   0.0146181   0.1222330
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4669118   0.3526634   0.5811603
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2717221   0.1826524   0.3607919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2204802   0.2120590   0.2289014
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2692989   0.2015849   0.3370129
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2712466   0.2434355   0.2990576
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3771613   0.3510767   0.4032459
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0358739   0.0147318   0.0570160
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2584485   0.2446445   0.2722524
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1985008   0.1082562   0.2887454
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3263321   0.2092160   0.4434481
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1229487   0.0501759   0.1957214
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2333344   0.1451408   0.3215280
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5606901   0.4782500   0.6431302
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5295588   0.4529988   0.6061189
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1753931   0.1138125   0.2369737
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3537071   0.2858270   0.4215871
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2273870   0.1859483   0.2688257
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2617758   0.2147535   0.3087980
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0982439   0.0323661   0.1641216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3125200   0.2172710   0.4077689
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2713136   0.1824127   0.3602145
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1775863   0.1698883   0.1852843
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2095038   0.1413515   0.2776561
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2420456   0.2185079   0.2655833
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2150467   0.1945285   0.2355649
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1787526   0.1677571   0.1897481
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1130309   0.0385451   0.1875167
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1853174   0.0837099   0.2869249
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0959874   0.0146988   0.1772759
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.0958092   0.0279804   0.1636380
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.1863949   0.1251171   0.2476726
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3747594   0.2944036   0.4551151
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1484213   0.0647326   0.2321100
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1999455   0.1365023   0.2633887
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1278981   0.0834190   0.1723773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0767004   0.0439588   0.1094419
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1708504   0.1403935   0.2013073
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3441179   0.2363172   0.4519185
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0056410   0.0020781   0.0092040
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0795836   0.0719607   0.0872065
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1423210   0.0898798   0.1947621
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.0589432   0.0396735   0.0782128
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2057591   0.1809093   0.2306090
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0363478   0.0149995   0.0576961
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1637957   0.1481723   0.1794190


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3004695   0.2387555   0.3621835
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4727273   0.4066048   0.5388497
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2888889   0.2295338   0.3482440
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       observed             NA                0.4907162   0.4401862   0.5412462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3822894   0.3008363   0.4637425
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2367980   0.2197367   0.2538593
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.1063830   0.0703329   0.1424331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5909850   0.5515796   0.6303903
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2346433   0.2276029   0.2416837
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3235294   0.2874259   0.3596329
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3329911   0.3209071   0.3450751
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0798526   0.0612199   0.0984853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2642771   0.2551890   0.2733653
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2206573   0.1648355   0.2764790
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3136364   0.2521871   0.3750856
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1777778   0.1277101   0.2278455
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2207792   0.1636864   0.2778721
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1395641   0.1256566   0.1534717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2954925   0.2589234   0.3320615
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1809503   0.1745333   0.1873674
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2500000   0.2121588   0.2878412
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.2511554   0.2398221   0.2624886
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1822913   0.1742792   0.1903033
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.1384615   0.0898601   0.1870630
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.2657005   0.2053824   0.3260185
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1545455   0.1066715   0.2024194
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1389961   0.0967835   0.1812087
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2708333   0.2169112   0.3247555
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1606166   0.1445647   0.1766685
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4735945   0.4331684   0.5140207
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0082759   0.0065972   0.0099545
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0940163   0.0884807   0.0995519
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1737649   0.1430865   0.2044433
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.1266654   0.1178579   0.1354730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0772105   0.0587369   0.0956840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1649110   0.1557149   0.1741072


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9985080   0.7512381   1.3271667
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2520644   0.9493381   1.6513246
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8882507   0.6549651   1.2046281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.5548715   0.9405029   2.5705667
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0035245   0.9081308   1.1089387
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0154643   0.9245747   1.1152887
0-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           0.8465931   0.6253559   1.1460992
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4230841   1.1522734   1.7575415
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1683428   0.9985905   1.3669516
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1337838   1.0110683   1.2713935
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9382119   0.8397572   1.0482096
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0323248   0.7865275   1.3549360
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.5547258   0.7718433   3.1316882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2657314   1.0031699   1.5970136
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9772286   0.9143342   1.0444494
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0642375   1.0395540   1.0895072
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2013767   0.9631195   1.4985741
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.2276325   1.1162674   1.3501080
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0701322   1.0146028   1.1287007
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           2.2259224   1.3036629   3.8006225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0225525   0.9801953   1.0667401
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1116191   0.7604018   1.6250579
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9610957   0.7210920   1.2809808
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.4459511   0.8719570   2.3977954
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.4395584   0.3384938   0.5707981
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9256838   0.8204051   1.0444724
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0270860   0.9156498   1.1520841
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2587682   1.0400332   1.5235065
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0090643   0.8598348   1.1841934
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1371426   1.0072468   1.2837901
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9877737   0.8678794   1.1242309
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4205889   0.7326794   2.7543736
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9455156   0.7084715   1.2618711
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9579560   0.9085886   1.0100058
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0189429   0.9938338   1.0446865
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1932959   0.8951613   1.5907246
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0376365   0.9522600   1.1306677
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0953220   1.0196179   1.1766470
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0197965   0.9723760   1.0695295
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2249883   0.7065630   2.1237969
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4337593   0.8840761   2.3252134
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.6100605   0.7392646   3.5065859
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.4507598   0.7710862   2.7295314
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.4239423   1.0860239   1.8670048
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.8265467   0.6960027   0.9815758
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.8247608   1.0936652   3.0445806
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.4699016   1.1078384   1.9502941
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2586236   0.9428033   1.6802375
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.7145533   1.1709264   2.5105703
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9401009   0.8103520   1.0906245
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.3762567   1.0212452   1.8546794
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.4670853   0.8488648   2.5355502
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1813522   1.0955850   1.2738336
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2209368   0.8883409   1.6780571
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.1489426   1.5606885   2.9589212
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2958983   1.1709480   1.4341820
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           2.1242113   1.2495953   3.6109877
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0068097   0.9285445   1.0916717


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0004490   -0.0860671    0.0851691
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0951690   -0.0088764    0.1992144
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0363446   -0.1353868    0.0626976
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0697707    0.0051408    0.1344006
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0021562   -0.0589557    0.0632682
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0099916   -0.0506082    0.0705913
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.0889202   -0.2641815    0.0863410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1136550    0.0590766    0.1682333
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0688107    0.0047915    0.1328299
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0414677    0.0057783    0.0771572
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0218076   -0.0609401    0.0173249
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0074148   -0.0549718    0.0698014
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0379574   -0.0113100    0.0872249
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1240731    0.0155754    0.2325709
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0061875   -0.0233949    0.0110199
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0141631    0.0089741    0.0193521
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0542305   -0.0053701    0.1138311
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0617445    0.0359019    0.0875872
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0264511    0.0063413    0.0465610
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0439787    0.0224579    0.0654994
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0058287   -0.0051152    0.0167725
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0221565   -0.0534712    0.0977841
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0126957   -0.1066599    0.0812685
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0548291   -0.0084396    0.1180978
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1307703   -0.1981731   -0.0633675
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0416684   -0.1090279    0.0256912
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0143436   -0.0464982    0.0751854
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0453861    0.0122246    0.0785477
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0032061   -0.0534009    0.0598131
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0311845    0.0036773    0.0586916
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0032006   -0.0370888    0.0306877
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0413203   -0.0238182    0.1064587
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0170275   -0.1070827    0.0730277
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0114071   -0.0231447    0.0003305
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0033640   -0.0010686    0.0077967
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0404962   -0.0200220    0.1010145
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0091098   -0.0116745    0.0298940
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0204987    0.0050236    0.0359737
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0035387   -0.0049896    0.0120670
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0254306   -0.0372156    0.0880768
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0803831   -0.0098044    0.1705706
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0585581   -0.0177626    0.1348788
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0431869   -0.0184548    0.1048287
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0790207    0.0276563    0.1303851
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0650033   -0.1292600   -0.0007465
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1224121    0.0444908    0.2003333
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0939547    0.0366855    0.1512239
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0330775   -0.0040783    0.0702332
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0548065    0.0239561    0.0856569
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0102338   -0.0356196    0.0151521
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1294767    0.0266155    0.2323378
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0026348   -0.0003556    0.0056253
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0144327    0.0083770    0.0204883
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0314439   -0.0139856    0.0768734
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0677223    0.0482633    0.0871813
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0608838    0.0398513    0.0819163
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0408626    0.0194544    0.0622708
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0011154   -0.0121435    0.0143743


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0014942   -0.3311359    0.2465152
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2013191   -0.0533655    0.3944256
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1258083   -0.5267990    0.1698683
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3568600   -0.0632610    0.6109807
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0035121   -0.1011630    0.0982369
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0152288   -0.0815784    0.1033712
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                -0.1812050   -0.5990893    0.1274751
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2973008    0.1321504    0.4310234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1440868   -0.0014114    0.2684452
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1179976    0.0109471    0.2134615
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0658573   -0.1908204    0.0459923
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0313126   -0.2714113    0.2619578
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3567998   -0.2955998    0.6806834
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2099430    0.0031599    0.3738313
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0233020   -0.0936920    0.0425577
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0603601    0.0380490    0.0821538
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1676216   -0.0382928    0.3326990
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1854240    0.1041573    0.2593185
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0655360    0.0143926    0.1140255
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.5507480    0.2329305    0.7368852
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0220551   -0.0202049    0.0625646
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1004112   -0.3150942    0.3846373
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0404791   -0.3867857    0.2193482
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.3084137   -0.1468456    0.5829502
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -1.2750103   -1.9542638   -0.7519329
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0802825   -0.2189101    0.0425788
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0263717   -0.0921206    0.1320078
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2055726    0.0384922    0.3436195
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0089828   -0.1630141    0.1555433
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1206029    0.0071946    0.2210565
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0123777   -0.1522338    0.1105030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2960666   -0.3648535    0.6369410
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0576240   -0.4114894    0.2075261
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0438893   -0.1006082    0.0099067
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0185908   -0.0062044    0.0427750
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1619849   -0.1171171    0.3713557
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0362714   -0.0501334    0.1155668
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0870265    0.0192404    0.1501274
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0194122   -0.0284088    0.0650094
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1836657   -0.4153020    0.5291452
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3025329   -0.1311243    0.5699319
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.3789053   -0.3526956    0.7148223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3107060   -0.2968718    0.6336368
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2977244    0.0792099    0.4643827
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.2098530   -0.4367761   -0.0187700
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.4519830    0.0856434    0.6715475
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3196824    0.0973413    0.4872568
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2054813   -0.0606666    0.4048460
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4167577    0.1459753    0.6016841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0637156   -0.2340316    0.0830941
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2733914    0.0208032    0.4608232
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.3183764   -0.1780439    0.6056083
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1535124    0.0872457    0.2149681
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1809568   -0.1256940    0.4040727
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.5346549    0.3592571    0.6620390
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2283345    0.1459911    0.3027384
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.5292370    0.1997409    0.7230675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0067636   -0.0769543    0.0839737
