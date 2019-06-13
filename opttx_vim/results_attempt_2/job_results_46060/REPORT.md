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
![](/tmp/2b3b7b12-05a9-4c91-941e-4b49f9315300/6b8dff3f-77e2-4faa-91a4-c85795a55531/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b3b7b12-05a9-4c91-941e-4b49f9315300/6b8dff3f-77e2-4faa-91a4-c85795a55531/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2186266   0.1274249   0.3098283
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3804739   0.2580110   0.5029368
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3073766   0.1885139   0.4262394
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1047224   0.0414784   0.1679665
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5948265   0.5175561   0.6720969
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6196296   0.5392164   0.7000427
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                0.4781324   0.3068122   0.6494526
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2686345   0.1767796   0.3604894
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4031537   0.3296588   0.4766486
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3006999   0.2516365   0.3497633
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3366585   0.2847066   0.3886104
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2857741   0.2168233   0.3547249
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0698031   0.0157652   0.1238410
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4680930   0.3438201   0.5923659
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2768834   0.1846046   0.3691621
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2203516   0.2120212   0.2286821
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2633407   0.1973413   0.3293400
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2788869   0.2501747   0.3075991
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3772926   0.3512318   0.4033534
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0361408   0.0149020   0.0573796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2592535   0.2447799   0.2737270
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2254818   0.1256172   0.3253463
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3342692   0.2206862   0.4478523
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1216956   0.0428155   0.2005756
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1246543   0.0642307   0.1850779
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5427392   0.4604346   0.6250437
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5418911   0.4654355   0.6183466
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1753931   0.1138125   0.2369737
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3956161   0.3238843   0.4673479
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2338325   0.1897611   0.2779039
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2694927   0.2227024   0.3162830
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0967679   0.0318019   0.1617339
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2707112   0.1738667   0.3675556
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2734852   0.1848341   0.3621363
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1772536   0.1695352   0.1849719
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2109030   0.1443578   0.2774481
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2447482   0.2204736   0.2690227
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2113131   0.1907495   0.2318767
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1760450   0.1650624   0.1870275
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1739072   0.0791032   0.2687112
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1799882   0.0797716   0.2802048
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.0961150   0.0137239   0.1785062
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.0956884   0.0274342   0.1639427
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.1881860   0.1260401   0.2503318
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3644570   0.2787379   0.4501760
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1484213   0.0647326   0.2321100
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1987911   0.1342944   0.2632878
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1348069   0.0884970   0.1811169
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0968835   0.0599965   0.1337705
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1778688   0.1430386   0.2126990
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.3473052   0.2322507   0.4623596
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0056077   0.0020797   0.0091357
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0787351   0.0714288   0.0860413
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1083277   0.0640117   0.1526437
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.0598811   0.0405167   0.0792455
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2039587   0.1794005   0.2285168
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0364660   0.0149355   0.0579965
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1485759   0.1344149   0.1627369


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
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315069   0.1069744   0.1560393
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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3743503   0.9554278   1.976956
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2424697   0.9424356   1.638023
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9398531   0.6750692   1.308494
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.8669624   1.0788531   3.230790
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0321346   0.9337993   1.140825
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0588545   0.9562447   1.172475
0-24 months   ki1000109-EE               PAKISTAN                       observed             optimal           1.0263186   0.7244209   1.454030
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4230841   1.1522734   1.757542
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1845708   1.0125748   1.385782
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1687021   1.0346500   1.320122
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9835920   0.8765710   1.103679
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8286195   0.6567075   1.045534
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.5240440   0.7647745   3.037118
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2625375   0.9798471   1.626786
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9590125   0.9107660   1.009815
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0648584   1.0408646   1.089405
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2285585   0.9838221   1.534176
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.1940004   1.0850115   1.313937
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0697598   1.0146146   1.127902
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           2.2094862   1.2960423   3.766721
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0193774   0.9756815   1.065030
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9786036   0.6860723   1.395866
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9382747   0.7106514   1.238806
0-6 months    ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.4608400   0.8363518   2.551622
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8227882   0.5777100   1.171834
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9563005   0.8487219   1.077515
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0037117   0.8974637   1.122538
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2587682   1.0400332   1.523507
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9021705   0.7786168   1.045330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1057975   0.9750117   1.254127
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9594886   0.8472966   1.086536
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4422564   0.7432728   2.798573
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0915414   0.7765686   1.534266
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9503494   0.8799674   1.026361
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0208557   0.9955854   1.046767
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1853792   0.8989754   1.563028
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0261787   0.9392679   1.121131
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1146747   1.0354673   1.199941
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0354814   0.9866125   1.086771
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.7961805   0.5267620   1.203396
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4762106   0.8986570   2.424949
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.6079220   0.7313338   3.535203
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.4525907   0.7681471   2.746895
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.4103898   1.0736781   1.852696
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.8499113   0.7081974   1.019983
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.8247608   1.0936652   3.044581
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.4784375   1.1058863   1.976494
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1941196   0.9007014   1.583123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3573709   0.9763021   1.887178
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9030062   0.7620875   1.069983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.3636266   0.9940830   1.870545
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.4758027   0.8588119   2.536054
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1940842   1.1114469   1.282866
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.6040669   1.1052823   2.327940
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.1152818   1.5419240   2.901840
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.3073381   1.1816637   1.446378
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           2.1173283   1.2420075   3.609543
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1099449   1.0239120   1.203207


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0818429    0.0005583   0.1631275
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0922534   -0.0124202   0.1969269
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0184877   -0.1202114   0.0832359
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0907904    0.0308538   0.1507270
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0191145   -0.0404271   0.0786560
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0364680   -0.0264682   0.0994042
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0125838   -0.1540484   0.1792160
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1136550    0.0590766   0.1682333
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0744104    0.0113116   0.1375092
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0507287    0.0140789   0.0873785
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0055239   -0.0443158   0.0332680
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0489761   -0.1154088   0.0174566
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0365799   -0.0128910   0.0860508
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1228920    0.0043884   0.2413956
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0113488   -0.0244253   0.0017278
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0142916    0.0092545   0.0193288
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0601888    0.0014387   0.1189388
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0541042    0.0273713   0.0808371
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0263199    0.0063454   0.0462944
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0437118    0.0221318   0.0652917
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0050237   -0.0063350   0.0163823
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0048245   -0.0849531   0.0753042
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0206329   -0.1135962   0.0723305
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0560822   -0.0121299   0.1242943
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0220902   -0.0668219   0.0226415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0237174   -0.0884364   0.0410015
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0020113   -0.0586241   0.0626468
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0453861    0.0122246   0.0785477
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0387029   -0.0971190   0.0197132
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0247389   -0.0044720   0.0539497
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0109175   -0.0444605   0.0226254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0427962   -0.0214493   0.1070417
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0247813   -0.0675545   0.1171171
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0135787   -0.0321396   0.0049822
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0036967   -0.0007474   0.0081409
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0390970   -0.0195191   0.0977132
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0064072   -0.0152552   0.0280696
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0242323    0.0085695   0.0398950
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0062463   -0.0022932   0.0147858
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0354457   -0.1084932   0.0376018
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0857123   -0.0046862   0.1761108
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0584304   -0.0187663   0.1356271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0433077   -0.0187058   0.1053212
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0772296    0.0251019   0.1293573
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0547009   -0.1218163   0.0124146
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1224121    0.0444908   0.2003333
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0951091    0.0366923   0.1535259
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0261687   -0.0118663   0.0642037
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0346233    0.0021310   0.0671156
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0172522   -0.0474582   0.0129539
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1262894    0.0164926   0.2360862
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0026682   -0.0002626   0.0055990
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0152812    0.0095635   0.0209990
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0654372    0.0232571   0.1076173
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0667843    0.0472692   0.0862995
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0626843    0.0418739   0.0834946
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0407445    0.0192203   0.0622686
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0163352    0.0042597   0.0284106


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2723835   -0.0466516   0.4941719
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1951514   -0.0610805   0.3895078
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0639960   -0.4813296   0.2357625
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.4643706    0.0730898   0.6904782
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0311341   -0.0708939   0.1234415
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0555832   -0.0457574   0.1471033
0-24 months   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0256437   -0.3804130   0.3122564
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2973008    0.1321504   0.4310234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1558124    0.0124186   0.2783858
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1443500    0.0334896   0.2424945
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0166817   -0.1408089   0.0939397
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2068265   -0.5227479   0.0435513
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3438510   -0.3075750   0.6707405
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2079443   -0.0205674   0.3852908
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0427393   -0.0979769   0.0097194
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0609080    0.0392602   0.0820679
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1860380   -0.0164439   0.3481842
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1624794    0.0783508   0.2389286
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0652107    0.0144041   0.1133983
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.5474061    0.2284202   0.7345171
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0190091   -0.0249247   0.0610596
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0218642   -0.4575722   0.2835989
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0657859   -0.4071596   0.1927713
0-6 months    ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.3154624   -0.1956691   0.6080924
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2153796   -0.7309722   0.1466370
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0456964   -0.1782422   0.0719387
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0036980   -0.1142512   0.1091617
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2055726    0.0384922   0.3436195
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1084379   -0.2843288   0.0433645
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0956753   -0.0256287   0.2026323
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0422218   -0.1802242   0.0796440
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.3066420   -0.3454010   0.6426751
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0838644   -0.2877163   0.3482225
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0522446   -0.1364057   0.0256837
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0204296   -0.0044342   0.0446779
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1563881   -0.1123775   0.3602163
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0255108   -0.0646589   0.1080438
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1028773    0.0342525   0.1666257
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0342656   -0.0135692   0.0798428
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.2559966   -0.8983904   0.1690184
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3225899   -0.1127716   0.5876202
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.3780793   -0.3673647   0.7171308
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3115748   -0.3018340   0.6359526
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2909761    0.0686222   0.4602461
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.1765933   -0.4120357   0.0195915
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.4519830    0.0856434   0.6715475
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3236102    0.0957479   0.4940535
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1625630   -0.1102458   0.3683373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2632817   -0.0242731   0.4701082
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1074121   -0.3121853   0.0654053
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2666614   -0.0059522   0.4653966
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.3224027   -0.1643993   0.6056867
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1625381    0.1002719   0.2204952
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3765846    0.0952537   0.5704356
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.5272497    0.3514596   0.6553911
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2350869    0.1537355   0.3086180
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.5277067    0.1948519   0.7229566
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0990544    0.0233536   0.1688875
