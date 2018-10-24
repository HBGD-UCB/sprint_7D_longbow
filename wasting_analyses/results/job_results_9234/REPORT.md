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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        feducyrs    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       38     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        0     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       45     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        4     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       48     138
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        3     138
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       51     139
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1        4     139
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       32     139
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        9     139
0-24 months   ki0047075b-MAL-ED          INDIA                          High                0       43     139
0-24 months   ki0047075b-MAL-ED          INDIA                          High                1        0     139
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       27      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        0      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       27      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        1      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       40      96
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        1      96
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       63     234
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0     234
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       60     234
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        0     234
0-24 months   ki0047075b-MAL-ED          PERU                           High                0      110     234
0-24 months   ki0047075b-MAL-ED          PERU                           High                1        1     234
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       38      99
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0      99
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129     206
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     206
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      501    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       62    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      403    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       35    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      345    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       17    1363
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0      107     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       24     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0      117     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1       28     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       86     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1       13     375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      208     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        8     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        3     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      216     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        4     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      215     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      207     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        8     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      282     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        4     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1123    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       29    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      581    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       20    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      393    2155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1        9    2155
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      436    1182
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       76    1182
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      332    1182
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       48    1182
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      244    1182
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       46    1182
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     6242   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       71   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7002   16010
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       61   16010
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     2614   16010
0-24 months   ki1119695-PROBIT           BELARUS                        High                1       20   16010
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1537    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       45    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     6758    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1      108    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      599    9056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9    9056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      431     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       14     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      351     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       15     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      182     999
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        6     999
0-24 months   ki1135781-COHORTS          INDIA                          Low                 0      366    1242
0-24 months   ki1135781-COHORTS          INDIA                          Low                 1       38    1242
0-24 months   ki1135781-COHORTS          INDIA                          Medium              0      324    1242
0-24 months   ki1135781-COHORTS          INDIA                          Medium              1       27    1242
0-24 months   ki1135781-COHORTS          INDIA                          High                0      454    1242
0-24 months   ki1135781-COHORTS          INDIA                          High                1       33    1242
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      736    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       44    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      897    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       59    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0      892    2659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       31    2659
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      258     712
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        1     712
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      234     712
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     712
0-24 months   ki1148112-LCNI-5           MALAWI                         High                0      214     712
0-24 months   ki1148112-LCNI-5           MALAWI                         High                1        2     712
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0    11088   30142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      732   30142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     9718   30142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      624   30142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     7626   30142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      354   30142
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     3914    5830
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      328    5830
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      800    5830
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       60    5830
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      670    5830
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       58    5830
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 0       36     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 1        2     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              0       47     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                0       49     138
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                1        2     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 0       50     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 1        5     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              0       37     138
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              1        4     138
0-6 months    ki0047075b-MAL-ED          INDIA                          High                0       41     138
0-6 months    ki0047075b-MAL-ED          INDIA                          High                1        1     138
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 0       27      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 1        0      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              0       28      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              1        0      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       40      96
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        1      96
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 0       63     234
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 1        0     234
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              0       60     234
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              1        0     234
0-6 months    ki0047075b-MAL-ED          PERU                           High                0      111     234
0-6 months    ki0047075b-MAL-ED          PERU                           High                1        0     234
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       25      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       37      98
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0      98
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      129     206
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     206
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      209     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        6     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        2     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      213     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        6     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1076    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       23    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      559    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       16    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      364    2051
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       13    2051
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      424    1082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       56    1082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0      296    1082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       44    1082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0      232    1082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1       30    1082
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       33     128
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        3     128
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       40     128
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        5     128
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       44     128
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        3     128
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       47     135
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1        5     135
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       30     135
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1       10     135
6-24 months   ki0047075b-MAL-ED          INDIA                          High                0       43     135
6-24 months   ki0047075b-MAL-ED          INDIA                          High                1        0     135
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       27      92
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        0      92
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       25      92
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        1      92
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       39      92
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        0      92
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       55     205
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        1     205
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       54     205
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        0     205
6-24 months   ki0047075b-MAL-ED          PERU                           High                0       94     205
6-24 months   ki0047075b-MAL-ED          PERU                           High                1        1     205
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0       35      94
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        1      94
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       23      94
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0      94
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       35      94
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0      94
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       54     196
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     196
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0       17     196
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     196
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0      125     196
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     196
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      397    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1      100    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      341    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       47    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      276    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       40    1201
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0       97     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       21     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0      113     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1       23     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       79     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1       15     348
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      178     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1       23     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      180     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        9     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      205     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        6     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      195     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       21     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      198     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1       11     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      262     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1       10     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0      852    1697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       46    1697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      450    1697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       26    1697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      312    1697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       11    1697
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      386    1152
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1      112    1152
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      322    1152
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       54    1152
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      230    1152
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       48    1152
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     2666    6861
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1        2    6861
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     3077    6861
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1        0    6861
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     1116    6861
6-24 months   ki1119695-PROBIT           BELARUS                        High                1        0    6861
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0      409    2146
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       30    2146
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     1527    2146
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       57    2146
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0      118    2146
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1        5    2146
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      388     886
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       15     886
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      299     886
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       15     886
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      160     886
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        9     886
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      686    2500
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       60    2500
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      810    2500
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       83    2500
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0      819    2500
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       42    2500
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      249     688
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        1     688
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      225     688
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     688
6-24 months   ki1148112-LCNI-5           MALAWI                         High                0      208     688
6-24 months   ki1148112-LCNI-5           MALAWI                         High                1        2     688
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     3612    5548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      416    5548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      744    5548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       78    5548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      626    5548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       72    5548


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/306ade48-05f5-4e84-a99f-b0019204e58f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/306ade48-05f5-4e84-a99f-b0019204e58f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/306ade48-05f5-4e84-a99f-b0019204e58f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/306ade48-05f5-4e84-a99f-b0019204e58f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1101243   0.0830059   0.1372428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0799087   0.0554976   0.1043198
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0469613   0.0119037   0.0820190
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1832061   0.1168748   0.2495374
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1931034   0.1287684   0.2574385
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1313131   0.0646944   0.1979318
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1484375   0.1048486   0.1920264
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1263158   0.0790393   0.1735923
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1586207   0.0991083   0.2181331
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0112466   0.0060260   0.0164672
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0086366   0.0034510   0.0138222
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0075930   0.0020886   0.0130974
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0284450   0.0202527   0.0366373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0157297   0.0127864   0.0186730
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0148026   0.0052031   0.0244022
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0940594   0.0655831   0.1225357
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0769231   0.0490351   0.1048110
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0677618   0.0454305   0.0900931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0564103   0.0402163   0.0726042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0617155   0.0464586   0.0769723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0335861   0.0219612   0.0452111
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0619289   0.0553765   0.0684814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0603365   0.0532666   0.0674064
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0443609   0.0374017   0.0513201
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0773220   0.0634205   0.0912235
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0697674   0.0368658   0.1026691
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0796703   0.0482782   0.1110624
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0209281   0.0124631   0.0293931
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0278261   0.0143793   0.0412729
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0344828   0.0160596   0.0529059
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1166667   0.0760149   0.1573185
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1294118   0.0789086   0.1799149
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1145038   0.0599258   0.1690818
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2012072   0.1671661   0.2352484
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1211340   0.0872938   0.1549743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1265823   0.0949598   0.1582048
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1779661   0.1088554   0.2470768
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1691176   0.1060266   0.2322087
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1595745   0.0854366   0.2337124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1144279   0.0703836   0.1584721
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0476190   0.0172330   0.0780051
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0284360   0.0059900   0.0508820
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0972222   0.0576850   0.1367594
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0526316   0.0223367   0.0829265
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0367647   0.0143849   0.0591446
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0512249   0.0368018   0.0656481
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0546218   0.0342017   0.0750420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0340557   0.0142703   0.0538412
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2248996   0.1729958   0.2768034
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1436170   0.0934425   0.1937916
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1726619   0.1097753   0.2355484
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0683371   0.0447283   0.0919460
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0359848   0.0268105   0.0451592
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0406504   0.0057430   0.0755578
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0372208   0.0187283   0.0557134
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0477707   0.0241670   0.0713744
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0532544   0.0193822   0.0871267
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0804290   0.0609096   0.0999483
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0929451   0.0738976   0.1119927
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0487805   0.0343893   0.0631717
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1032771   0.0865979   0.1199562
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0948905   0.0590903   0.1306908
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1031519   0.0671091   0.1391946


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0836390   0.0602327   0.1070453
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1438240   0.1155088   0.1721392
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0094941   0.0051728   0.0138153
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178887   0.0151586   0.0206188
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0350350   0.0236276   0.0464425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567315   0.0525489   0.0609140
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0765009   0.0645569   0.0884449
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253535   0.0185487   0.0321583
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1201479   0.0927249   0.1475708
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1557036   0.1398038   0.1716033
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0489098   0.0386452   0.0591745
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1857639   0.1539754   0.2175524
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0428705   0.0342981   0.0514428
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0440181   0.0305030   0.0575331
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0740000   0.0637367   0.0842633
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1020187   0.0880118   0.1160257


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7256223   0.5442706   0.9674008
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.4264391   0.2109194   0.8621791
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0540230   0.6444188   1.7239789
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7167508   0.3843130   1.3367537
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3219347   0.7541879   2.3170770
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8893464   0.4245904   1.8628236
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8509695   0.5288236   1.3693586
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.0686025   0.6635907   1.7208069
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.7679237   0.4517946   1.3052543
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6751366   0.3651542   1.2482656
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.5529857   0.3922420   0.7796035
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.5203947   0.2559565   1.0580338
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.3026932   0.6369794   2.6641515
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0144377   0.3956668   2.6008847
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.8178138   0.5099468   1.3115474
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.7204150   0.4605030   1.1270237
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0940472   0.7490387   1.5979671
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5953905   0.3797588   0.9334605
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9742860   0.8342440   1.1378364
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7163195   0.5962416   0.8605800
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9022972   0.5430707   1.4991424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0303705   0.6719601   1.5799501
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3296030   0.7080073   2.4969295
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.6476762   0.8430352   3.2203125
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1092437   0.6573791   1.8717077
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9814613   0.5438174   1.7713045
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.6020361   0.4068413   0.8908817
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6291139   0.4614674   0.8576648
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9502801   0.5546070   1.6282382
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.8966565   0.4893860   1.6428606
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.4161491   0.1975190   0.8767765
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.2485061   0.1032622   0.5980435
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.5413534   0.2675494   1.0953622
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.3781513   0.1818567   0.7863243
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0663135   0.6677716   1.7027146
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.6648270   0.3485982   1.2679210
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.6385828   0.4201208   0.9706446
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7677287   0.4988250   1.1815914
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.5265783   0.3427621   0.8089713
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.5948509   0.2357328   1.5010543
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2834395   0.6368903   2.5863434
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.4307692   0.6383424   3.2069004
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.1556178   0.8411322   1.5876844
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6065041   0.4139301   0.8886698
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9187957   0.6097267   1.3845308
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9987877   0.6790447   1.4690888


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0264853   -0.0425414   -0.0104292
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0098728   -0.0627649    0.0430194
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0017405   -0.0046662    0.0081473
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0046135   -0.0371054    0.0278784
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0017526   -0.0042669    0.0007618
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0105563   -0.0177060   -0.0034066
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0035744   -0.0090296    0.0161783
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0151544   -0.0377006    0.0073918
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0060154   -0.0193402    0.0073095
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0051975   -0.0101138   -0.0002812
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0008212   -0.0081233    0.0064810
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0044254   -0.0019909    0.0108417
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0034812   -0.0271513    0.0341137
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0455037   -0.0733351   -0.0176722
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0084259   -0.0640665    0.0472148
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0511999   -0.0831615   -0.0192383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0369640   -0.0670783   -0.0068497
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0023151   -0.0119705    0.0073403
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0391357   -0.0762210   -0.0020504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0254667   -0.0455371   -0.0053963
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0067972   -0.0078156    0.0214100
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0064290   -0.0225210    0.0096631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0012583   -0.0096796    0.0071630


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.3166620   -0.5547226   -0.1150535
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0569583   -0.4105237    0.2079815
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0646701   -0.2057140    0.2744200
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0320772   -0.2845526    0.1707748
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1845961   -0.4870730    0.0563557
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5901110   -1.0321037   -0.2442538
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1020225   -0.3383205    0.3974809
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1920590   -0.5125877    0.0605473
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1193647   -0.4167935    0.1156246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0916152   -0.1818658   -0.0082563
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0107340   -0.1108835    0.0803867
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1745468   -0.1159392    0.3894175
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0289744   -0.2625043    0.2531583
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.2922455   -0.4817065   -0.1270102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0496984   -0.4348197    0.2320522
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.8097670   -1.3291899   -0.4061784
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.6134259   -1.1635402   -0.2031869
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0473341   -0.2643087    0.1324043
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.2106745   -0.4259910   -0.0278695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5940378   -1.1207053   -0.1981658
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1544188   -0.2475187    0.4268562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0868778   -0.3272825    0.1099835
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0123342   -0.0982721    0.0668793
