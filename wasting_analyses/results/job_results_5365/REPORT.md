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

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* impsan
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_impsan

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
![](/tmp/40765f46-c99d-4cb2-ba34-a96d9660daa1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40765f46-c99d-4cb2-ba34-a96d9660daa1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40765f46-c99d-4cb2-ba34-a96d9660daa1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40765f46-c99d-4cb2-ba34-a96d9660daa1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1094575   0.0844567   0.1344583
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0775239   0.0544276   0.1006203
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0476368   0.0088918   0.0863817
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1908141   0.1260395   0.2555887
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2073163   0.1439310   0.2707016
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1519359   0.0875698   0.2163021
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1462714   0.1034188   0.1891240
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1227802   0.0774964   0.1680640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1581922   0.1009415   0.2154428
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0114360   0.0062549   0.0166172
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0085834   0.0034081   0.0137587
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0075205   0.0020341   0.0130068
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0284450   0.0202527   0.0366373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0157297   0.0127864   0.0186730
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0148026   0.0052031   0.0244022
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0936991   0.0662291   0.1211692
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0760255   0.0490906   0.1029603
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0671959   0.0453934   0.0889984
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0559239   0.0405889   0.0712590
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0612528   0.0466281   0.0758775
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0350579   0.0238595   0.0462563
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0586006   0.0528196   0.0643816
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0612941   0.0549611   0.0676271
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0452167   0.0388681   0.0515653
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0782190   0.0644488   0.0919892
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0745037   0.0437112   0.1052962
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0831635   0.0544114   0.1119156
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0205520   0.0121700   0.0289340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0280560   0.0145989   0.0415132
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0334356   0.0157956   0.0510756
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1093763   0.0701889   0.1485637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1249695   0.0753410   0.1745980
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1040805   0.0523236   0.1558373
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1869502   0.1558008   0.2180996
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1188484   0.0882777   0.1494192
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1336178   0.1061359   0.1610996
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1853253   0.1169867   0.2536638
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1780997   0.1154647   0.2407348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1755824   0.1026849   0.2484799
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1144279   0.0703836   0.1584721
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0476190   0.0172330   0.0780051
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0284360   0.0059900   0.0508820
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0950197   0.0554154   0.1346239
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0524977   0.0222265   0.0827688
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0375739   0.0152978   0.0598500
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0508038   0.0364297   0.0651778
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0541838   0.0337430   0.0746246
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0300301   0.0119224   0.0481377
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2218461   0.1711550   0.2725372
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1405885   0.0924852   0.1886917
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1692243   0.1095998   0.2288489
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0683371   0.0447283   0.0919460
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0359848   0.0268105   0.0451592
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0406504   0.0057430   0.0755578
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0372208   0.0187283   0.0557134
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0477707   0.0241670   0.0713744
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0532544   0.0193822   0.0871267
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0820398   0.0640808   0.0999988
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0991619   0.0810513   0.1172725
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0568330   0.0429837   0.0706822
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1034037   0.0869328   0.1198746
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0956838   0.0616256   0.1297420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1018503   0.0682824   0.1354183


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7082560   0.5354240   0.9368772
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.4352081   0.2001503   0.9463190
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0864833   0.6881703   1.7153398
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7962512   0.4647809   1.3641180
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3219347   0.7541879   2.3170770
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8893464   0.4245904   1.8628236
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8393999   0.5242682   1.3439537
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.0814974   0.6792354   1.7219901
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.7505574   0.4443714   1.2677152
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.6576116   0.3536580   1.2228001
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.5529857   0.3922420   0.7796035
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.5203947   0.2559565   1.0580338
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.3026932   0.6369794   2.6641515
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0144377   0.3956668   2.6008847
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.8113785   0.5131507   1.2829272
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.7171453   0.4637936   1.1088928
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0952886   0.7633829   1.5715013
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6268853   0.4119251   0.9540208
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0459630   0.9178199   1.1919971
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7716086   0.6579897   0.9048468
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9525012   0.6077981   1.4926973
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0632137   0.7290040   1.5506408
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3651233   0.7283079   2.5587554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.6268778   0.8352155   3.1689203
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1425654   0.6692019   1.9507652
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9515817   0.5151916   1.7576138
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.6357225   0.4443159   0.9095850
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7147239   0.5547493   0.9208309
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9610117   0.5769876   1.6006296
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9474284   0.5442974   1.6491360
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.4161491   0.1975190   0.8767765
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.2485061   0.1032622   0.5980435
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.5524926   0.2712183   1.1254700
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.3954329   0.1917955   0.8152809
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0665307   0.6656173   1.7089215
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.5910994   0.3036348   1.1507193
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.6337207   0.4201006   0.9559659
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7628006   0.5016370   1.1599319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.5265783   0.3427621   0.8089713
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.5948509   0.2357328   1.5010543
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2834395   0.6368903   2.5863434
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.4307692   0.6383424   3.2069004
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.2087044   0.9093329   1.6066355
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6927483   0.4994669   0.9608248
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9253418   0.6289919   1.3613170
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9849774   0.6862683   1.4137043


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0258185   -0.0422932   -0.0093438
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0174808   -0.0690100    0.0340485
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0017405   -0.0046662    0.0081473
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0024474   -0.0346013    0.0297065
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0019420   -0.0044327    0.0005488
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0105563   -0.0177060   -0.0034066
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0035744   -0.0090296    0.0161783
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0147941   -0.0364261    0.0068379
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0055290   -0.0180725    0.0070144
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0018691   -0.0059936    0.0022553
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0017181   -0.0087425    0.0053063
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0048015   -0.0015586    0.0111615
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0107716   -0.0190145    0.0405577
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0312466   -0.0552590   -0.0072341
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0157850   -0.0708730    0.0393029
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0511999   -0.0831615   -0.0192383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0347614   -0.0648909   -0.0046319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0018939   -0.0115275    0.0077397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0360822   -0.0724161    0.0002517
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0254667   -0.0455371   -0.0053963
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0067972   -0.0078156    0.0214100
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0080398   -0.0228485    0.0067688
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0013850   -0.0093810    0.0066110


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.3086893   -0.5651088   -0.0942803
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.1008506   -0.4427354    0.1600179
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0646701   -0.2057140    0.2744200
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0170166   -0.2670866    0.1837001
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2045453   -0.5075006    0.0375265
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5901110   -1.0321037   -0.2442538
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1020225   -0.3383205    0.3974809
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1874929   -0.4945227    0.0564617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1097141   -0.3886231    0.1131752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0329472   -0.1083932    0.0373634
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0224590   -0.1186569    0.0654665
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1893810   -0.0983987    0.4017627
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0896530   -0.1947056    0.3063298
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.2006799   -0.3624710   -0.0581013
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0931049   -0.4719433    0.1882307
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.8097670   -1.3291899   -0.4061784
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.5768738   -1.1279140   -0.1685298
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0387229   -0.2553861    0.1405471
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1942369   -0.4060330   -0.0143444
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5940378   -1.1207053   -0.1981658
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1544188   -0.2475187    0.4268562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1086465   -0.3287656    0.0750084
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0135759   -0.0949872    0.0617825
