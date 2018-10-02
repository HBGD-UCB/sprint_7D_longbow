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
![](/tmp/bce52b95-b03b-497c-a48f-b9f1eb652665/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bce52b95-b03b-497c-a48f-b9f1eb652665/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bce52b95-b03b-497c-a48f-b9f1eb652665/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bce52b95-b03b-497c-a48f-b9f1eb652665/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3520259   0.3087225   0.3953293
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3786811   0.3306962   0.4266660
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4305614   0.3820362   0.4790865
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5389343   0.4682403   0.6096282
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.5951567   0.5163043   0.6740092
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.5940995   0.5098632   0.6783357
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.7060313   0.6291264   0.7829362
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.7171613   0.6326398   0.8016829
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.7219313   0.6298968   0.8139659
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6378717   0.5888135   0.6869299
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6425274   0.5852163   0.6998385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5947765   0.5189163   0.6706367
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5294329   0.4608404   0.5980254
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6091368   0.5451219   0.6731516
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4491278   0.3659293   0.5323263
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8485110   0.8336589   0.8633631
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8640653   0.8503128   0.8778179
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8594003   0.8392874   0.8795131
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5485815   0.5224428   0.5747202
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5488903   0.5309569   0.5668236
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.6009614   0.5663049   0.6356179
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4581739   0.3918032   0.5245446
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4026700   0.3288150   0.4765249
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4888347   0.4021715   0.5754979
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1952403   0.1444361   0.2460445
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3515922   0.2873861   0.4157982
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2718854   0.2120096   0.3317611
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6351265   0.6001091   0.6701439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6388931   0.6025630   0.6752233
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7137605   0.6779994   0.7495217
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4115619   0.3971718   0.4259521
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4238675   0.4079427   0.4397924
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4445196   0.4262375   0.4628018
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2689678   0.2401916   0.2977439
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2536651   0.2051460   0.3021842
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3130870   0.2544479   0.3717262
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4941760   0.4184757   0.5698763
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6107552   0.5196551   0.7018552
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.6358617   0.5360928   0.7356306
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7294698   0.6363696   0.8225701
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7867238   0.6967744   0.8766731
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.7217421   0.6203052   0.8231790
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7172794   0.6517418   0.7828170
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7179085   0.6285865   0.8072304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6773882   0.5535587   0.8012177
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6250224   0.5284250   0.7216197
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.7014835   0.6068159   0.7961512
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6344600   0.5242694   0.7446505
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8777078   0.8634904   0.8919252
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8859004   0.8727354   0.8990653
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8765520   0.8568919   0.8962121
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7224459   0.6861130   0.7587789
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7391423   0.7199563   0.7583283
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7577059   0.7125570   0.8028547
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7840909   0.6974785   0.8707033
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6811594   0.5723603   0.7899585
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7954545   0.6753723   0.9155368
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3373999   0.2520680   0.4227317
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.4896580   0.4035351   0.5757809
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3651956   0.2894543   0.4409369
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7341568   0.6832176   0.7850961
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7160380   0.6697069   0.7623691
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7244724   0.6796961   0.7692487
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6681740   0.6506684   0.6856796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6754156   0.6559517   0.6948796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7289749   0.7085628   0.7493869
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5574697   0.4994689   0.6154706
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6079278   0.5392746   0.6765809
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5837369   0.5175217   0.6499520
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5925926   0.3610568   0.8241284
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4000000   0.1868580   0.6131420
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3097494   0.8902506
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2669739   0.2094144   0.3245334
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2259852   0.1584639   0.2935065
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3143414   0.2414069   0.3872760
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2741935   0.1576971   0.3906900
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2647059   0.1193576   0.4100542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2962963   0.1169057   0.4756869
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5631464   0.4941504   0.6321423
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5728897   0.4863216   0.6594579
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5461344   0.4210627   0.6712060
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5080184   0.4297479   0.5862889
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5829937   0.5047512   0.6612362
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3951212   0.3033131   0.4869293
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2191781   0.1256550   0.3127012
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2571429   0.1538174   0.3604683
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2272727   0.0505503   0.4039952
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4701408   0.4213957   0.5188860
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5115610   0.4621327   0.5609893
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5932107   0.5404142   0.6460072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1625148   0.1339936   0.1910359
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1040684   0.0480283   0.1601085
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1563727   0.0839309   0.2288144


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.0757195   0.9085530   1.273643
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.2230957   1.0432695   1.433918
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1043216   0.9253470   1.317912
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.1023598   0.9150171   1.328059
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0157642   0.8682766   1.188305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0225203   0.8681407   1.204353
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0072988   0.8960666   1.132339
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9324391   0.8039439   1.081472
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1505458   0.9736740   1.359547
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8483187   0.6766763   1.063499
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0183314   0.9954101   1.041780
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0128334   0.9843019   1.042192
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0005629   0.9507551   1.052980
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0954824   1.0208774   1.175539
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8788585   0.7168581   1.077469
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0669196   0.8742044   1.302118
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               1.8008177   1.3186096   2.459367
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               1.3925680   0.9971937   1.944703
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0059305   0.9307040   1.087238
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1238085   1.0441287   1.209569
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0298998   0.9827099   1.079356
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0800796   1.0272141   1.135666
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9431058   0.7722282   1.151795
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1640319   0.9524218   1.422658
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.2359062   0.9979360   1.530623
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.2867112   1.0335266   1.601919
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0784870   0.9076674   1.281454
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.9894064   0.8179143   1.196855
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0008770   0.8576188   1.168065
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9443854   0.7697889   1.158582
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1223335   0.9166785   1.374127
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.0150996   0.8062008   1.278127
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0093341   0.9879903   1.031139
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9986832   0.9718502   1.026257
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0231109   0.9701404   1.078974
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.0488064   0.9725134   1.131085
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8687251   0.7153878   1.054929
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0144928   0.8414152   1.223172
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.4512692   1.0749088   1.959405
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0823823   0.7875962   1.487503
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9753202   0.8885419   1.070574
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9868088   0.9006937   1.081157
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0108379   0.9737947   1.049290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0909955   1.0511191   1.132385
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0905126   0.9741126   1.220822
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0471185   0.9408554   1.165383
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.6750000   0.3481814   1.308585
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               1.0125000   0.5433954   1.886575
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8464694   0.5891638   1.216148
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.1774240   0.8663732   1.600150
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.9653979   0.4821484   1.933001
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0806100   0.5157527   2.264105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0173017   0.8385119   1.234214
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9697912   0.7483030   1.256837
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.1475839   0.9358239   1.407261
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7777695   0.5888201   1.027352
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.1732143   0.6528754   2.108261
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0369318   0.4271178   2.517403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0881018   0.9452077   1.252598
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.2617724   1.1014043   1.445491
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.6403624   0.3641627   1.126046
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9622058   0.5878555   1.574945


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0238095   -0.1628024    0.1151833
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0285065   -0.1426652    0.0856522
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0302182   -0.0001495    0.0605860
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0441276   -0.0085869    0.0968421
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0822371   -0.1434033   -0.0210709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0105862   -0.0434998    0.0223274
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0070715   -0.0560688    0.0419257
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0115453    0.0004285    0.0226621
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0049515   -0.0274359    0.0175329
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0140398   -0.0565280    0.0284484
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0607894    0.0168014    0.1047774
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0258508   -0.0554340    0.0037325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0118689    0.0016420    0.0220958
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0054363   -0.0174739    0.0066014
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0205299   -0.0356928    0.0767526
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0585736   -0.0130854    0.1302327
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0143382   -0.0592900    0.0306135
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0416890   -0.1173258    0.0339478
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0074422   -0.0033579    0.0182423
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0192104   -0.0124913    0.0509121
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0328471   -0.0999600    0.0342657
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0580156   -0.0135341    0.1295653
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0060464   -0.0372026    0.0492953
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0086646   -0.0042964    0.0216256
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0031860   -0.0148197    0.0211918
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0487329   -0.2075715    0.1101056
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0196503   -0.0214149    0.0607155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0022292   -0.0784377    0.0828962
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0051949   -0.0530116    0.0426219
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0146147   -0.0704114    0.0411821
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0171856   -0.0549383    0.0893094
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0372038   -0.0022822    0.0766898
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0092301   -0.0232515    0.0047913


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0370370   -0.2789624    0.1591263
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0451718   -0.2436713    0.1216456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0790548   -0.0032310    0.1545915
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0756826   -0.0182574    0.1609561
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1318337   -0.2363602   -0.0361443
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0168762   -0.0707755    0.0343100
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0135376   -0.1117421    0.0759921
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0134239    0.0004191    0.0262595
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0091082   -0.0513686    0.0314535
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0316116   -0.1321531    0.0600013
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.2374310    0.0502870    0.3876977
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0424287   -0.0925231    0.0053689
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0280304    0.0036504    0.0518138
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0206285   -0.0674010    0.0240945
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0398867   -0.0756554    0.1430178
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0743279   -0.0214892    0.1611573
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0203975   -0.0864622    0.0416500
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0714669   -0.2111350    0.0520946
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0084078   -0.0038644    0.0205300
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0259021   -0.0178056    0.0677328
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0437237   -0.1373381    0.0421854
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.1467207   -0.0545576    0.3095819
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0081685   -0.0519691    0.0648682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0128016   -0.0065021    0.0317351
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0056827   -0.0269412    0.0372701
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0896057   -0.4216290    0.1648731
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0685578   -0.0862811    0.2013259
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0080645   -0.3313469    0.2609469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0093106   -0.0988102    0.0728990
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0296201   -0.1491954    0.0775131
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0727081   -0.2875964    0.3321896
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0733305   -0.0072462    0.1474613
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0602155   -0.1559506    0.0275908
