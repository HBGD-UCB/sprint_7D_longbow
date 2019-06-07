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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        meducyrs    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       74     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        4     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       63     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        7     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       61     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     213
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       77     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        2     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       62     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        1     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       89     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        1     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       58     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        5     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       68     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        8     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       74     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        7     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       52     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        1     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       93     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        3     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       73     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        3     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       90     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1        0     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0      102     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        2     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0      106     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        1     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       93     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        2     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      138     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       10     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       67     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        2     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       11     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        0     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       62     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      137     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        4     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      122     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       77     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       29     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       79     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       30     373
0-24 months   ki1000108-IRC              INDIA                          High                   0       84     410
0-24 months   ki1000108-IRC              INDIA                          High                   1       40     410
0-24 months   ki1000108-IRC              INDIA                          Low                    0       93     410
0-24 months   ki1000108-IRC              INDIA                          Low                    1       54     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 0       93     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 1       46     410
0-24 months   ki1000109-EE               PAKISTAN                       High                   0       14     377
0-24 months   ki1000109-EE               PAKISTAN                       High                   1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0      271     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1       58     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       29     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        4     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0       91     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1        9     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      164     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1       41     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      142     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       16     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        0     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       65     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       20     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       13     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        1     106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0      159     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1       19     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0      181     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       47     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      186     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       32     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      225     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       10     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      198     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      235     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       16     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      239     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       15     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      217     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       25     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      236     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       26     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      580    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       41    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       75    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        7    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1573    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      110    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0      118     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1        0     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       74     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1        2     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       87     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1        1     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       64     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       11     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      300     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      121     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       79     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       24     599
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     1182    8127
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1       97    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     2480    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      248    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     3784    8127
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      336    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     6865   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      686   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2649   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      277   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     3130   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      312   13919
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      164     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1       11     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      255     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1       23     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      168     646
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1       25     646
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      749    5844
0-24 months   ki1135781-COHORTS          INDIA                          High                   1       44    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0     1679    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1      272    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     2814    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      286    5844
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0     1034    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      134    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      783    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      118    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      846    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      130    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      297     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        1     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      258     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      250     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        5     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     4207   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      272   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4444   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      354   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     3791   13308
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      240   13308
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       20     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1        0     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      539     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       41     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       18     619
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        1     619
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       76     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1        2     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1        6     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       61     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   0       77     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   1        2     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    0       63     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    1        0     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 0       90     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 1        0     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       60     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       68     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1        8     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       74     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1        7     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       52     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        1     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       94     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1        2     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       73     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1        3     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       90     301
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1        0     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0      103     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1        1     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0      107     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1        0     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       95     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      144     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        4     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       68     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       64     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      139     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        2     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      131     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       26     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       80     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       87     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       20     368
0-6 months    ki1000108-IRC              INDIA                          High                   0       88     410
0-6 months    ki1000108-IRC              INDIA                          High                   1       36     410
0-6 months    ki1000108-IRC              INDIA                          Low                    0       96     410
0-6 months    ki1000108-IRC              INDIA                          Low                    1       51     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 0      100     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 1       39     410
0-6 months    ki1000109-EE               PAKISTAN                       High                   0       15     377
0-6 months    ki1000109-EE               PAKISTAN                       High                   1        0     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0      304     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1       25     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 0       31     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 1        2     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0       96     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1        4     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      191     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1       14     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      151     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1        6     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       82     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1        3     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       14     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        0     106
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   0      164     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    0      205     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    1       23     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      197     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       20     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      227     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1        8     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      207     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1        7     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      237     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       14     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      240     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       14     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      225     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       17     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      243     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       19     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      597    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       24    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       80    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        2    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1630    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       53    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   0      112     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   1        0     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       74     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    1        0     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       78     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1        1     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0       69     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1        6     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      380     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       41     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0       94     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1        9     599
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     1183    8126
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1       96    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     2481    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      246    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     3788    8126
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      332    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     6968   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      534   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2717   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      190   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     3192   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      226   13827
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      128     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1        6     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      210     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1       10     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      128     504
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1       22     504
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      711    5626
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       39    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0     1730    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1      163    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0     2781    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1      202    5626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0     1075    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1       93    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      846    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1       54    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      912    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1       64    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       92     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       88     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     4271   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1      189   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4539   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      241   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     3852   13259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      167   13259
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0       18     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1        0     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      528     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       14     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       16     577
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        1     577
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       69     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        2     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       64     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        1     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       59     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        0     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       54     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        1     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       79     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       56     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       72     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       77     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        0     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       52     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        0     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       92     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        1     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       75     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        0     220
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       81     269
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       92     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       94     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       72     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      123     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        6     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       55     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        1     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        9     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        0     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       60     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      129     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        2     202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      147     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       11     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0      100     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       96     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       13     373
6-24 months   ki1000108-IRC              INDIA                          High                   0      119     410
6-24 months   ki1000108-IRC              INDIA                          High                   1        5     410
6-24 months   ki1000108-IRC              INDIA                          Low                    0      139     410
6-24 months   ki1000108-IRC              INDIA                          Low                    1        8     410
6-24 months   ki1000108-IRC              INDIA                          Medium                 0      126     410
6-24 months   ki1000108-IRC              INDIA                          Medium                 1       13     410
6-24 months   ki1000109-EE               PAKISTAN                       High                   0       14     372
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        1     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0      289     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1       35     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       30     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        3     372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0       93     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1        5     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      156     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1       30     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      136     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       12     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        0     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       66     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       17     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       12     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        1     103
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0      151     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1        6     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0      169     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       27     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      174     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       14     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      209     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1        2     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      176     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1        9     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      217     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        2     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      245     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1        1     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      223     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       11     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      242     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      497    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       17    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       67    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        5    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1364    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       61    2011
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0      111     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1        0     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       69     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1        2     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       84     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1        0     266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       64     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1        7     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      324     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       90     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       86     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       16     587
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     1250    7975
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1        1    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     2656    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1        3    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     4061    7975
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1        4    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     5590   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      161   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2171   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1       91   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     2570   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1       96   10679
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      153     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1        5     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      236     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1       13     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      177     587
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1        3     587
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      745    5479
6-24 months   ki1135781-COHORTS          INDIA                          High                   1        5    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0     1682    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      114    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     2848    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       85    5479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0     1009    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1       45    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      775    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1       72    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      837    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1       71    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      292     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        1     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      256     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      246     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        5     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     2976    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1       87    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2728    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      117    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2560    8544
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1       76    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       20     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1        0     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      550     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       29     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       19     618
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        0     618


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/d88c8bd7-75de-4a06-b151-71719f576f46/9f6a710e-b36f-4d37-a81f-b5356c9b3411/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d88c8bd7-75de-4a06-b151-71719f576f46/9f6a710e-b36f-4d37-a81f-b5356c9b3411/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d88c8bd7-75de-4a06-b151-71719f576f46/9f6a710e-b36f-4d37-a81f-b5356c9b3411/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d88c8bd7-75de-4a06-b151-71719f576f46/9f6a710e-b36f-4d37-a81f-b5356c9b3411/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.0793651   0.0124652   0.1462650
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1052632   0.0361093   0.1744170
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.0864198   0.0250895   0.1477500
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2278481   0.1623579   0.2933383
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2735849   0.1886049   0.3585649
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2752294   0.1912707   0.3591880
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3225806   0.2402018   0.4049594
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3673469   0.2893207   0.4453732
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3309353   0.2526146   0.4092560
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0900000   0.0487544   0.1312457
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2000000   0.1708202   0.2291798
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1012658   0.0331527   0.1693790
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1067416   0.0613431   0.1521401
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2061404   0.1535892   0.2586915
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.1467890   0.0997733   0.1938047
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0425532   0.0167277   0.0683786
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0747664   0.0395024   0.1100303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0637450   0.0335008   0.0939892
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0590551   0.0300464   0.0880639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1033058   0.0649340   0.1416775
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0992366   0.0630102   0.1354631
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0660225   0.0464878   0.0855573
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0853659   0.0248738   0.1458579
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0653595   0.0535488   0.0771701
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1466667   0.0665348   0.2267985
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2874109   0.2441455   0.3306764
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2330097   0.1512999   0.3147195
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0758405   0.0275017   0.1241793
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0909091   0.0144577   0.1673604
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0815534   0.0337164   0.1293904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0908489   0.0843664   0.0973313
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0946685   0.0840605   0.1052765
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0906450   0.0810532   0.1002367
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0628571   0.0268701   0.0988441
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0827338   0.0503259   0.1151417
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1295337   0.0821233   0.1769440
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0554855   0.0395508   0.0714202
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1394157   0.1240444   0.1547869
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0922581   0.0820701   0.1024460
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1147260   0.0964464   0.1330057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1309656   0.1089336   0.1529976
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1331967   0.1118760   0.1545174
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0607278   0.0529202   0.0685355
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0737807   0.0659618   0.0815997
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0595386   0.0517274   0.0673498
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1656051   0.1073798   0.2238304
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2307692   0.1496844   0.3118541
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.1869159   0.1129489   0.2608829
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.2903226   0.2103321   0.3703131
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.3469388   0.2698976   0.4239800
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2805755   0.2057950   0.3553561
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0734463   0.0349844   0.1119083
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1008772   0.0617538   0.1400005
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0921659   0.0536486   0.1306832
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0340426   0.0108411   0.0572440
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0327103   0.0088612   0.0565594
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0551181   0.0270344   0.0832018
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0702479   0.0380278   0.1024681
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0725191   0.0410950   0.1039432
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0800000   0.0185504   0.1414496
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0973872   0.0690425   0.1257318
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0873786   0.0327978   0.1419595
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0750586   0.0269818   0.1231355
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0902090   0.0134017   0.1670163
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0805825   0.0325940   0.1285710
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0711810   0.0653624   0.0769997
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0653595   0.0563745   0.0743445
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0661205   0.0577896   0.0744514
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0447761   0.0097249   0.0798273
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0454545   0.0179024   0.0730067
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1466667   0.0899959   0.2033374
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0520000   0.0361086   0.0678914
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0861067   0.0734687   0.0987447
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0677171   0.0586996   0.0767345
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0796233   0.0640958   0.0951508
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0600000   0.0444819   0.0755181
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0655738   0.0500416   0.0811059
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0423767   0.0357832   0.0489701
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0504184   0.0433170   0.0575198
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0415526   0.0348549   0.0482503
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.0696203   0.0298828   0.1093577
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.0566038   0.0125536   0.1006540
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.1192661   0.0583406   0.1801915
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.0403226   0.0056565   0.0749886
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.0544218   0.0177058   0.0911377
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.0935252   0.0450619   0.1419885
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0510204   0.0021523   0.0998886
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1612903   0.1410473   0.1815333
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0810811   0.0181378   0.1440243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0382166   0.0081998   0.0682334
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1377551   0.0894613   0.1860489
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0744681   0.0369058   0.1120303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0330739   0.0176102   0.0485377
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0428070   0.0322945   0.0533195
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0985916   0.0291899   0.1679932
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2173913   0.1776253   0.2571573
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1568627   0.0862266   0.2274989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0279951   0.0237316   0.0322587
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0402299   0.0321318   0.0483279
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0360090   0.0289364   0.0430816
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0066667   0.0008422   0.0124912
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0634744   0.0521974   0.0747514
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0289806   0.0229090   0.0350521
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0426945   0.0304873   0.0549017
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0850059   0.0662206   0.1037912
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0781938   0.0607280   0.0956596
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0284035   0.0222915   0.0345156
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0411248   0.0334898   0.0487597
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0288316   0.0218247   0.0358384


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0909091   0.0528347   0.1289835
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2546917   0.2104174   0.2989660
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1425486   0.1120439   0.1730533
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0662196   0.0562399   0.0761994
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2604341   0.2252590   0.2956091
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0837948   0.0281977   0.1393918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0916014   0.0868091   0.0963938
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0913313   0.0690992   0.1135634
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1030116   0.0952175   0.1108057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0650736   0.0602289   0.0699183
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1902174   0.1500638   0.2303710
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0934891   0.0701565   0.1168218
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0829436   0.0271087   0.1387786
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687062   0.0644898   0.0729225
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0753968   0.0523231   0.0984706
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0718095   0.0650627   0.0785562
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0450260   0.0408089   0.0492432
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1087963   0.0724447   0.1451479
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412730   0.0325768   0.0499692
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1925043   0.1605823   0.2244262
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325873   0.0292196   0.0359550
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0372331   0.0322193   0.0422468
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0327715   0.0284953   0.0370478


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.3263158   0.4555241    3.861735
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0888889   0.3617706    3.277433
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.2007338   0.7864177    1.833328
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.2079511   0.7943702    1.836859
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.1387755   0.8169244    1.587429
0-24 months   ki1000108-IRC              INDIA                          Medium               High              1.0258993   0.7242592    1.453167
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2222220   1.3923014    3.546840
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1251757   0.4267806    2.966443
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.9312096   1.1761944    3.170879
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.3751811   0.8074757    2.342019
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7570092   0.8146380    3.789513
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.4980079   0.6933570    3.236468
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.7493113   0.9449556    3.238343
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6804071   0.9112190    3.098891
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2929804   0.5999184    2.786709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9899570   0.6999193    1.400183
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.9596200   1.1118640    3.453759
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.5887026   0.8300315    3.040819
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.1986879   0.7930359    1.811838
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0753278   0.7598733    1.521740
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0420434   0.9124149    1.190088
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9977554   0.8782063    1.133579
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.3162198   0.6577465    2.633894
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              2.0607631   1.0445234    4.065725
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.5126509   1.8472819    3.417678
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.6627419   1.2223589    2.261783
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1415508   0.9054548    1.439209
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1609983   0.9262863    1.455184
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2149410   1.0314138    1.431124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9804165   0.8182259    1.174757
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.3934911   0.8476777    2.290750
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1286844   0.6647800    1.916316
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.1950113   0.8388582    1.702376
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.9664269   0.6586991    1.417917
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.3734818   0.7158382    2.635305
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2548742   0.6421367    2.452296
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9608645   0.3541751    2.606791
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.6384462   0.6996975    3.836667
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2744982   0.6421081    2.529708
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3157034   0.6740234    2.568272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2173397   0.5353978    2.767878
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0922330   0.4058292    2.939593
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.2018473   0.8044371    1.795587
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0735943   0.7647619    1.507142
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9182150   0.7824994    1.077469
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9289069   0.7993657    1.079441
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0151515   0.3771866    2.732156
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              3.2755555   1.3682192    7.841773
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.6558982   1.1797734    2.324174
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3022512   0.9330828    1.817479
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.7535484   0.5450500    1.041804
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8235501   0.6059578    1.119277
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1897678   0.9687020    1.461283
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9805540   0.7860965    1.223115
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.8130360   0.3097233    2.134252
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.7130942   0.7963737    3.685069
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              1.3496597   0.4524960    4.025630
6-24 months   ki1000108-IRC              INDIA                          Medium               High              2.3194242   0.8500255    6.328902
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              3.1612903   1.2269695    8.145073
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.5891892   0.4732196    5.336892
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              3.6045918   1.5251318    8.519318
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.9485816   0.7661667    4.955802
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              2.0996732   0.7988343    5.518826
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2942828   0.7632538    2.194772
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              2.2049689   1.0654565    4.563197
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.5910364   0.6898684    3.669391
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4370315   1.1164612    1.849647
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2862595   1.0032035    1.649180
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              9.5211577   3.9038372   23.221369
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              4.3470847   1.7701456   10.675475
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.9910270   1.3871954    2.857700
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.8314732   1.2741703    2.632532
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4478759   1.0966957    1.911510
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0150699   0.7422965    1.388080


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0115440   -0.0464384   0.0695264
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0268436   -0.0242997   0.0779869
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0188828   -0.0503517   0.0881173
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0525486    0.0009140   0.1041831
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0503097    0.0090606   0.0915588
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0174468   -0.0055553   0.0404489
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0280161    0.0019217   0.0541106
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0001971   -0.0166125   0.0170066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1137674    0.0359828   0.1915520
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0079543   -0.0146844   0.0305930
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0007525   -0.0036515   0.0051565
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0284741   -0.0045057   0.0614540
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0475261    0.0318497   0.0632026
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0107255   -0.0039802   0.0254313
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0043458   -0.0020226   0.0107142
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0246123   -0.0213201   0.0705447
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0169945   -0.0502926   0.0842816
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0165858   -0.0172399   0.0504116
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0073860   -0.0124915   0.0272636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0108450   -0.0130878   0.0347777
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0134891   -0.0446046   0.0715829
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0078850   -0.0138113   0.0295813
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0024749   -0.0063344   0.0013847
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0306207   -0.0026612   0.0639027
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0198095    0.0046198   0.0349991
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0103066   -0.0220334   0.0014202
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0026493   -0.0028155   0.0081142
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0108087   -0.0208939   0.0425113
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0230920   -0.0090432   0.0552273
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0577759    0.0124483   0.1031035
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0486596    0.0179613   0.0793579
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0081991   -0.0056758   0.0220739
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0939127    0.0255722   0.1622532
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0045922    0.0014393   0.0077450
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0305664    0.0235113   0.0376215
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0242332    0.0131599   0.0353066
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0043680   -0.0006750   0.0094110


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1269841   -0.8088255   0.5786455
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1053964   -0.1193233   0.2850005
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0552995   -0.1708578   0.2377734
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3686363   -0.0497531   0.6202725
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3203394    0.0068692   0.5348663
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2907801   -0.2027902   0.5818117
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3217609   -0.0425310   0.5587582
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0029760   -0.2861107   0.2270830
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4368376    0.0488833   0.6665479
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0949255   -0.1859196   0.3092619
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0082151   -0.0410454   0.0551447
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.3117676   -0.1513898   0.5886155
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.4613667    0.2902040   0.5912546
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0854954   -0.0393412   0.1953378
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0667828   -0.0362624   0.1595812
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1293904   -0.1476872   0.3395751
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0552995   -0.1910723   0.2507097
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1842211   -0.2892066   0.4837948
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1782832   -0.4663291   0.5395178
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1644094   -0.2862845   0.4571873
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1442857   -0.7671143   0.5856256
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0950645   -0.1723030   0.3014535
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0360210   -0.0937073   0.0186227
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.4061272   -0.2154366   0.7098287
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.2758614    0.0320920   0.4582370
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1486886   -0.3298919   0.0078250
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0588402   -0.0702781   0.1723816
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1343882   -0.3612271   0.4495527
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.3641439   -0.3738866   0.7057159
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5310465   -0.1026097   0.8005483
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.5601030    0.0863807   0.7881947
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1986545   -0.2153224   0.4716180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4878474   -0.0103504   0.7403868
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1409195    0.0396713   0.2314930
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8209477    0.5757823   0.9244262
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3620806    0.1822304   0.5023767
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1332867   -0.0332062   0.2729506
