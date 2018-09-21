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

* arm
* W_mage
* meducyrs
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
* delta_meducyrs
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
![](/tmp/77339399-ee5d-4672-87a5-ab6070c99d85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/77339399-ee5d-4672-87a5-ab6070c99d85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/77339399-ee5d-4672-87a5-ab6070c99d85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/77339399-ee5d-4672-87a5-ab6070c99d85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3551742   0.3106750   0.3996734
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3809212   0.3308543   0.4309882
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4280544   0.3769610   0.4791477
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5426940   0.4664478   0.6189402
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.6006099   0.5106437   0.6905761
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6067733   0.5076829   0.7058637
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.6298143   0.5477212   0.7119075
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5979298   0.5039010   0.6919587
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6385520   0.5404353   0.7366688
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6388232   0.5883414   0.6893050
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6411137   0.5801154   0.7021119
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5967651   0.5107446   0.6827857
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5280185   0.4596378   0.5963991
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6059309   0.5421856   0.6696763
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4506527   0.3681472   0.5331582
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8488443   0.8341692   0.8635194
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8649046   0.8513218   0.8784873
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8606396   0.8411484   0.8801309
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5516659   0.5254356   0.5778963
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5493882   0.5314894   0.5672869
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.6022735   0.5682076   0.6363394
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4573214   0.3894748   0.5251681
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4022096   0.3254021   0.4790171
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4894470   0.3980626   0.5808314
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1943018   0.1417928   0.2468109
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3493880   0.2826508   0.4161251
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2701964   0.2085013   0.3318916
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6365607   0.6020171   0.6711042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6392981   0.6034022   0.6751940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7168746   0.6816334   0.7521157
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4115259   0.3971314   0.4259204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4238790   0.4079460   0.4398119
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4445653   0.4262648   0.4628659
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2690631   0.2404842   0.2976421
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2547011   0.2094721   0.2999301
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3181462   0.2639712   0.3723213
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4916656   0.4157058   0.5676254
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6053694   0.5136565   0.6970824
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.6266580   0.5246509   0.7286651
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7292547   0.6363835   0.8221259
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7861015   0.6962893   0.8759138
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.7192551   0.6186671   0.8198430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7159419   0.6500329   0.7818510
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7161288   0.6258252   0.8064325
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6762612   0.5481632   0.8043593
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6344720   0.5357997   0.7331444
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.7140501   0.6190344   0.8090657
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6487890   0.5375191   0.7600589
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8778435   0.8636561   0.8920308
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8860406   0.8728968   0.8991845
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8767505   0.8571389   0.8963622
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7226430   0.6866883   0.7585976
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7392976   0.7201399   0.7584552
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7582454   0.7138479   0.8026429
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7840909   0.6974785   0.8707033
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6811594   0.5723603   0.7899585
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7954545   0.6753723   0.9155368
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3369847   0.2535598   0.4204096
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.4902448   0.4063878   0.5741018
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3658930   0.2916599   0.4401261
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7362371   0.6861499   0.7863242
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7191644   0.6734001   0.7649287
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7281035   0.6839585   0.7722485
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6699356   0.6524309   0.6874402
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6747847   0.6552940   0.6942754
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7248942   0.7043425   0.7454460
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5578254   0.5000318   0.6156191
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6113675   0.5454665   0.6772685
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5898735   0.5272469   0.6525002
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5925926   0.3610568   0.8241284
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4000000   0.1868580   0.6131420
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3097494   0.8902506
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2629936   0.2053573   0.3206299
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2226220   0.1546144   0.2906297
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3128151   0.2397773   0.3858529
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2741935   0.1576971   0.3906900
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2647059   0.1193576   0.4100542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2962963   0.1169057   0.4756869
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5638927   0.4934380   0.6343475
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5777092   0.4876508   0.6677677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5525736   0.4149109   0.6902362
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5079441   0.4290829   0.5868052
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5813488   0.5022582   0.6604394
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3966191   0.3031928   0.4900455
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2191781   0.1256550   0.3127012
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2571429   0.1538174   0.3604683
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2272727   0.0505503   0.4039952
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4701076   0.4220586   0.5181567
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5108079   0.4619677   0.5596481
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5901427   0.5381348   0.6421505
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1625340   0.1340047   0.1910633
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1040506   0.0479676   0.1601336
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1563018   0.0837907   0.2288129


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.0724911   0.9020142   1.275187
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.2051954   1.0224833   1.420557
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1067192   0.9089133   1.347573
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.1180762   0.9068136   1.378557
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9493748   0.7753627   1.162440
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0138735   0.8306192   1.237558
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0035854   0.8872455   1.135180
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9341632   0.7928427   1.100673
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1475564   0.9710897   1.356091
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8534791   0.6820406   1.068010
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0189202   0.9964268   1.041921
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0138958   0.9861712   1.042400
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9958711   0.9462949   1.048045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0917358   1.0182507   1.170524
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8794899   0.7084457   1.091830
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0702472   0.8642169   1.325395
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               1.7981710   1.2985389   2.490044
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               1.3906015   0.9820934   1.969031
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0043003   0.9303705   1.084105
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1261685   1.0477460   1.210461
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0300178   0.9827856   1.079520
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0802852   1.0273565   1.135941
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9466221   0.7857879   1.140376
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1824224   0.9832238   1.421978
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.2312626   0.9929245   1.526811
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.2745614   1.0200409   1.592590
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0779519   0.9074194   1.280533
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.9862878   0.8159886   1.192129
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0002611   0.8555998   1.169381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9445755   0.7651574   1.166064
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1254240   0.9166009   1.381822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.0225651   0.8099192   1.291042
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0093379   0.9880705   1.031063
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9987550   0.9720119   1.026234
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0230468   0.9706659   1.078254
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0492670   0.9741130   1.130219
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8687251   0.7153878   1.054929
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0144928   0.8414152   1.223172
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.4547985   1.0876308   1.945916
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0857851   0.7977453   1.477826
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9768109   0.8915090   1.070275
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9889525   0.9045175   1.081269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0072382   0.9703095   1.045572
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0820358   1.0422679   1.123321
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0959836   0.9839031   1.220832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0574519   0.9569772   1.168476
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.6750000   0.3481814   1.308585
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.0125000   0.5433954   1.886575
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8464923   0.5834222   1.228183
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.1894398   0.8690569   1.627934
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9653979   0.4821484   1.933001
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0806100   0.5157527   2.264105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0245020   0.8397483   1.249904
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9799267   0.7415794   1.294880
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1445134   0.9312161   1.406667
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7808323   0.5890768   1.035008
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.1732143   0.6528754   2.108261
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0369318   0.4271178   2.517403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0865765   0.9464449   1.247456
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.2553352   1.0984701   1.434601
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.6401772   0.3638502   1.126362
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9616558   0.5870931   1.575188


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0238095   -0.1628024   0.1151833
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0285065   -0.1426652   0.0856522
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0270699   -0.0038139   0.0579537
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0403679   -0.0161573   0.0968930
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0060201   -0.0718474   0.0598072
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0115377   -0.0454664   0.0223910
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0056571   -0.0545128   0.0431987
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0112120    0.0002704   0.0221535
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0080359   -0.0307021   0.0146302
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0131874   -0.0580301   0.0316554
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0617278    0.0163761   0.1070795
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0272849   -0.0565025   0.0019326
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0119050    0.0016682   0.0221418
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0055316   -0.0173235   0.0062603
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0230403   -0.0328643   0.0789449
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0587888   -0.0126586   0.1302361
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0130008   -0.0581875   0.0321859
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0511387   -0.1295242   0.0272468
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0073065   -0.0034559   0.0180689
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0190134   -0.0123016   0.0503283
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0328471   -0.0999600   0.0342657
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0584308   -0.0110534   0.1279150
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0039661   -0.0385558   0.0464880
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0069031   -0.0060963   0.0199025
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0028303   -0.0149375   0.0205982
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0487329   -0.2075715   0.1101056
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0236306   -0.0180408   0.0653020
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0022292   -0.0784377   0.0828962
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0059413   -0.0548400   0.0429575
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0145404   -0.0707500   0.0416692
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0171856   -0.0549383   0.0893094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0372370   -0.0014739   0.0759479
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0092494   -0.0232847   0.0047860


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0370370   -0.2789624   0.1591263
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0451718   -0.2436713   0.1216456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0708184   -0.0131966   0.1478668
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0692343   -0.0324925   0.1609385
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0096508   -0.1209599   0.0906055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0183931   -0.0739659   0.0343041
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0108299   -0.1087662   0.0784558
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0130363    0.0002388   0.0256700
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0147820   -0.0574142   0.0261314
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0296923   -0.1360455   0.0667044
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.2410964    0.0463050   0.3961018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0447826   -0.0942892   0.0024844
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0281155    0.0037118   0.0519214
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0209903   -0.0668100   0.0228614
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0447640   -0.0701785   0.1473611
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0746009   -0.0209147   0.1611802
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0184948   -0.0849025   0.0438480
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0876664   -0.2329791   0.0405205
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0082545   -0.0039745   0.0203347
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0256364   -0.0175246   0.0669666
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0437237   -0.1373381   0.0421854
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.1477705   -0.0469947   0.3063050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0053582   -0.0537462   0.0611474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0101990   -0.0091679   0.0291942
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0050482   -0.0271341   0.0362222
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0896057   -0.4216290   0.1648731
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0824446   -0.0749787   0.2168143
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0080645   -0.3313469   0.2609469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0106483   -0.1022420   0.0733342
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0294696   -0.1499516   0.0783894
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0727081   -0.2875964   0.3321896
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0733959   -0.0054952   0.1460971
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0603411   -0.1561754   0.0275495
