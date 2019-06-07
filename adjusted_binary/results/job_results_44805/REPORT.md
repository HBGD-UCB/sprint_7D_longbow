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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ---------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       71    202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        4    202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       62    202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        4    202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       59    202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2    202
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       74    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       59    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       81    216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1    216
0-24 months   ki0047075b-MAL-ED          INDIA                          High                0       56    210
0-24 months   ki0047075b-MAL-ED          INDIA                          High                1        4    210
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       63    210
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1       10    210
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       72    210
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        5    210
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       53    223
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        0    223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       93    223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        1    223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       74    223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        2    223
0-24 months   ki0047075b-MAL-ED          PERU                           High                0       85    283
0-24 months   ki0047075b-MAL-ED          PERU                           High                1        0    283
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       98    283
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0    283
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       99    283
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        1    283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      132    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9    208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0    208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63    208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0    208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136    208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0    208
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                0      150    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                1        8    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       98    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1        8    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0      102    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1        7    373
0-24 months   ki1000108-IRC              INDIA                          High                0      113    410
0-24 months   ki1000108-IRC              INDIA                          High                1       11    410
0-24 months   ki1000108-IRC              INDIA                          Low                 0      131    410
0-24 months   ki1000108-IRC              INDIA                          Low                 1       16    410
0-24 months   ki1000108-IRC              INDIA                          Medium              0      118    410
0-24 months   ki1000108-IRC              INDIA                          Medium              1       21    410
0-24 months   ki1000109-EE               PAKISTAN                       High                0       15    374
0-24 months   ki1000109-EE               PAKISTAN                       High                1        0    374
0-24 months   ki1000109-EE               PAKISTAN                       Low                 0      300    374
0-24 months   ki1000109-EE               PAKISTAN                       Low                 1       26    374
0-24 months   ki1000109-EE               PAKISTAN                       Medium              0       31    374
0-24 months   ki1000109-EE               PAKISTAN                       Medium              1        2    374
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0       95    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1        3    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      164    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       19    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      137    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       10    428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0        7     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0       58     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       16     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       11     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1        2     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                0      144    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                1       11    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 0      174    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 1       19    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              0      169    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              1       17    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      218    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        2    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      187    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        9    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      220    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        4    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      246    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        0    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      220    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      238    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1       12    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      535   2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       18   2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       75   2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1   2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1490   2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       39   2158
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                0      105    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                1        1    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 0       66    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 1        1    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              0       76    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              1        2    251
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0       64    589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1        8    589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      354    589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       61    589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0       86    589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       16    589
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     1239   7972
0-24 months   ki1119695-PROBIT           BELARUS                        High                1       10   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     2621   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       40   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     4017   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       45   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     4915   9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       78   9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1915   9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       48   9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     2322   9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       41   9319
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      130    509
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        5    509
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      192    509
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       15    509
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      161    509
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1        6    509
0-24 months   ki1135781-COHORTS          INDIA                          High                0      579   4519
0-24 months   ki1135781-COHORTS          INDIA                          High                1       31   4519
0-24 months   ki1135781-COHORTS          INDIA                          Low                 0     1254   4519
0-24 months   ki1135781-COHORTS          INDIA                          Low                 1      218   4519
0-24 months   ki1135781-COHORTS          INDIA                          Medium              0     2248   4519
0-24 months   ki1135781-COHORTS          INDIA                          Medium              1      189   4519
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0     1013   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       42   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      787   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       61   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      867   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       41   2811
0-24 months   ki1148112-LCNI-5           MALAWI                         High                0      262    713
0-24 months   ki1148112-LCNI-5           MALAWI                         High                1        1    713
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      225    713
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        2    713
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      220    713
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3    713
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     2636   7752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      152   7752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     2396   7752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      183   7752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     2270   7752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      115   7752
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0       18    597
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1        1    597
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0      509    597
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1       50    597
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0       17    597
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1        2    597
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                0       75    202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                1        0    202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 0       61    202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 1        5    202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              0       61    202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              1        0    202
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                0       74    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                1        0    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 0       59    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 1        1    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              0       82    216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              1        0    216
0-6 months    ki0047075b-MAL-ED          INDIA                          High                0       54    209
0-6 months    ki0047075b-MAL-ED          INDIA                          High                1        5    209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 0       67    209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 1        6    209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              0       72    209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              1        5    209
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       52    222
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        0    222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 0       93    222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 1        1    222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              0       72    222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              1        4    222
0-6 months    ki0047075b-MAL-ED          PERU                           High                0       85    283
0-6 months    ki0047075b-MAL-ED          PERU                           High                1        0    283
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 0       98    283
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 1        0    283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              0      100    283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              1        0    283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      130    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9    208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0    208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63    208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0    208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136    208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0    208
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                0      133    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                1       23    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       84    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1       13    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0       91    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1       14    358
0-6 months    ki1000108-IRC              INDIA                          High                0      104    402
0-6 months    ki1000108-IRC              INDIA                          High                1       18    402
0-6 months    ki1000108-IRC              INDIA                          Low                 0      119    402
0-6 months    ki1000108-IRC              INDIA                          Low                 1       24    402
0-6 months    ki1000108-IRC              INDIA                          Medium              0      115    402
0-6 months    ki1000108-IRC              INDIA                          Medium              1       22    402
0-6 months    ki1000109-EE               PAKISTAN                       High                0       15    363
0-6 months    ki1000109-EE               PAKISTAN                       High                1        0    363
0-6 months    ki1000109-EE               PAKISTAN                       Low                 0      290    363
0-6 months    ki1000109-EE               PAKISTAN                       Low                 1       25    363
0-6 months    ki1000109-EE               PAKISTAN                       Medium              0       31    363
0-6 months    ki1000109-EE               PAKISTAN                       Medium              1        2    363
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                0       36    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                1        5    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                 0       67    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                 1        2    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium              0       55    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium              1        4    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      216    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        4    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      190    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        5    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      217    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        5    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                0       57    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                1        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      105    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1        2    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0       83    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        3    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      506   2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       17   2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       72   2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1   2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1424   2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       34   2054
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0       58    539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1        7    539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      334    539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       46    539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0       82    539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       12    539
0-6 months    ki1119695-PROBIT           BELARUS                        High                0      936   6657
0-6 months    ki1119695-PROBIT           BELARUS                        High                1       98   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 0     1963   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 1      216   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              0     3131   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              1      313   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                0      333    608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9    608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0      112    608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1        1    608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0      149    608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1        4    608
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                0      301    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                1       15    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 0      243    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 1       19    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              0      257    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              1       18    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                0       11     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 0        6     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              0        6     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       71    202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        4    202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       62    202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        4    202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       59    202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2    202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       74    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       59    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       81    216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1    216
6-24 months   ki0047075b-MAL-ED          INDIA                          High                0       56    210
6-24 months   ki0047075b-MAL-ED          INDIA                          High                1        4    210
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       63    210
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1       10    210
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       72    210
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        5    210
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       53    223
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        0    223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       93    223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        1    223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       74    223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        2    223
6-24 months   ki0047075b-MAL-ED          PERU                           High                0       85    283
6-24 months   ki0047075b-MAL-ED          PERU                           High                1        0    283
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       98    283
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0    283
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       99    283
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        1    283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      132    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9    208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0    208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63    208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0    208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136    208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0    208
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                0      150    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                1        8    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       98    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1        8    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0      102    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1        7    373
6-24 months   ki1000108-IRC              INDIA                          High                0      113    410
6-24 months   ki1000108-IRC              INDIA                          High                1       11    410
6-24 months   ki1000108-IRC              INDIA                          Low                 0      131    410
6-24 months   ki1000108-IRC              INDIA                          Low                 1       16    410
6-24 months   ki1000108-IRC              INDIA                          Medium              0      118    410
6-24 months   ki1000108-IRC              INDIA                          Medium              1       21    410
6-24 months   ki1000109-EE               PAKISTAN                       High                0       15    374
6-24 months   ki1000109-EE               PAKISTAN                       High                1        0    374
6-24 months   ki1000109-EE               PAKISTAN                       Low                 0      300    374
6-24 months   ki1000109-EE               PAKISTAN                       Low                 1       26    374
6-24 months   ki1000109-EE               PAKISTAN                       Medium              0       31    374
6-24 months   ki1000109-EE               PAKISTAN                       Medium              1        2    374
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0       95    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1        3    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      164    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       19    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      137    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       10    428
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0        7     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0       58     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       16     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       11     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1        2     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                0      144    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                1       11    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 0      174    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 1       19    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              0      169    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              1       17    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      218    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        2    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      187    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        9    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      220    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        4    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      246    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        0    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      220    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      238    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1       12    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      535   2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       18   2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       75   2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1   2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1490   2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       39   2158
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                0      105    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                1        1    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 0       66    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 1        1    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              0       76    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              1        2    251
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0       64    589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1        8    589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      354    589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       61    589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0       86    589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       16    589
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     1239   7972
6-24 months   ki1119695-PROBIT           BELARUS                        High                1       10   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     2621   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       40   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     4017   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       45   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     4915   9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       78   9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1915   9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       48   9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     2322   9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       41   9319
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      130    509
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        5    509
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      192    509
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       15    509
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      161    509
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1        6    509
6-24 months   ki1135781-COHORTS          INDIA                          High                0      579   4519
6-24 months   ki1135781-COHORTS          INDIA                          High                1       31   4519
6-24 months   ki1135781-COHORTS          INDIA                          Low                 0     1254   4519
6-24 months   ki1135781-COHORTS          INDIA                          Low                 1      218   4519
6-24 months   ki1135781-COHORTS          INDIA                          Medium              0     2248   4519
6-24 months   ki1135781-COHORTS          INDIA                          Medium              1      189   4519
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0     1013   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       42   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      787   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       61   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      867   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       41   2811
6-24 months   ki1148112-LCNI-5           MALAWI                         High                0      262    713
6-24 months   ki1148112-LCNI-5           MALAWI                         High                1        1    713
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      225    713
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        2    713
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      220    713
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3    713
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     2636   7752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      152   7752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     2396   7752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      183   7752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     2270   7752
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      115   7752
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0       18    597
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1        1    597
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0      509    597
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1       50    597
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0       17    597
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1        2    597


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/1c805b1c-1e34-4e48-83fd-5aa362276d3d/2f4a5622-ca17-466b-9c14-94d2a0adf741/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1c805b1c-1e34-4e48-83fd-5aa362276d3d/2f4a5622-ca17-466b-9c14-94d2a0adf741/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1c805b1c-1e34-4e48-83fd-5aa362276d3d/2f4a5622-ca17-466b-9c14-94d2a0adf741/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1c805b1c-1e34-4e48-83fd-5aa362276d3d/2f4a5622-ca17-466b-9c14-94d2a0adf741/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
0-24 months   ki1000108-IRC              INDIA         High                 NA                0.0887097   0.0386046   0.1388147
0-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1088435   0.0584357   0.1592514
0-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1510791   0.0914708   0.2106874
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0709677   0.0305069   0.1114286
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0984456   0.0563758   0.1405154
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0913978   0.0499451   0.1328506
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1111111   0.0384582   0.1837641
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1469880   0.1128913   0.1810846
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1568627   0.0862268   0.2274987
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0080064   0.0026954   0.0133174
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0150319   0.0054398   0.0246241
0-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0110783   0.0035015   0.0186551
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0156219   0.0121820   0.0190617
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0244524   0.0176196   0.0312851
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0173508   0.0120858   0.0226158
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0370370   0.0051488   0.0689253
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0724638   0.0371116   0.1078159
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0359281   0.0076736   0.0641827
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0508197   0.0333887   0.0682506
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1480978   0.1299505   0.1662451
0-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0775544   0.0669339   0.0881748
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0398104   0.0280106   0.0516103
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0719340   0.0545406   0.0893273
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0451542   0.0316460   0.0586624
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0545194   0.0457316   0.0633071
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0709577   0.0604277   0.0814877
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0482180   0.0391894   0.0572467
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135108   0.1559808
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0821918   0.0190352   0.1453483
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097648   0.1201053
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1474359   0.0917227   0.2031491
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1340206   0.0661301   0.2019112
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1333333   0.0682220   0.1984446
0-6 months    ki1000108-IRC              INDIA         High                 NA                0.1475410   0.0845321   0.2105499
0-6 months    ki1000108-IRC              INDIA         Low                  NA                0.1678322   0.1065034   0.2291609
0-6 months    ki1000108-IRC              INDIA         Medium               NA                0.1605839   0.0990282   0.2221397
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1076923   0.0322623   0.1831223
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1210526   0.0882259   0.1538794
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1276596   0.0601357   0.1951834
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0947776   0.0369470   0.1526082
0-6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0991280   0.0447796   0.1534765
0-6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0908827   0.0455121   0.1362533
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0474684   0.0240098   0.0709269
0-6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0725191   0.0410973   0.1039409
0-6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0654545   0.0362058   0.0947032
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
6-24 months   ki1000108-IRC              INDIA         High                 NA                0.0887097   0.0386046   0.1388147
6-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1088435   0.0584357   0.1592514
6-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1510791   0.0914708   0.2106874
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0709677   0.0305069   0.1114286
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0984456   0.0563758   0.1405154
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0913978   0.0499451   0.1328506
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1111111   0.0384582   0.1837641
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1469880   0.1128913   0.1810846
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1568627   0.0862268   0.2274987
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0080064   0.0026954   0.0133174
6-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0150319   0.0054398   0.0246241
6-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0110783   0.0035015   0.0186551
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0156219   0.0121820   0.0190617
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0244524   0.0176196   0.0312851
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0173508   0.0120858   0.0226158
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0370370   0.0051488   0.0689253
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0724638   0.0371116   0.1078159
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0359281   0.0076736   0.0641827
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0508197   0.0333887   0.0682506
6-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1480978   0.1299505   0.1662451
6-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0775544   0.0669339   0.0881748
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0398104   0.0280106   0.0516103
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0719340   0.0545406   0.0893273
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0451542   0.0316460   0.0586624
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0545194   0.0457316   0.0633071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0709577   0.0604277   0.0814877
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0482180   0.0391894   0.0572467


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1443124   0.1159091   0.1727157
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0179204   0.0152268   0.0206140
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0510806   0.0319354   0.0702257
0-24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0580495   0.0522322   0.0638669
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.0765550   0.0404216   0.1126884
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA         NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1205937   0.0930759   0.1481115
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0941866   0.0454872   0.1428859
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1443124   0.1159091   0.1727157
6-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0179204   0.0152268   0.0206140
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0510806   0.0319354   0.0702257
6-24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0580495   0.0522322   0.0638669


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
0-24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA         Low                  High              1.2269635   0.5910402   2.547102
0-24 months   ki1000108-IRC              INDIA         Medium               High              1.7030739   0.8550937   3.391980
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.3871879   0.6802941   2.828616
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.2878788   0.6215563   2.668514
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              1.3228916   0.6610114   2.647522
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.4117647   0.6382074   3.122934
0-24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS       Low                  High              1.8774897   1.1310584   3.116521
0-24 months   ki1119695-PROBIT           BELARUS       Medium               High              1.3836780   0.7237468   2.645352
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.5652651   1.0966855   2.234054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.1106753   0.7634177   1.615891
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.9565217   0.7272917   5.263331
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.9700599   0.3022563   3.113305
0-24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA         Low                  High              2.9141830   2.0245797   4.194679
0-24 months   ki1135781-COHORTS          INDIA         Medium               High              1.5260699   1.0548225   2.207849
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.8069126   1.2325721   2.648878
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.1342301   0.7444023   1.728203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.3015143   1.0487265   1.615235
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.8844202   0.6980611   1.120531
0-6 months    ki0047075b-MAL-ED          INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  High              0.9698630   0.3105336   3.029090
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               High              0.7662338   0.2319037   2.531715
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              0.9090094   0.4831709   1.710157
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              0.9043478   0.4877230   1.676864
0-6 months    ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA         Low                  High              1.1375291   0.6484305   1.995545
0-6 months    ki1000108-IRC              INDIA         Medium               High              1.0884023   0.6131463   1.932034
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  High              1.1240601   0.5303929   2.382217
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               High              1.1854103   0.4928181   2.851352
0-6 months    ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS       Low                  High              1.0459020   0.7922714   1.380728
0-6 months    ki1119695-PROBIT           BELARUS       Medium               High              0.9589052   0.7096073   1.295786
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High              1.5277353   0.7917928   2.947710
0-6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High              1.3789091   0.7082413   2.684665
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
6-24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA         Low                  High              1.2269635   0.5910402   2.547102
6-24 months   ki1000108-IRC              INDIA         Medium               High              1.7030739   0.8550937   3.391980
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.3871879   0.6802941   2.828616
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.2878788   0.6215563   2.668514
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              1.3228916   0.6610114   2.647522
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.4117647   0.6382074   3.122934
6-24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS       Low                  High              1.8774897   1.1310584   3.116521
6-24 months   ki1119695-PROBIT           BELARUS       Medium               High              1.3836780   0.7237468   2.645352
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.5652651   1.0966855   2.234054
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.1106753   0.7634177   1.615891
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.9565217   0.7272917   5.263331
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.9700599   0.3022563   3.113305
6-24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA         Low                  High              2.9141830   2.0245797   4.194679
6-24 months   ki1135781-COHORTS          INDIA         Medium               High              1.5260699   1.0548225   2.207849
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.8069126   1.2325721   2.648878
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.1342301   0.7444023   1.728203
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.3015143   1.0487265   1.615235
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.8844202   0.6980611   1.120531


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
0-24 months   ki1000108-IRC              INDIA         High                 NA                 0.0283635   -0.0159402   0.0726672
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0170472   -0.0185228   0.0526173
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0332013   -0.0360426   0.1024451
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.0039103   -0.0012779   0.0090985
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0022985   -0.0002330   0.0048300
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0140435   -0.0150082   0.0430952
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0461044    0.0288930   0.0633159
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0114169    0.0013588   0.0214750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0035302   -0.0035164   0.0105767
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.0081907   -0.0674787   0.0510972
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0077711   -0.0489024   0.0333602
0-6 months    ki1000108-IRC              INDIA         High                 NA                 0.0116630   -0.0416541   0.0649801
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0129014   -0.0583351   0.0841379
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                -0.0005910   -0.0219724   0.0207904
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0134930   -0.0065240   0.0335099
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
6-24 months   ki1000108-IRC              INDIA         High                 NA                 0.0283635   -0.0159402   0.0726672
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0170472   -0.0185228   0.0526173
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0332013   -0.0360426   0.1024451
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.0039103   -0.0012779   0.0090985
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0022985   -0.0002330   0.0048300
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0140435   -0.0150082   0.0430952
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0461044    0.0288930   0.0633159
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0114169    0.0013588   0.0214750
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0035302   -0.0035164   0.0105767


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
0-24 months   ki1000108-IRC              INDIA         High                 NA                 0.2422715   -0.2413087   0.5374620
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1936857   -0.3261632   0.5097566
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.2300654   -0.4328814   0.5862886
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.3281362   -0.0996129   0.5894910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1282622   -0.0235894   0.2575863
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.2749288   -0.5698040   0.6650994
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.4756756    0.2706642   0.6230596
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2228673    0.0032918   0.3940702
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0608130   -0.0684126   0.1744087
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.1069915   -1.2256042   0.4493944
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0556410   -0.3950202   0.2011743
0-6 months    ki1000108-IRC              INDIA         High                 NA                 0.0732582   -0.3297719   0.3541371
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.1069822   -0.7296280   0.5389293
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                -0.0062747   -0.2599523   0.1963277
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2213364   -0.1799720   0.4861599
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
6-24 months   ki1000108-IRC              INDIA         High                 NA                 0.2422715   -0.2413087   0.5374620
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1936857   -0.3261632   0.5097566
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.2300654   -0.4328814   0.5862886
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.3281362   -0.0996129   0.5894910
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1282622   -0.0235894   0.2575863
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.2749288   -0.5698040   0.6650994
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.4756756    0.2706642   0.6230596
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2228673    0.0032918   0.3940702
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0608130   -0.0684126   0.1744087
