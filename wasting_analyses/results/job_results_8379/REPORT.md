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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        feducyrs    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        9      70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       18      70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       10      70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       15      70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        6      70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       12      70
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       16     103
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       31     103
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       15     103
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       13     103
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        7     103
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       21     103
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        2      34
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        9      34
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        4      34
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        8      34
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        2      34
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        9      34
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        1      25
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        3      25
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        1      25
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       10      25
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0        2      25
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        8      25
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        3      28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        8      28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        1      28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7      28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        2      28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7      28
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        4      33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        9      33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0      33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1      33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        2      33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       17      33
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      242     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      131     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      146     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       92     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      113     811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       87     811
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       80     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        2     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       89     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        5     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       52     234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        6     234
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       62     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       72     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       36     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       58     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       30     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       49     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       46     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       72     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       36     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       51     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       35     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       71     311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      140     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      241     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       79     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      138     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       46     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       67     711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      234    1118
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      250    1118
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      164    1118
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      230    1118
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0      136    1118
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1      104    1118
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0      247    4266
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1454    4266
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0      255    4266
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1658    4266
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0       95    4266
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      557    4266
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      318    3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      312    3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     1167    3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1416    3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       84    3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      141    3438
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0       88     358
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       71     358
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       74     358
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       50     358
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       37     358
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       38     358
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      152     539
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1       34     539
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      106     539
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1       54     539
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      143     539
0-24 months   ki1135781-COHORTS          INDIA                          High                  1       50     539
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      214    1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      281    1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      227    1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      342    1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      174    1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      336    1574
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       25      77
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        5      77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       26      77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1        4      77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       13      77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        4      77
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     3690   14562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2482   14562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     2897   14562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2088   14562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     1809   14562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1596   14562
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1216    2254
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      445    2254
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      250    2254
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       77    2254
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      194    2254
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       72    2254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0        2      34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       10      34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0        3      34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       10      34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0        2      34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1        7      34
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0        5      46
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       15      46
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0        6      46
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1        7      46
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0        1      46
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       12      46
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0        1      16
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1        5      16
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0        1      16
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1        1      16
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0        2      16
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1        6      16
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0        0       7
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        2       7
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0        0       7
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        3       7
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0        0       7
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2       7
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        1       8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        2       8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0       8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        1       8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        1       8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        3       8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        0       9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3       9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0       9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1       9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        1       9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4       9
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0       83     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1       72     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0       47     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       59     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0       35     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       44     340
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       26      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       35      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        0      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       17      78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        0      78
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0       17     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       55     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0       11     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       49     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0       11     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       41     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0        7     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       63     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0        3     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       45     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       11     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       69     198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       53     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      132     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       29     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       71     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       19     340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       36     340
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0       62     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       80     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       50     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       90     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       38     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       40     360
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0      190    4101
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1438    4101
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0      203    4101
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1640    4101
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0       78    4101
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      552    4101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      110    2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      295    2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      483    2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1367    2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       34    2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      138    2427
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0       19     201
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       69     201
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0       22     201
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       47     201
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0        9     201
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       35     201
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0       67     349
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1       34     349
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0       56     349
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1       54     349
0-6 months    ki1135781-COHORTS          INDIA                          High                  0       88     349
0-6 months    ki1135781-COHORTS          INDIA                          High                  1       50     349
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0       47     689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      135     689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0       63     689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      173     689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0       69     689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      202     689
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0        3       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0        1       4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1328    9110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2482    9110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      996    9110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2088    9110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0      620    9110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1596    9110
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      204     610
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      248     610
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       34     610
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       52     610
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       30     610
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       42     610
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        7      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1        8      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        7      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        5      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        4      36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        5      36
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       11      57
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       16      57
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0        9      57
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1        6      57
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        6      57
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1        9      57
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        1      18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        4      18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        3      18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        7      18
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        0      18
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        3      18
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        1      18
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        1      18
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        1      18
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7      18
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0        2      18
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        6      18
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        2      20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        6      20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        1      20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        6      20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        1      20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        4      20
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        4      24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        6      24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0      24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        0      24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        1      24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       13      24
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      159     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       59     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0       99     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       33     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       78     471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       43     471
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       54     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        2     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       54     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        5     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       35     156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        6     156
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       45     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       17     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       25     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1        9     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       19     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1        8     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       39     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1        9     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       33     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1        6     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       24     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1        2     113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       87     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      109     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       50     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       67     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       27     371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       31     371
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      172     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      170     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      114     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      140     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       98     758
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       64     758
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0       57     165
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       16     165
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0       52     165
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       18     165
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0       17     165
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        5     165
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      208    1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1       17    1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      684    1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1       49    1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       50    1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1        3    1011
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0       69     157
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1        2     157
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       52     157
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1        3     157
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       28     157
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1        3     157
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0       85     190
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1        0     190
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0       50     190
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1        0     190
6-24 months   ki1135781-COHORTS          INDIA                          High                  0       55     190
6-24 months   ki1135781-COHORTS          INDIA                          High                  1        0     190
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      167     885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      146     885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      164     885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      169     885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      105     885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      134     885
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       25      73
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        5      73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       23      73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1        4      73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12      73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        4      73
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     2362    5452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1        0    5452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     1901    5452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1        0    5452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     1189    5452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1        0    5452
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1012    1644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      197    1644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      216    1644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       25    1644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      164    1644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       30    1644


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cdf1fbe4-b710-4bf6-a206-fce956cb8197/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cdf1fbe4-b710-4bf6-a206-fce956cb8197/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cdf1fbe4-b710-4bf6-a206-fce956cb8197/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cdf1fbe4-b710-4bf6-a206-fce956cb8197/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6666667   0.5025048   0.8308285
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6000000   0.3938977   0.8061023
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.6666667   0.4269601   0.9063732
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6595745   0.5113855   0.8077634
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4642857   0.2805212   0.6480502
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.7500000   0.5458782   0.9541218
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3512064   0.2998071   0.4026058
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3865546   0.3218333   0.4512760
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4350000   0.3640111   0.5059889
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5373134   0.4540805   0.6205464
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.6170213   0.5132615   0.7207811
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6202532   0.5061198   0.7343865
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.6101695   0.5275863   0.6927527
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5862069   0.4875373   0.6848765
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6698113   0.5690362   0.7705864
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6325459   0.5806938   0.6843981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6359447   0.5705844   0.7013050
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5929204   0.4934969   0.6923438
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5165289   0.4432612   0.5897967
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5837563   0.5156409   0.6518717
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4333333   0.3376844   0.5289822
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8547913   0.8382654   0.8713172
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8667015   0.8514965   0.8819065
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8542945   0.8275205   0.8810685
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4952381   0.4564417   0.5340345
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5481998   0.5287872   0.5676123
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.6266667   0.5627283   0.6906051
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4465409   0.3687163   0.5243655
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4032258   0.3103728   0.4960788
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.5066667   0.3899457   0.6233876
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1827957   0.1272808   0.2383106
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3375000   0.2656934   0.4093066
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2590674   0.1941456   0.3239891
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.5676768   0.5238158   0.6115377
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6010545   0.5582859   0.6438231
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6588235   0.6141932   0.7034539
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4021387   0.3848618   0.4194156
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4188566   0.3995959   0.4381173
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4687225   0.4448699   0.4925750
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2679109   0.2374567   0.2983651
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2354740   0.1665029   0.3044451
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2706767   0.1941767   0.3471767
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4645161   0.3860312   0.5430011
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5566038   0.4593861   0.6538214
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5569620   0.4474760   0.6664480
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7638889   0.6661088   0.8616689
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8166667   0.7237819   0.9095515
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.7884615   0.6753066   0.9016165
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7135135   0.6475222   0.7795048
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7100000   0.6196220   0.8003780
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6545455   0.5266604   0.7824305
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5633803   0.4470345   0.6797260
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6428571   0.5308866   0.7548277
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5128205   0.3537393   0.6719017
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8832924   0.8676013   0.8989835
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8898535   0.8754414   0.9042656
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8761905   0.8502103   0.9021706
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7283951   0.6848884   0.7719017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7389189   0.7189155   0.7589223
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.8023256   0.7438613   0.8607899
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7840909   0.6974785   0.8707033
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6811594   0.5723603   0.7899585
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7954545   0.6753723   0.9155368
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3366337   0.2443413   0.4289261
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.4909091   0.3973528   0.5844654
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3623188   0.2820071   0.4426306
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7417582   0.6767793   0.8067371
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7330508   0.6777806   0.7883211
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7453875   0.6932121   0.7975628
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6514436   0.6300337   0.6728534
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6770428   0.6537092   0.7003764
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7202166   0.6938032   0.7466301
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5486726   0.4836881   0.6136570
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6046512   0.4582752   0.7510271
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5833333   0.4220228   0.7446439
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5925926   0.3610568   0.8241284
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4000000   0.1868580   0.6131420
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3097494   0.8902506
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2706422   0.2092416   0.3320428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2500000   0.1732494   0.3267506
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3553719   0.2706658   0.4400780
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2741935   0.1576971   0.3906900
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2647059   0.1193576   0.4100542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2962963   0.1169057   0.4756869
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5561224   0.4851419   0.6271030
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5726496   0.4806281   0.6646711
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5344828   0.3927498   0.6762157
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4970760   0.4113932   0.5827589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5511811   0.4622939   0.6400683
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3950617   0.2808311   0.5092924
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2191781   0.1256550   0.3127012
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2571429   0.1538174   0.3604683
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2272727   0.0505503   0.4039952
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4664537   0.4077002   0.5252071
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5075075   0.4504283   0.5645867
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5606695   0.4948404   0.6264986
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1629446   0.1342233   0.1916658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1037344   0.0467195   0.1607494
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1546392   0.0803608   0.2289175


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6428571   0.5282860   0.7574282
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6310680   0.5256054   0.7365305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822441   0.3470990   0.4173892
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6272855   0.5895954   0.6649756
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5223614   0.4773383   0.5673845
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8600563   0.8497279   0.8703846
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5436300   0.5268423   0.5604178
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4441341   0.3908676   0.4974005
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2560297   0.2186976   0.2933617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6092757   0.5839352   0.6346162
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4234308   0.4120875   0.4347742
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2635315   0.2373454   0.2897176
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8851500   0.8753163   0.8949836
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7416564   0.7242528   0.7590599
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7512438   0.6914852   0.8110023
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3954155   0.3440450   0.4467860
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7402032   0.7074271   0.7729793
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6768386   0.6632567   0.6904206
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5606557   0.5048650   0.6164465
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5438596   0.3951895   0.6925298
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934037   0.4386266   0.5481808
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2363636   0.1715730   0.3011543
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5073446   0.4725123   0.5421770
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1532847   0.1289083   0.1776610


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.9000000   0.5886339   1.376067
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               1.0000000   0.6465372   1.546701
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7039171   0.4465685   1.109571
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.1370968   0.7989755   1.618309
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.1006479   0.8811603   1.374807
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.2385878   0.9947839   1.542144
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1483452   0.9135655   1.443461
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.1543601   0.9075028   1.468367
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9607280   0.7737644   1.192867
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0977463   0.8964385   1.344261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0053732   0.8815188   1.146629
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9373554   0.7777576   1.129703
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1301523   0.9404677   1.358095
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8389333   0.6453246   1.090628
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0139335   0.9878053   1.040753
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.9994188   0.9632851   1.036908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.1069418   1.0157449   1.206327
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.2653846   1.1126384   1.439100
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9029986   0.6764178   1.205478
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1346479   0.8499473   1.514713
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               1.8463235   1.2742903   2.675144
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               1.4172508   0.9559765   2.101098
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0587970   0.9532085   1.176082
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1605610   1.0472050   1.286187
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0415724   0.9780446   1.109227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.1655742   1.0904772   1.245843
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.8789266   0.6419470   1.203389
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0103236   0.7450012   1.370137
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.1982442   0.9397294   1.527875
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.1990155   0.9252248   1.553826
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0690909   0.9008357   1.268772
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0321678   0.8515961   1.251028
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9950758   0.8501997   1.164639
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9173554   0.7390226   1.138721
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1410714   0.8709354   1.494995
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9102564   0.6270737   1.321323
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0074280   0.9834990   1.031939
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9919597   0.9582580   1.026847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0144480   0.9500570   1.083203
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.1014978   1.0024538   1.210328
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8687251   0.7153878   1.054929
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0144928   0.8414152   1.223172
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.4582888   1.0443241   2.036347
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0763001   0.7565167   1.531257
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9882611   0.8803913   1.109348
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0048927   0.8982995   1.124134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0392962   0.9909624   1.089987
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.1055702   1.0524446   1.161378
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1020255   0.8416814   1.442898
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0631720   0.7869646   1.436322
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.6750000   0.3481814   1.308585
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.0125000   0.5433954   1.886575
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9237288   0.6306168   1.353080
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.3130691   0.9448782   1.824733
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9653979   0.4821484   1.933001
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0806100   0.5157527   2.264105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0297185   0.8386709   1.264286
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9610883   0.7160628   1.289958
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1088467   0.8755462   1.404313
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7947712   0.5675648   1.112933
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.1732143   0.6528754   2.108261
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0369318   0.4271178   2.517403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0880127   0.9189658   1.288156
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.2019831   1.0118613   1.427828
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.6366241   0.3574508   1.133835
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9490293   0.5689448   1.583030


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0238095   -0.1628024   0.1151833
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0285065   -0.1426652   0.0856522
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0310377   -0.0069366   0.0690120
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0457485   -0.0185030   0.1100000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0136247   -0.0542798   0.0815292
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0052604   -0.0403043   0.0297835
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0058324   -0.0465931   0.0582580
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0052650   -0.0074644   0.0179943
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0483919    0.0132180   0.0835658
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0024068   -0.0617159   0.0569023
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0732340    0.0248097   0.1216583
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0415990    0.0046899   0.0785081
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0212922    0.0081000   0.0344843
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0043794   -0.0200827   0.0113239
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0501898   -0.0081612   0.1085407
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0241546   -0.0500067   0.0983159
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0105723   -0.0558035   0.0346588
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0199531   -0.0700659   0.1099720
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0018576   -0.0102845   0.0139996
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0132613   -0.0262860   0.0528086
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0328471   -0.0999600   0.0342657
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0587818   -0.0201276   0.1376912
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0015550   -0.0569258   0.0538157
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0253951    0.0092879   0.0415023
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0119832   -0.0208386   0.0448049
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0487329   -0.2075715   0.1101056
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0159820   -0.0291999   0.0611639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0022292   -0.0784377   0.0828962
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0018290   -0.0477205   0.0513786
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0036723   -0.0647463   0.0574017
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0171856   -0.0549383   0.0893094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0408910   -0.0063138   0.0880957
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0096599   -0.0240342   0.0047143


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0370370   -0.2789624   0.1591263
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0451718   -0.2436713   0.1216456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0811987   -0.0239191   0.1755247
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0784624   -0.0383902   0.1821654
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0218417   -0.0931192   0.1247124
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0083860   -0.0658228   0.0459556
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0111655   -0.0946059   0.1067162
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0061216   -0.0087911   0.0208140
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0890163    0.0219333   0.1514982
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0054191   -0.1482689   0.1196596
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.2860371    0.0733854   0.4498867
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0682761    0.0057444   0.1268750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0502848    0.0186024   0.0809445
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0166181   -0.0780218   0.0412880
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0975115   -0.0235806   0.2042781
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0306513   -0.0683926   0.1205136
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0150401   -0.0815085   0.0473432
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0342052   -0.1332635   0.1769262
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0020986   -0.0117139   0.0157225
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0178807   -0.0369265   0.0697910
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0437237   -0.1373381   0.0421854
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.1486583   -0.0763657   0.3266390
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0021008   -0.0797662   0.0699782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0375201    0.0133881   0.0610619
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0213735   -0.0390160   0.0782531
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0896057   -0.4216290   0.1648731
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0557594   -0.1159697   0.2010623
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0080645   -0.3313469   0.2609469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0032781   -0.0895948   0.0882349
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0074428   -0.1390671   0.1089716
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0727081   -0.2875964   0.3321896
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0805980   -0.0175169   0.1692521
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0630194   -0.1612633   0.0269129
