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

**Outcome Variable:** wast_rec90d

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
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       10      86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       22      86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        6      86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21      86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        7      86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       20      86
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0        4      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        6      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0        2      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        8      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3      23
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       21     153
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       42     153
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       25     153
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       34     153
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       12     153
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       19     153
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        5      88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       28      88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       10      88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       29      88
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        2      88
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       14      88
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2      34
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       14      34
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4      34
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       11      34
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0      34
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3      34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       12      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       29      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       20      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        5      83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       17      83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5      38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10      38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        2      38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       18      38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0      38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        3      38
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       38     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       63     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       42     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       61     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       40     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       82     326
0-24 months   ki1000108-IRC              INDIA                          Low                   0       57     395
0-24 months   ki1000108-IRC              INDIA                          Low                   1       81     395
0-24 months   ki1000108-IRC              INDIA                          Medium                0       63     395
0-24 months   ki1000108-IRC              INDIA                          Medium                1       67     395
0-24 months   ki1000108-IRC              INDIA                          High                  0       42     395
0-24 months   ki1000108-IRC              INDIA                          High                  1       85     395
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      274     512
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      194     512
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       20     512
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       12     512
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        4     512
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        8     512
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      272     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      145     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      150     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      107     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       82     814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       58     814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      180     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        9     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       27     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        2     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       14     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2     234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0       96     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       92     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0       58     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       79     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0       48     421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       48     421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       50     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       55     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       44     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       66     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       34     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       58     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       42     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       58     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       42     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       68     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       33     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       68     311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        8     712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       16     712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      191     712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      319     712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       67     712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      111     712
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        5      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        7      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        4      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0       11      37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1        7      37
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      388    1116
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      444    1116
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       90    1116
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       88    1116
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       56    1116
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       50    1116
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0      239    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1372    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0      286    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1834    4431
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0       90    4431
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      610    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      404    3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      372    3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      463    3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      478    3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      761    3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1091    3569
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      105     377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       76     377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       70     377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       60     377
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       36     377
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       30     377
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      696    2119
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      168    2119
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      771    2119
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      278    2119
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      144    2119
0-24 months   ki1135781-COHORTS          INDIA                          High                  1       62    2119
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      255    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      323    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      207    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      322    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      202    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      380    1689
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       28      77
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        2      77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       24      77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       10      77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12      77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        1      77
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     3460   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2380   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     2631   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1914   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     2639   15124
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2100   15124
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1229    1774
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      434    1774
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       31    1774
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       14    1774
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       56    1774
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       10    1774
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0        5      50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       12      50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0        1      50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17      50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0        1      50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14      50
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        4      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        6      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3      14
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       10      73
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       23      73
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0        5      73
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       19      73
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0        6      73
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       10      73
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0        2      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       11      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0        5      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       11      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0        1      40
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       10      40
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4      11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5      11
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        6      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        9      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        2      33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        8      33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        0      11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        4      11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1      11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        6      11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0      11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0      11
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       20     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       35     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       20     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       43     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       26     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       59     203
0-6 months    ki1000108-IRC              INDIA                          Low                   0       31     240
0-6 months    ki1000108-IRC              INDIA                          Low                   1       51     240
0-6 months    ki1000108-IRC              INDIA                          Medium                0       35     240
0-6 months    ki1000108-IRC              INDIA                          Medium                1       43     240
0-6 months    ki1000108-IRC              INDIA                          High                  0       21     240
0-6 months    ki1000108-IRC              INDIA                          High                  1       59     240
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0       86     216
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1      112     216
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0        8     216
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        6     216
0-6 months    ki1000109-EE               PAKISTAN                       High                  0        0     216
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        4     216
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0       95     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1       86     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0       44     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       52     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0       27     341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       37     341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       68      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0        7      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0        3      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        0      78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   0       29     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   1       58     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                0       17     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                1       61     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  0       18     223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  1       40     223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0       14     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       45     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0       16     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       57     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0        9     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       43     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0        8     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       51     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0        8     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       59     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0        5     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       67     198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        3     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        5     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       71     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      169     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       27     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       65     340
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        0       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        1       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        2       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        1       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  0        3       9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  1        2       9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0       98     358
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      160     358
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       34     358
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       30     358
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       18     358
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       18     358
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0      187    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1355    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0      220    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1816    4263
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0       81    4263
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      604    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      160    2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      349    2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      167    2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      456    2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      318    2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1062    2512
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0       26     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       74     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0       21     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       55     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0        7     212
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       29     212
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0      340    1413
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      168    1413
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0      459    1413
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      278    1413
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      106    1413
0-6 months    ki1135781-COHORTS          INDIA                          High                  1       62    1413
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0       65     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      144     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0       54     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      165     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0       79     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      245     752
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0        2       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0        2       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1350    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2380    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      840    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1914    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0      882    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2100    9466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      206     486
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      252     486
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0        6     486
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       10     486
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0        6     486
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1        6     486
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        5      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       10      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        5      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        4      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        6      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        6      36
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0        3       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       11      80
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       19      80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       20      80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       15      80
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        6      80
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1        9      80
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        3      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       17      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        5      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       18      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        1      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        4      48
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2      23
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       10      23
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4      23
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        6      23
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0      23
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        6      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       20      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       12      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        3      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        9      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5      27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        6      27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1      27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       12      27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0      27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        3      27
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       18     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       28     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       22     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       18     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       14     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       23     123
6-24 months   ki1000108-IRC              INDIA                          Low                   0       26     155
6-24 months   ki1000108-IRC              INDIA                          Low                   1       30     155
6-24 months   ki1000108-IRC              INDIA                          Medium                0       28     155
6-24 months   ki1000108-IRC              INDIA                          Medium                1       24     155
6-24 months   ki1000108-IRC              INDIA                          High                  0       21     155
6-24 months   ki1000108-IRC              INDIA                          High                  1       26     155
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0      188     296
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1       82     296
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0       12     296
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1        6     296
6-24 months   ki1000109-EE               PAKISTAN                       High                  0        4     296
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        4     296
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      177     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       59     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      106     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       55     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       55     473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       21     473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      112     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        9     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       20     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        2     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       11     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2     156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0       67     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       34     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0       41     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       18     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0       30     198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1        8     198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       36     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       10     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       28     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1        9     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       25     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       15     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       34     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1        7     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       34     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1        9     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       28     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1        1     113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        5     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       11     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      120     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      150     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       40     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       46     372
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        5      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        6      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        2      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        2      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0        8      28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1        5      28
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      290     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      284     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       56     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       58     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       38     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       32     758
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0       52     168
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       17     168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0       66     168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       18     168
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0        9     168
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        6     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      244    1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1       23    1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      296    1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1       22    1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      443    1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       29    1057
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0       79     165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1        2     165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       49     165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1        5     165
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       29     165
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1        1     165
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0      356     706
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1        0     706
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0      312     706
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1        0     706
6-24 months   ki1135781-COHORTS          INDIA                          High                  0       38     706
6-24 months   ki1135781-COHORTS          INDIA                          High                  1        0     706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      190     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      179     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      153     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      157     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      123     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      135     937
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       26      73
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        2      73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       22      73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       10      73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12      73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        1      73
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     2110    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1        0    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     1791    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1        0    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     1757    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1        0    5658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1023    1288
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      182    1288
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       25    1288
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        4    1288
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       50    1288
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1        4    1288


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a58815ad-53b9-4599-a2bc-353d617e974a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a58815ad-53b9-4599-a2bc-353d617e974a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a58815ad-53b9-4599-a2bc-353d617e974a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a58815ad-53b9-4599-a2bc-353d617e974a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6875000   0.5204085   0.8545915
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7777778   0.5988250   0.9567305
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7407407   0.6174221   0.8640594
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6655732   0.5373001   0.7938462
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5825744   0.4628599   0.7022888
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6059071   0.4042312   0.8075830
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6497300   0.5632036   0.7362565
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6250405   0.5345261   0.7155549
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6812727   0.5942637   0.7682817
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5456954   0.4713613   0.6200295
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4336951   0.3636508   0.5037395
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6464052   0.5861067   0.7067036
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3425659   0.3023068   0.3828250
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3717652   0.3272580   0.4162724
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3740078   0.3184261   0.4295895
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.5316555   0.4714926   0.5918184
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.6217220   0.5484698   0.6949742
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.5822033   0.5035647   0.6608420
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5406650   0.4499144   0.6314156
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.5900931   0.4950511   0.6851350
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6233026   0.5333765   0.7132287
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8014433   0.7314147   0.8714719
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8032336   0.7403345   0.8661326
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8393157   0.7682100   0.9104214
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6666667   0.4628279   0.8705055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6254902   0.5809696   0.6700108
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6235955   0.5481204   0.6990706
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5314831   0.4809831   0.5819831
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4247917   0.3277404   0.5218431
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3662862   0.2616507   0.4709216
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8501393   0.8350437   0.8652349
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8646893   0.8518128   0.8775657
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8860461   0.8689525   0.9031398
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5125542   0.4863512   0.5387571
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5322659   0.5090651   0.5554666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5736892   0.5547121   0.5926663
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4159989   0.3553374   0.4766603
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3984545   0.3333919   0.4635171
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4537752   0.3870342   0.5205163
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2184497   0.1984275   0.2384719
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2589386   0.2375396   0.2803375
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2859835   0.2581717   0.3137953
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6014204   0.5675194   0.6353214
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6490508   0.6133859   0.6847156
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6916616   0.6565162   0.7268070
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4151529   0.4000639   0.4302419
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4364105   0.4205272   0.4522939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4388480   0.4226105   0.4550855
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2613374   0.2317179   0.2909570
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3336252   0.1103793   0.5568710
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1585272   0.0383897   0.2786648
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6969697   0.5387947   0.8551447
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.7916667   0.6194767   0.9638566
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.6250000   0.3721939   0.8778061
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6357986   0.5057570   0.7658402
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6829668   0.5705039   0.7954297
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6944677   0.5954616   0.7934737
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5845325   0.4804590   0.6886059
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5029591   0.3973617   0.6085566
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.7101712   0.6202985   0.8000439
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4718765   0.4038926   0.5398604
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5215749   0.4333399   0.6098099
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5351692   0.4343557   0.6359827
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6707651   0.5757589   0.7657713
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7774435   0.6898276   0.8650594
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.6834227   0.5695623   0.7972830
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7627119   0.6581252   0.8672985
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7808219   0.6840825   0.8775613
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8269231   0.7264728   0.9273734
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8644068   0.7759319   0.9528817
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8805970   0.8019601   0.9592340
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9305556   0.8711487   0.9899624
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6339860   0.5512290   0.7167431
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4258629   0.2841928   0.5675331
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5042713   0.3262037   0.6823388
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8731564   0.8583019   0.8880110
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8902970   0.8780686   0.9025255
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8892195   0.8723141   0.9061249
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7074166   0.6781591   0.7366741
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7353272   0.7091455   0.7615089
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7680141   0.7488580   0.7871702
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7400000   0.6534164   0.8265836
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7236842   0.6242822   0.8230862
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8055556   0.6753507   0.9357605
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3363888   0.3073597   0.3654178
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.3815257   0.3531126   0.4099388
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3489080   0.3173766   0.3804394
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7333701   0.6801107   0.7866295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7825548   0.7346401   0.8304695
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7753622   0.7324214   0.8183030
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6570616   0.6392400   0.6748831
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.7003499   0.6814636   0.7192362
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7106344   0.6919215   0.7293473
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5502183   0.4856538   0.6147829
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6250000   0.2888337   0.9611663
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5000000   0.0990983   0.9009017
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6333333   0.4225524   0.8441142
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4285714   0.2479229   0.6092200
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3314261   0.8685739
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5993741   0.4639356   0.7348126
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.4592572   0.2904956   0.6280187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6226231   0.4764040   0.7688423
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2885564   0.1828814   0.3942314
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2135551   0.1111778   0.3159323
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.2683143   0.1603460   0.3762826
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2501261   0.1941905   0.3060616
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3324765   0.2641744   0.4007786
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2607801   0.1719906   0.3495695
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3366337   0.2406100   0.4326573
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3050847   0.1875637   0.4226058
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2105263   0.0841686   0.3368840
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2173913   0.0880742   0.3467084
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2432432   0.0907435   0.3957430
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3750000   0.2362295   0.5137705
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6875000   0.4523318   0.9226682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5555556   0.4941981   0.6169130
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5348837   0.4257515   0.6440159
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4891427   0.4259457   0.5523397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4259353   0.3011487   0.5507220
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3226675   0.1605406   0.4847944
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2463768   0.1460750   0.3466786
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2142857   0.1257468   0.3028247
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.4000000   0.1498474   0.6501526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0910157   0.0596808   0.1223506
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0707189   0.0438251   0.0976127
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0625986   0.0418627   0.0833346
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4868566   0.4393662   0.5343470
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5073016   0.4568060   0.5577972
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5298158   0.4792660   0.5803656


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7325581   0.6399608   0.8251555
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6209150   0.5357837   0.7060464
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6264045   0.5887191   0.6640899
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5215054   0.4764383   0.5665724
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5438498   0.5273663   0.5603333
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4403183   0.3884516   0.4921850
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2397357   0.2214428   0.2580286
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4227718   0.4116444   0.4338991
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2581736   0.2292825   0.2870648
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7123288   0.6046595   0.8199981
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5810056   0.5082784   0.6537327
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7432325   0.7261601   0.7603048
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7452830   0.6866274   0.8039386
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3595188   0.3344897   0.3845478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6754701   0.6621313   0.6888089
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5514403   0.4887790   0.6141017
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5375000   0.4127227   0.6622773
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934037   0.4386266   0.5481808
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0700095   0.0547600   0.0852589
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.1313131   0.8095986   1.5808692
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               1.0774411   0.8022294   1.4470665
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8752973   0.6608596   1.1593162
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9103538   0.6204237   1.3357713
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9620003   0.7960263   1.1625804
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0485474   0.8756961   1.2555172
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.7947568   0.6434904   0.9815818
0-24 months   ki1000108-IRC              INDIA                          High                 Low               1.1845531   1.0045043   1.3968741
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.0852370   0.9248012   1.2735054
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.0917834   0.9106948   1.3088809
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.1694076   0.9992016   1.3686069
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               1.0950763   0.9231901   1.2989654
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0914209   0.8710733   1.3675078
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.1528445   0.9304873   1.4283380
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0022338   0.8918714   1.1262529
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0472553   0.9270065   1.1831025
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9382353   0.6854372   1.2842686
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9353933   0.6732620   1.2995840
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.7992573   0.6240978   1.0235772
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6891774   0.5101437   0.9310428
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0171148   0.9947490   1.0399835
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0422364   1.0159287   1.0692255
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0384578   0.9767357   1.1040803
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.1192753   1.0592164   1.1827396
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9578259   0.7915685   1.1590033
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0908089   0.9121125   1.3045144
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               1.1853464   1.0733758   1.3089973
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               1.3091503   1.1686154   1.4665856
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0791965   0.9987552   1.1661166
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1500468   1.0672571   1.2392588
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0512043   1.0023660   1.1024222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0570756   1.0072947   1.1093166
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.2766070   0.6480788   2.5147027
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.6065999   0.2821458   1.3041604
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               1.1358696   0.8294560   1.5554769
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.8967391   0.5639458   1.4259192
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0741873   0.8261172   1.3967489
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0922762   0.8512530   1.4015425
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               0.8604468   0.6534448   1.1330242
0-6 months    ki1000108-IRC              INDIA                          High                 Low               1.2149388   0.9764583   1.5116635
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.1053208   0.8892116   1.3739521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.1341298   0.8985394   1.4314904
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.1590399   0.9694965   1.3856403
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               1.0188703   0.8211019   1.2642728
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0237443   0.8510039   1.2315482
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0841880   0.9026943   1.3021725
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0187299   0.8893393   1.1669455
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0765251   0.9541901   1.2145444
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.6717229   0.4698975   0.9602343
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7953981   0.5458894   1.1589492
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0196306   0.9982190   1.0415015
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               1.0183965   0.9932665   1.0441624
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0394542   0.9872449   1.0944246
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0856602   1.0373553   1.1362146
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9779516   0.8164989   1.1713297
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0885886   0.8916724   1.3289915
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.1341810   1.0324678   1.2459144
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0372166   0.9320678   1.1542275
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0670666   0.9710039   1.1726329
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0572590   0.9653450   1.1579246
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0658817   1.0272717   1.1059427
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0815339   1.0426615   1.1218556
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1359127   0.6550256   1.9698431
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9087302   0.4041167   2.0434457
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.6766917   0.3953941   1.1581145
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9473684   0.5422331   1.6552050
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.7662280   0.5012776   1.1712181
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0387889   0.7532469   1.4325746
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.7400808   0.4004081   1.3679036
6-24 months   ki1000108-IRC              INDIA                          High                 Low               0.9298504   0.5306956   1.6292237
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.3292356   0.9853219   1.7931879
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.0425945   0.6968300   1.5599260
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.9062812   0.5609331   1.4642487
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.6253870   0.3217195   1.2156828
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1189189   0.4717211   2.6540675
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.7250000   0.8558651   3.4767455
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8080808   0.5640895   1.1576082
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7780127   0.5224119   1.1586715
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8707792   0.6322139   1.1993669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6596592   0.3926963   1.1081089
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8697479   0.4869471   1.5534776
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.6235294   0.7698083   3.4240313
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7769971   0.4658150   1.2960607
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6877785   0.4268965   1.1080888
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0419939   0.9068193   1.1973183
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0882380   0.9497883   1.2468696


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0450581   -0.0807144    0.1708307
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0446581   -0.1438542    0.0545379
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0178282   -0.0893219    0.0536655
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0441780   -0.0141467    0.1025027
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0382695    0.0106907    0.0658482
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0114655   -0.0574687    0.0345378
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0423969   -0.0292482    0.1140420
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1776491   -0.2352336   -0.1200645
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0402622   -0.2407242    0.1601998
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0099777   -0.0368224    0.0168670
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0110659   -0.0006288    0.0227606
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0312957    0.0092983    0.0532930
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0243194   -0.0138064    0.0624453
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0212860    0.0073127    0.0352593
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0054476   -0.0224081    0.0333033
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0076189   -0.0039568    0.0191945
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0031638   -0.0110899    0.0047623
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0153591   -0.1028535    0.1335717
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0390783   -0.0699003    0.1480569
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0529675   -0.0300250    0.1359600
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0413200   -0.0046548    0.0872949
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0422394   -0.0289036    0.1133824
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0253316   -0.0604071    0.1110703
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0295326   -0.0415117    0.1005769
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0529804   -0.1020175   -0.0039434
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0123702    0.0007264    0.0240140
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0358159    0.0107572    0.0608745
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0052830   -0.0568847    0.0674507
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0231300    0.0028172    0.0434428
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0033320   -0.0409336    0.0475976
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0184085    0.0045636    0.0322535
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0012220   -0.0142115    0.0166555
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0958333   -0.2607934    0.0691267
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0383984   -0.1477429    0.0709460
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.2275726    0.1369054    0.3182399
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0352862   -0.0043438    0.0749162
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0336034   -0.0977457    0.0305390
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0590315   -0.0446381    0.1627010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1310484   -0.3618537    0.0997569
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0042610   -0.0261479    0.0346699
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0023292   -0.0798751    0.0752167
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0210062   -0.0472588    0.0052464
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0158115   -0.0214145    0.0530375


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0615079   -0.1285089    0.2195300
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0719231   -0.2449811    0.0770791
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0282135   -0.1481082    0.0791608
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0748941   -0.0289811    0.1682831
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.1004882    0.0263631    0.1689701
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0220410   -0.1149733    0.0631455
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0727142   -0.0587881    0.1878839
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.2847879   -0.3893143   -0.1881257
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0642750   -0.4376675    0.2121396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0191325   -0.0721025    0.0312203
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0128493   -0.0008178    0.0263297
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0575447    0.0163509    0.0970133
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0552315   -0.0348774    0.1374944
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0887894    0.0300163    0.1440013
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0089766   -0.0379421    0.0537743
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0180212   -0.0096916    0.0449734
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0122545   -0.0435192    0.0180734
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0215618   -0.1592495    0.1741714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0579043   -0.1186944    0.2066248
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0830863   -0.0571354    0.2047085
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0805150   -0.0133407    0.1656778
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0592414   -0.0464387    0.1542488
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0321449   -0.0830800    0.1351115
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0330365   -0.0500643    0.1095607
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0911875   -0.1812069   -0.0080284
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0139693    0.0007366    0.0270268
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0481893    0.0139355    0.0812532
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0070886   -0.0799483    0.0871109
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0643360    0.0068298    0.1185125
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0045229   -0.0574052    0.0628240
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0272529    0.0066090    0.0474678
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0022160   -0.0261696    0.0298164
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1782946   -0.5303439    0.0927673
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0684494   -0.2841434    0.1110151
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.4409220    0.2409443    0.5882143
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.1236324   -0.0270045    0.2521745
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1108911   -0.3427621    0.0809399
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.2135550   -0.2716168    0.5136147
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.2355072   -0.7301277    0.1177078
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0086359   -0.0549800    0.0684157
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0095440   -0.3830568    0.2630967
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.3000480   -0.7357613    0.0262918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0314552   -0.0452894    0.1025653
