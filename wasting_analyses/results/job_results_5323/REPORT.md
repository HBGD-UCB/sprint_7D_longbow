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
![](/tmp/3de13fd3-b24b-465d-b1b2-292ea0daa7c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3de13fd3-b24b-465d-b1b2-292ea0daa7c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3de13fd3-b24b-465d-b1b2-292ea0daa7c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3de13fd3-b24b-465d-b1b2-292ea0daa7c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6875000   0.5204085   0.8545915
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7777778   0.5988250   0.9567305
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7407407   0.6174221   0.8640594
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6677095   0.5394515   0.7959676
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5823298   0.4627004   0.7019593
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6017138   0.4045797   0.7988478
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6492611   0.5644306   0.7340916
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6251682   0.5362748   0.7140617
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6802325   0.5944980   0.7659670
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5550067   0.4637862   0.6462271
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4685979   0.3801704   0.5570254
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6372188   0.5603815   0.7140560
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3428084   0.3023502   0.3832666
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3718841   0.3270414   0.4167268
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3731289   0.3168901   0.4293677
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.5328127   0.4723522   0.5932732
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.6236444   0.5497369   0.6975518
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.5843851   0.5055896   0.6631805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5416100   0.4510611   0.6321590
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.5894396   0.4945579   0.6843212
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6229817   0.5332260   0.7127375
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8029590   0.7301120   0.8758060
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8045366   0.7394809   0.8695923
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.8407086   0.7668361   0.9145811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6666667   0.4628279   0.8705055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6254902   0.5809696   0.6700108
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6235955   0.5481204   0.6990706
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5315264   0.4810458   0.5820070
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4239497   0.3272284   0.5206710
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3655456   0.2615275   0.4695637
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8503518   0.8353865   0.8653172
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8644397   0.8516071   0.8772722
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8856008   0.8685694   0.9026323
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5134119   0.4873577   0.5394662
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5319458   0.5087347   0.5551569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5730141   0.5540176   0.5920105
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4171271   0.3552299   0.4790242
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4038861   0.3361347   0.4716375
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4530422   0.3816502   0.5244341
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2171812   0.1972461   0.2371164
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2586588   0.2373368   0.2799809
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2826902   0.2552248   0.3101555
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6030793   0.5696783   0.6364802
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6500437   0.6150190   0.6850685
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6926517   0.6580843   0.7272190
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4152649   0.4001511   0.4303787
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4365658   0.4206759   0.4524556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4390636   0.4228027   0.4553245
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2611591   0.2315214   0.2907968
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3091115   0.0833931   0.5348300
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1519798   0.0248125   0.2791470
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6969697   0.5387947   0.8551447
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.7916667   0.6194767   0.9638566
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.6250000   0.3721939   0.8778061
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6363636   0.5036790   0.7690482
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6825397   0.5684214   0.7966579
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6941176   0.5940245   0.7942108
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5834467   0.4796904   0.6872030
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5010722   0.3958840   0.6062603
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.7097163   0.6202029   0.7992297
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4770536   0.4082014   0.5459058
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5277277   0.4365998   0.6188556
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5415543   0.4362190   0.6468896
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6535413   0.5597699   0.7473127
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7609836   0.6752117   0.8467556
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.6525764   0.5411073   0.7640454
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7627119   0.6581252   0.8672985
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7808219   0.6840825   0.8775613
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8269231   0.7264728   0.9273734
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8644068   0.7759319   0.9528817
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8805970   0.8019601   0.9592340
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9305556   0.8711487   0.9899624
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6336693   0.5508758   0.7164627
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4299599   0.2883524   0.5715674
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5064002   0.3282112   0.6845891
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8731078   0.8581876   0.8880281
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8904359   0.8781706   0.9027011
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8894894   0.8725093   0.9064694
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7080273   0.6787545   0.7373002
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7353635   0.7092332   0.7614937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7682098   0.7490940   0.7873256
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7400000   0.6534164   0.8265836
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7236842   0.6242822   0.8230862
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8055556   0.6753507   0.9357605
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3363444   0.3072978   0.3653911
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.3811356   0.3527257   0.4095456
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3483708   0.3168002   0.3799413
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7344629   0.6835490   0.7853769
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7858801   0.7401641   0.8315961
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7779449   0.7363089   0.8195809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6574369   0.6395511   0.6753226
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.7000533   0.6810395   0.7190670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7107339   0.6919390   0.7295288
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5502183   0.4856538   0.6147829
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6250000   0.2888337   0.9611663
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5000000   0.0990983   0.9009017
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6333333   0.4225524   0.8441142
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4285714   0.2479229   0.6092200
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3314261   0.8685739
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6410639   0.5034085   0.7787193
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5149915   0.3491297   0.6808532
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6708982   0.5250133   0.8167830
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2788711   0.1757180   0.3820241
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2057655   0.1066739   0.3048572
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.2583285   0.1533390   0.3633180
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2505702   0.1942591   0.3068813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3324701   0.2636267   0.4013134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2600408   0.1697059   0.3503757
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3366337   0.2406100   0.4326573
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3050847   0.1875637   0.4226058
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2105263   0.0841686   0.3368840
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2173913   0.0880742   0.3467084
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2432432   0.0907435   0.3957430
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3750000   0.2362295   0.5137705
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6875000   0.4523318   0.9226682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5555556   0.4941981   0.6169130
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5348837   0.4257515   0.6440159
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4895210   0.4260159   0.5530262
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4303070   0.2977754   0.5628386
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3303955   0.1536115   0.5071794
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2463768   0.1460750   0.3466786
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2142857   0.1257468   0.3028247
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.4000000   0.1498474   0.6501526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0927015   0.0626021   0.1228008
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0721347   0.0461336   0.0981358
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0633116   0.0429276   0.0836956
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4874794   0.4419330   0.5330257
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5063017   0.4581625   0.5544410
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5258392   0.4778161   0.5738622


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
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8721304   0.6586117   1.1548709
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9011610   0.6177731   1.3145459
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9628919   0.8001899   1.1586759
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0477025   0.8779714   1.2502465
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.8443104   0.6576238   1.0839937
0-24 months   ki1000108-IRC              INDIA                          High                 Low               1.1481281   0.9367164   1.4072543
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.0848162   0.9233988   1.2744506
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.0884472   0.9059604   1.3076923
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.1704758   0.9977057   1.3731640
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               1.0967927   0.9232785   1.3029159
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0883099   0.8692762   1.3625342
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.1502404   0.9292501   1.4237857
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0019647   0.8872493   1.1315121
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0470132   0.9220675   1.1888897
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9382353   0.6854372   1.2842686
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9353933   0.6732620   1.2995840
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.7976080   0.6230102   1.0211366
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6877279   0.5096160   0.9280905
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0165670   0.9944923   1.0391318
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0414523   1.0153993   1.0681736
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0360994   0.9749368   1.1010990
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.1160902   1.0566685   1.1788536
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9682568   0.7955561   1.1784477
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0861011   0.8991826   1.3118755
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               1.1909815   1.0791468   1.3144059
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               1.3016325   1.1625647   1.4573358
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0778744   0.9993219   1.1626017
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1485251   1.0676029   1.2355811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0512947   1.0024112   1.1025620
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0573097   1.0074491   1.1096380
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1836137   0.5655776   2.4770099
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.5819432   0.2502602   1.3532229
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               1.1358696   0.8294560   1.5554769
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.8967391   0.5639458   1.4259192
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0725624   0.8210179   1.4011754
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0907563   0.8465080   1.4054792
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               0.8588140   0.6522486   1.1307980
0-6 months    ki1000108-IRC              INDIA                          High                 Low               1.2164201   0.9780364   1.5129069
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.1062231   0.8869072   1.3797717
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.1352065   0.8941669   1.4412229
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.1644002   0.9730780   1.3933394
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.9985235   0.8023278   1.2426955
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0237443   0.8510039   1.2315482
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0841880   0.9026943   1.3021725
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0187299   0.8893393   1.1669455
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0765251   0.9541901   1.2145444
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.6785241   0.4761089   0.9669953
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7991553   0.5490689   1.1631495
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0198464   0.9982802   1.0418785
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               1.0187623   0.9934657   1.0447030
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0386089   0.9864595   1.0935152
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0850002   1.0367327   1.1355148
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9779516   0.8164989   1.1713297
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0885886   0.8916724   1.3289915
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.1331707   1.0318913   1.2443906
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0357561   0.9309858   1.1523168
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0700066   0.9780169   1.1706485
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0592024   0.9707254   1.1557438
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0648220   1.0259040   1.1052164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0810678   1.0419404   1.1216646
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1359127   0.6550256   1.9698431
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9087302   0.4041167   2.0434457
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.6766917   0.3953941   1.1581145
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9473684   0.5422331   1.6552050
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.8033387   0.5473593   1.1790302
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0465387   0.7733708   1.4161942
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.7378519   0.3967447   1.3722311
6-24 months   ki1000108-IRC              INDIA                          High                 Low               0.9263368   0.5246981   1.6354161
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.3268538   0.9811972   1.7942783
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.0377962   0.6887236   1.5637927
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8790368   0.6293364   1.2278102
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.6749362   0.3892290   1.1703623
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8697479   0.4869471   1.5534776
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.6235294   0.7698083   3.4240313
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7781399   0.4797548   1.2621063
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6829622   0.4327450   1.0778573
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0386116   0.9118326   1.1830177
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0786901   0.9491171   1.2259522


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0450581   -0.0807144    0.1708307
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0467945   -0.1456458    0.0520568
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0173593   -0.0873006    0.0525820
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0348667   -0.0362236    0.1059571
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0380270    0.0103128    0.0657411
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0126227   -0.0594815    0.0342361
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0414519   -0.0299425    0.1128463
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1791648   -0.2390807   -0.1192489
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0402622   -0.2407242    0.1601998
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0100211   -0.0368637    0.0168215
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0108533   -0.0006716    0.0223782
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0304379    0.0086503    0.0522255
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0231912   -0.0157252    0.0621077
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0225545    0.0086950    0.0364140
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0037887   -0.0236013    0.0311787
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0075069   -0.0041000    0.0191138
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0029855   -0.0109410    0.0049699
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0153591   -0.1028535    0.1335717
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0385132   -0.0727493    0.1497757
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0540533   -0.0286994    0.1368060
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0361429   -0.0105563    0.0828421
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0594632   -0.0108177    0.1297441
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0253316   -0.0604071    0.1110703
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0295326   -0.0415117    0.1005769
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0526637   -0.1017176   -0.0036098
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0124188    0.0006932    0.0241443
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0352052    0.0100866    0.0603237
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0052830   -0.0568847    0.0674507
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0231743    0.0029736    0.0433751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0022392   -0.0402577    0.0447361
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0180332    0.0040998    0.0319666
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0012220   -0.0142115    0.0166555
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0958333   -0.2607934    0.0691267
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0800883   -0.1929399    0.0327634
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.2372580    0.1476449    0.3268711
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0348420   -0.0050688    0.0747529
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0336034   -0.0977457    0.0305390
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0590315   -0.0446381    0.1627010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1310484   -0.3618537    0.0997569
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0038827   -0.0266616    0.0344269
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0023292   -0.0798751    0.0752167
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0226920   -0.0478926    0.0025086
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0151887   -0.0199222    0.0502997


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0615079   -0.1285089    0.2195300
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0753638   -0.2477470    0.0732037
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0274715   -0.1446532    0.0777140
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0591089   -0.0700325    0.1726642
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0998514    0.0252885    0.1687105
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0242655   -0.1190559    0.0624956
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0710934   -0.0598948    0.1858934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.2872178   -0.3950658   -0.1877071
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0642750   -0.4376675    0.2121396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0192156   -0.0721835    0.0311355
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0126025   -0.0008648    0.0258885
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0559674    0.0151727    0.0950723
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0526692   -0.0395758    0.1367290
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0940806    0.0358777    0.1487698
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0062430   -0.0398854    0.0503253
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0177563   -0.0100333    0.0447813
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0115640   -0.0429374    0.0188656
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0215618   -0.1592495    0.1741714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0570670   -0.1236120    0.2086925
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0847895   -0.0550074    0.2060622
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0704270   -0.0250036    0.1569727
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0833981   -0.0212385    0.1773135
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0321449   -0.0830800    0.1351115
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0330365   -0.0500643    0.1095607
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0906423   -0.1806685   -0.0074807
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0140242    0.0006978    0.0271728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0473676    0.0130326    0.0805081
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0070886   -0.0799483    0.0871109
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0644593    0.0072623    0.1183609
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0030395   -0.0563367    0.0590782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0266973    0.0059183    0.0470420
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0022160   -0.0261696    0.0298164
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1782946   -0.5303439    0.0927673
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.1427661   -0.3675371    0.0450612
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.4596873    0.2631795    0.6037871
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.1220762   -0.0297963    0.2515507
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1108911   -0.3427621    0.0809399
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.2135550   -0.2716168    0.5136147
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.2355072   -0.7301277    0.1177078
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0078692   -0.0560423    0.0679127
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0095440   -0.3830568    0.2630967
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.3241276   -0.7422142   -0.0063711
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0302162   -0.0419628    0.0973952
