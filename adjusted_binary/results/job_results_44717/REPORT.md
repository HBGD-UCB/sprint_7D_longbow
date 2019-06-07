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

**Outcome Variable:** ever_wasted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/f2791305-6bee-44bb-a0ba-09b263ff0c3a/716881f9-cf6c-4afc-99ff-2728b540b60b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2791305-6bee-44bb-a0ba-09b263ff0c3a/716881f9-cf6c-4afc-99ff-2728b540b60b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f2791305-6bee-44bb-a0ba-09b263ff0c3a/716881f9-cf6c-4afc-99ff-2728b540b60b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2791305-6bee-44bb-a0ba-09b263ff0c3a/716881f9-cf6c-4afc-99ff-2728b540b60b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2435897   0.1481057   0.3390738
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3428571   0.2314001   0.4543142
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3230769   0.2091213   0.4370326
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3809524   0.2607634   0.5011413
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5657895   0.4541010   0.6774779
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4567901   0.3480632   0.5655170
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2452830   0.1291908   0.3613753
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2812500   0.1911105   0.3713895
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3289474   0.2230829   0.4348118
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1578947   0.0844517   0.2313377
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2162162   0.1497874   0.2826450
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2028986   0.1078563   0.2979408
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5632911   0.4858512   0.6407311
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6509434   0.5600782   0.7418086
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6513761   0.5617959   0.7409564
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6693548   0.5864506   0.7522591
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6598639   0.5831855   0.7365424
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6402878   0.5604081   0.7201674
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.4000000   0.1517525   0.6482475
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.5075988   0.4535051   0.5616925
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3636364   0.1992922   0.5279805
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2900000   0.2160725   0.3639275
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4390244   0.3423088   0.5357400
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3670886   0.2892617   0.4449155
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4044944   0.3323362   0.4766526
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.5350877   0.4702949   0.5998805
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.4770642   0.4107081   0.5434203
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2936170   0.2353483   0.3518857
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3878505   0.3225205   0.4531805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3745020   0.3145834   0.4344206
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3425197   0.2841211   0.4009182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3264463   0.2673284   0.3855642
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3244275   0.2677019   0.3811531
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2367150   0.2032763   0.2701537
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2317073   0.1403664   0.3230482
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2370766   0.2167539   0.2573994
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1101695   0.0535765   0.1667625
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368   0.0654954   0.2239782
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818   0.0154251   0.1209386
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4666667   0.3536655   0.5796679
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6199525   0.5735471   0.6663578
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5631068   0.4672384   0.6589752
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2634871   0.1733358   0.3536384
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2679619   0.1550344   0.3808894
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2645631   0.1761396   0.3529866
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2265925   0.2171500   0.2360350
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2392344   0.2237761   0.2546928
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2484021   0.2339667   0.2628375
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2400000   0.1766746   0.3033254
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3417266   0.2859304   0.3975228
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3730570   0.3047748   0.4413392
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2484237   0.2183469   0.2785005
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3977447   0.3760253   0.4194642
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3138710   0.2975336   0.3302084
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3775685   0.3497623   0.4053747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4495006   0.4170142   0.4819869
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3924180   0.3617793   0.4230568
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0369128   0.0154923   0.0583332
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0996169   0.0632610   0.1359728
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1098039   0.0714070   0.1482009
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2462603   0.2326516   0.2598691
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2899125   0.2754737   0.3043512
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2537832   0.2389711   0.2685953
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1794872   0.0941217   0.2648526
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2285714   0.1299708   0.3271721
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2615385   0.1544494   0.3686275
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2539683   0.1462385   0.3616980
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3947368   0.2845939   0.5048797
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2839506   0.1855296   0.3823716
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2075472   0.0981207   0.3169737
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1354167   0.0668174   0.2040159
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2105263   0.1186654   0.3023872
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434517   0.1670747
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0945946   0.0473699   0.1418193
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1159420   0.0402794   0.1916047
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5031847   0.4248687   0.5815007
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5192308   0.4230760   0.6153855
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5420561   0.4475248   0.6365873
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.5806452   0.4936863   0.6676040
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5306122   0.4498378   0.6113867
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5251799   0.4420629   0.6082968
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1800000   0.1622696   0.1977304
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2536585   0.1936395   0.3136775
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2038217   0.1244924   0.2831509
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3220339   0.2531424   0.3909254
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3815789   0.3184739   0.4446840
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3594470   0.2955526   0.4233414
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2170213   0.1642800   0.2697626
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2663551   0.2070865   0.3256238
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2908367   0.2346130   0.3470603
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2755906   0.2206058   0.3305753
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2438017   0.1896685   0.2979348
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2557252   0.2028639   0.3085865
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378   0.1187176   0.1743580
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610   0.0333249   0.1617971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374   0.1225043   0.1555706
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2400000   0.1432630   0.3367370
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3016627   0.2577830   0.3455424
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3106796   0.2212340   0.4001253
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2603597   0.1711453   0.3495740
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2621929   0.1474933   0.3768925
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2582524   0.1687780   0.3477269
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1831512   0.1743983   0.1919040
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1744066   0.1606121   0.1882011
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1816852   0.1687582   0.1946122
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1791045   0.1141178   0.2440911
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2545455   0.1969270   0.3121639
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3066667   0.2328018   0.3805316
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2240000   0.1941592   0.2538408
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2683571   0.2483945   0.2883197
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2470667   0.2315876   0.2625458
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2662671   0.2409143   0.2916199
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2222222   0.1950566   0.2493878
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2110656   0.1854606   0.2366705
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1690583   0.1575719   0.1805447
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2075314   0.1940405   0.2210222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1669570   0.1546901   0.1792238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389379   0.1864142
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1692308   0.0778431   0.2606185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1355932   0.0480109   0.2231756
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1724138   0.0749646   0.2698630
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3055556   0.1988966   0.4122145
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2987013   0.1962248   0.4011778
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0961538   0.0158445   0.1764632
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1720430   0.0951621   0.2489239
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1733333   0.0874690   0.2591977
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.0945946   0.0277868   0.1614024
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1627907   0.0989607   0.2266207
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1428571   0.0510299   0.2346844
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1835443   0.1231022   0.2439864
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3396226   0.2493466   0.4298987
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.3119266   0.2248380   0.3990152
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3064516   0.2252084   0.3876948
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2993197   0.2251977   0.3734418
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3237410   0.2458609   0.4016211
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1632653   0.0903771   0.2361535
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3010753   0.2383795   0.3637710
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3040541   0.2494107   0.3586974
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1974522   0.1351266   0.2597778
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4081633   0.3392917   0.4770348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2553191   0.1929316   0.3177067
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1421801   0.0950197   0.1893405
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2162162   0.1568475   0.2755850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1324201   0.0874927   0.1773475
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0975610   0.0604566   0.1346654
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1495726   0.1038446   0.1953007
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1480000   0.1039520   0.1920480
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1478599   0.1171658   0.1785540
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1944444   0.1030046   0.2858843
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1635088   0.1443022   0.1827153
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3661972   0.2540409   0.4783535
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5144928   0.4663084   0.5626771
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3823529   0.2879641   0.4767418
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0055955   0.0020962   0.0090949
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0090259   0.0063110   0.0117409
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0086101   0.0059437   0.0112765
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0778995   0.0709724   0.0848266
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1096375   0.0967614   0.1225136
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1155289   0.1033943   0.1276635
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1329114   0.0799325   0.1858903
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1927711   0.1437325   0.2418097
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1833333   0.1267582   0.2399084
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0493333   0.0338330   0.0648337
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1943207   0.1760197   0.2126217
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1050119   0.0939161   0.1161078
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1916509   0.1678846   0.2154171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3494687   0.3173527   0.3815848
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2764317   0.2473369   0.3055266
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0375427   0.0157637   0.0593217
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0926641   0.0573288   0.1279994
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1075697   0.0692154   0.1459240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1443030   0.1309667   0.1576392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1884007   0.1735432   0.2032582
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1635053   0.1483922   0.1786185


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3004695   0.2387555   0.3621835
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4727273   0.4066048   0.5388497
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2888889   0.2295338   0.3482440
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4907162   0.4401862   0.5412462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822894   0.3008363   0.4637425
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367980   0.2197367   0.2538593
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1063830   0.0703329   0.1424331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5909850   0.5515796   0.6303903
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2346433   0.2276029   0.2416837
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3235294   0.2874259   0.3596329
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3329911   0.3209071   0.3450751
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0798526   0.0612199   0.0984853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2642771   0.2551890   0.2733653
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2206573   0.1648355   0.2764790
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3136364   0.2521871   0.3750856
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1777778   0.1277101   0.2278455
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2207792   0.1636864   0.2778721
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395641   0.1256566   0.1534717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2954925   0.2589234   0.3320615
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1809503   0.1745333   0.1873674
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2500000   0.2121588   0.2878412
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2511554   0.2398221   0.2624886
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1822913   0.1742792   0.1903033
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1384615   0.0898601   0.1870630
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2657005   0.2053824   0.3260185
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1545455   0.1066715   0.2024194
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2708333   0.2169112   0.3247555
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606166   0.1445647   0.1766685
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4735945   0.4331684   0.5140207
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082759   0.0065972   0.0099545
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0940163   0.0884807   0.0995519
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1737649   0.1430865   0.2044433
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1266654   0.1178579   0.1354730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0772105   0.0587369   0.0956840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1649110   0.1557149   0.1741072


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.4075188   0.8458452   2.3421652
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3263158   0.7827719   2.2472876
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4851974   1.0236599   2.1548282
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.1990741   0.8076205   1.7802651
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.1466346   0.6474126   2.0308084
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.3410931   0.7566416   2.3769917
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.3693694   0.7841961   2.3912036
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.2850242   0.6640788   2.4865829
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1556074   0.9499974   1.4057180
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1563756   0.9520238   1.4045916
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9858208   0.8318400   1.1683049
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.9565745   0.8023635   1.1404243
0-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.2689970   0.6760590   2.3819715
0-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.9090909   0.4218738   1.9589894
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5138772   1.1476000   1.9970583
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2658228   0.9557917   1.6764189
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.3228558   1.0662922   1.6411518
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1794088   0.9406400   1.4787858
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3209400   1.0182088   1.7136785
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2754778   0.9884731   1.6458147
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9530731   0.7432001   1.2222122
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9471791   0.7419434   1.2091869
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9788452   0.6439490   1.4879097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0015279   0.8489884   1.1814745
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.3137652   0.6201163   2.7833150
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.6188811   0.2444853   1.5666127
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3284696   1.0310489   1.7116855
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2066574   0.8974919   1.6223234
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0169829   0.8513209   1.2148818
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0040837   0.8770243   1.1495509
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0557915   0.9776561   1.1401716
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0962503   1.0205948   1.1775140
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.4238609   1.0440245   1.9418892
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.5544041   1.1274597   2.1430231
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.6010740   1.4019430   1.8284895
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2634501   1.1074506   1.4414243
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1905139   1.0737973   1.3199171
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0393294   0.9335564   1.1570866
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.6987113   1.3596842   5.3564220
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              2.9746881   1.5107766   5.8570996
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1772601   1.0966797   1.2637614
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0305484   0.9554387   1.1115626
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.2734694   0.6700837   2.4201815
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.4571429   0.7779416   2.7293375
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.5542763   0.9354564   2.5824558
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.1180556   0.6464890   1.9335957
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              0.6524621   0.3140616   1.3554884
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              1.0143541   0.5116452   2.0109917
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8986487   0.4157763   1.9423172
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1014493   0.4578279   2.6498833
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0318890   0.8101675   1.3142898
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0772507   0.8527116   1.3609162
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              0.9138322   0.7381151   1.1313809
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.9044764   0.7273922   1.1246719
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4092141   1.1497341   1.7272554
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1323425   0.7827219   1.6381293
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.1849030   0.9041716   1.5527974
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1161775   0.8451590   1.4741041
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.2273227   0.8827871   1.7063243
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3401297   0.9823884   1.8281442
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.8846517   0.6563443   1.1923752
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9279171   0.6962100   1.2367392
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6657733   0.3355278   1.3210652
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9488159   0.7583912   1.1870544
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2569279   0.8188587   1.9293535
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2944984   0.7888261   2.1243288
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0070411   0.8365306   1.2123069
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              0.9919065   0.8650295   1.1373929
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9522550   0.8681999   1.0444479
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9919959   0.9105130   1.0807707
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.4212121   0.9266781   2.1796608
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.7122222   1.1076949   2.6466720
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.1980228   1.0284909   1.3954996
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1029764   0.9519882   1.2779117
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8345838   0.7147850   0.9744610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.7926836   0.6793982   0.9248585
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2275729   1.1220796   1.3429842
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9875703   0.8984777   1.0854973
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.5019231   0.6429304   3.5085805
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2033898   0.4798121   3.0181545
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.7722222   0.9120387   3.4436823
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.7324675   0.8943738   3.3559164
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.7892473   0.6938814   4.6137653
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.8026666   0.6826280   4.7604357
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.7209302   0.7672583   3.8599785
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.5102040   0.5811603   3.9244183
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.8503578   1.2118875   2.8251997
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.6994622   1.1036030   2.6170386
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9767275   0.6795510   1.4038632
6-24 months   ki1000108-IRC              INDIA                          Medium               High              1.0564180   0.7385243   1.5111474
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.8440860   1.1049554   3.0776384
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.8623311   1.2616992   2.7488938
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              2.0671494   1.4452058   2.9567462
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2930679   0.8674836   1.9274425
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.5207207   0.9886497   2.3391414
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9313546   0.5794964   1.4968539
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5331196   0.9411420   2.4974509
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5170000   0.9359475   2.4587799
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3150585   0.7865010   2.1988259
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1058356   0.8711703   1.4037122
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4049610   1.0199335   1.9353374
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0441176   0.7045446   1.5473566
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.6130655   0.8833191   2.9456857
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.5387448   0.7903531   2.9957948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4074223   1.2146426   1.6307988
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.4830505   1.2923715   1.7018625
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.4503729   0.9038968   2.3272365
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.3793651   0.8332073   2.2835230
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.9389333   2.8374401   5.4680259
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.1286203   1.5280412   2.9652500
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8234655   1.5626611   2.1277974
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4423714   1.2258520   1.6971342
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.4682345   1.2327936   4.9417692
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              2.8652662   1.4502473   5.6609313
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3055913   1.1620935   1.4668086
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1330696   0.9979755   1.2864512


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0568797   -0.0221673    0.1359268
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0917749   -0.0109105    0.1944603
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0436059   -0.0595982    0.1468100
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0376181   -0.0260369    0.1012730
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0506499   -0.0073500    0.1086497
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0132573   -0.0827910    0.0562765
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0907162   -0.1527507    0.3341830
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0922894    0.0172252    0.1673537
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0730697    0.0116314    0.1345080
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0578116    0.0091476    0.1064755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0113851   -0.0588060    0.0360358
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0000830   -0.0286781    0.0288441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0037865   -0.0464720    0.0388989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1243183    0.0188460    0.2297906
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0020475   -0.0231427    0.0272377
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0080508    0.0015709    0.0145307
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0835294    0.0274856    0.1395733
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0845674    0.0561925    0.1129423
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0260440    0.0040486    0.0480394
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0429398    0.0212590    0.0646207
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0180168    0.0072323    0.0288013
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0411701   -0.0300070    0.1123472
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0596681   -0.0337920    0.1531283
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0297694   -0.1237895    0.0642507
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0026991   -0.0539914    0.0485933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0158370   -0.0434337    0.0751078
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0367427   -0.1096661    0.0361807
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0407792   -0.0108160    0.0923744
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0348793   -0.0239828    0.0937414
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0415502   -0.0028069    0.0859072
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0170154   -0.0614001    0.0273694
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0069737   -0.0307331    0.0167856
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0554925   -0.0358964    0.1468814
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0004532   -0.0255791    0.0246727
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0022008   -0.0080879    0.0036862
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0708955    0.0125045    0.1292866
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0271554   -0.0008000    0.0551107
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0307218   -0.0501334   -0.0113102
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0132330    0.0038097    0.0226562
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0257855   -0.0361817    0.0877527
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0932867    0.0048956    0.1816778
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0583916   -0.0170578    0.1338410
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0444015   -0.0163828    0.1051859
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0818712    0.0311600    0.1325825
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0033045   -0.0646376    0.0712466
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1075680    0.0444109    0.1707251
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0964480    0.0407148    0.1521811
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0187955   -0.0204853    0.0580763
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0339459    0.0015314    0.0663603
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0127567   -0.0140423    0.0395557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1073974    0.0017075    0.2130872
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0026803   -0.0002227    0.0055834
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0161168    0.0109260    0.0213076
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0408535   -0.0064430    0.0881500
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0773321    0.0614558    0.0932084
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0749921    0.0547814    0.0952027
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0396678    0.0180010    0.0613346
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0206081    0.0098340    0.0313821


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1893029   -0.1202708    0.4133295
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1941392   -0.0561610    0.3851206
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1509434   -0.2925716    0.4422768
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1924072   -0.2059543    0.4591785
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0824996   -0.0175031    0.1726738
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0202063   -0.1319179    0.0804803
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.1848649   -0.4985851    0.5566182
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2414124    0.0469782    0.3961785
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1530051    0.0136800    0.2726494
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1645044    0.0140038    0.2920329
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0343822   -0.1879777    0.0993548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0003506   -0.1287945    0.1147202
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0355932   -0.5254587    0.2969634
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2103578    0.0092275    0.3706580
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0077110   -0.0910813    0.0975581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0343108    0.0063043    0.0615279
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2581818    0.0639394    0.4121169
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2539629    0.1638362    0.3343753
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0645272    0.0083921    0.1174845
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5377388    0.2173819    0.7269608
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0681739    0.0265604    0.1080084
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1865794   -0.2065374    0.4516099
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1902461   -0.1690895    0.4391351
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1674528   -0.8348035    0.2571705
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0263158   -0.6706242    0.3695027
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0305132   -0.0907301    0.1382794
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0675539   -0.2106462    0.0586256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1847059   -0.0277504    0.3532433
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0977248   -0.0832298    0.2484508
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1606912   -0.0290410    0.3154410
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0658043   -0.2519956    0.0926975
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0499678   -0.2347294    0.1071465
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1877966   -0.1882002    0.4448121
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0017436   -0.1034725    0.0906069
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0121627   -0.0452234    0.0198523
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2835821    0.0103102    0.4813985
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1081217   -0.0103802    0.2127252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1304283   -0.2157800   -0.0510687
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0725925    0.0197986    0.1225429
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1862285   -0.4042934    0.5284290
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3510972   -0.0750115    0.6083067
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3778280   -0.3397954    0.7110768
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.3194444   -0.2779704    0.6375848
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.3084644    0.0931235    0.4726718
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0106680   -0.2348875    0.2073952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3971743    0.1198300    0.5871265
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3281657    0.1119116    0.4917608
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1167600   -0.1635016    0.3295129
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2581301   -0.0291302    0.4652076
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0794232   -0.1033578    0.2319249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2267707   -0.0323725    0.4208645
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3238740   -0.1573975    0.6050222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1714256    0.1151543    0.2241183
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2351080   -0.0887294    0.4626215
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.6105226    0.4716226    0.7129085
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2812453    0.2023550    0.3523331
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5137620    0.1790225    0.7120172
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1249648    0.0575962    0.1875175
