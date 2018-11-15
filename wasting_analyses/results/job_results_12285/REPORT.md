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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       10     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       22     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        6     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        7     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       20     86
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        8     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3     23
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       21    153
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       42    153
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       25    153
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       34    153
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       12    153
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       19    153
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        5     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       28     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       10     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       29     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        2     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       14     88
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       14     34
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       11     34
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       12     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       29     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       20     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        5     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       17     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        2     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       18     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        3     38
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       38    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       63    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       42    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       61    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       40    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       82    326
0-24 months   ki1000108-IRC              INDIA                          Low                   0       57    395
0-24 months   ki1000108-IRC              INDIA                          Low                   1       81    395
0-24 months   ki1000108-IRC              INDIA                          Medium                0       63    395
0-24 months   ki1000108-IRC              INDIA                          Medium                1       67    395
0-24 months   ki1000108-IRC              INDIA                          High                  0       42    395
0-24 months   ki1000108-IRC              INDIA                          High                  1       85    395
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      137    256
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1       97    256
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       10    256
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1        6    256
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        2    256
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        4    256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      272    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      145    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      150    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      107    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       82    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       58    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      180    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        9    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       27    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       14    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0       96    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       92    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0       58    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       79    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0       48    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       48    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       50    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       55    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       44    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       66    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       34    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       58    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       42    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       58    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       42    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       68    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       33    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       68    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        8    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       16    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      191    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      319    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       67    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      111    712
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        5     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        7     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        4     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0       11     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1        7     37
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      194    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      222    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       45    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       44    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       28    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       25    558
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0      239   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1372   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0      286   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1834   4431
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0       90   4431
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      610   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      404   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      372   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      463   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      478   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      761   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1091   3569
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      105    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       76    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       70    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       60    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       36    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       30    377
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      696   2119
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      168   2119
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      771   2119
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      278   2119
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      144   2119
0-24 months   ki1135781-COHORTS          INDIA                          High                  1       62   2119
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      255   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      323   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      207   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      322   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      202   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      380   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       28     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        2     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       24     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       10     77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12     77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        1     77
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1732   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1190   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     1316   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      957   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     1320   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1050   7565
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      627    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      218    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       16    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        7    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       28    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1        5    901
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0        5     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       12     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0        1     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0        1     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     50
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        4     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        6     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     14
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       10     73
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       23     73
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0        5     73
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       19     73
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0        6     73
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       10     73
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0        2     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       11     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0        5     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       11     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0        1     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       10     40
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     11
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        6     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        9     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        8     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        0     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        4     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        6     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     11
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       20    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       35    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       20    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       43    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       26    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       59    203
0-6 months    ki1000108-IRC              INDIA                          Low                   0       31    240
0-6 months    ki1000108-IRC              INDIA                          Low                   1       51    240
0-6 months    ki1000108-IRC              INDIA                          Medium                0       35    240
0-6 months    ki1000108-IRC              INDIA                          Medium                1       43    240
0-6 months    ki1000108-IRC              INDIA                          High                  0       21    240
0-6 months    ki1000108-IRC              INDIA                          High                  1       59    240
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0       43    108
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1       56    108
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0        4    108
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        3    108
0-6 months    ki1000109-EE               PAKISTAN                       High                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        2    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0       95    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1       86    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0       44    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       52    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0       27    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       37    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       68     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0        7     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0        3     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   0       29    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   1       58    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                0       17    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                1       61    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  0       18    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  1       40    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0       14    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       45    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0       16    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       57    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0        9    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       43    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0        8    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       51    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0        8    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       59    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0        5    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       67    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        3    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        5    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       71    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      169    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       27    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       65    340
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        0      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  0        3      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  1        2      9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0       49    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       80    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       17    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       15    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0        9    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1        9    179
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0      187   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1355   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0      220   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1816   4263
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0       81   4263
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      604   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      160   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      349   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      167   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      456   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      318   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1062   2512
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0       26    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       74    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0       21    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       55    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0        7    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       29    212
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0      340   1413
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      168   1413
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0      459   1413
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      278   1413
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      106   1413
0-6 months    ki1135781-COHORTS          INDIA                          High                  1       62   1413
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0       65    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      144    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0       54    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      165    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0       79    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      245    752
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0      675   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1190   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      420   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      957   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0      441   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1050   4733
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      103    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      126    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0        3    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        5    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0        3    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1        3    243
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        5     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       10     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        5     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        4     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        6     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        6     36
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       11     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       19     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       20     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       15     80
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        6     80
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1        9     80
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        3     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       17     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        5     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       18     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        1     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        4     48
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       10     23
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        6     23
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       20     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       12     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        9     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        6     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       12     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        3     27
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       18    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       28    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       22    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       18    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       23    123
6-24 months   ki1000108-IRC              INDIA                          Low                   0       26    155
6-24 months   ki1000108-IRC              INDIA                          Low                   1       30    155
6-24 months   ki1000108-IRC              INDIA                          Medium                0       28    155
6-24 months   ki1000108-IRC              INDIA                          Medium                1       24    155
6-24 months   ki1000108-IRC              INDIA                          High                  0       21    155
6-24 months   ki1000108-IRC              INDIA                          High                  1       26    155
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0       94    148
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1       41    148
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0        6    148
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1        3    148
6-24 months   ki1000109-EE               PAKISTAN                       High                  0        2    148
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        2    148
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      177    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       59    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      106    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       55    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       55    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       21    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      112    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        9    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       20    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       11    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0       67    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       34    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0       41    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       18    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0       30    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1        8    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       36    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       28    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1        9    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       15    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       34    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1        7    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       34    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1        9    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       28    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1        1    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        5    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       11    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      120    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      150    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       40    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       46    372
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        5     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        6     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1        5     28
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      145    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      142    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       28    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       29    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       19    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       16    379
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0       52    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0       66    168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       18    168
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        6    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      244   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1       23   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      296   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1       22   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      443   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       29   1057
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0       79    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1        2    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       49    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1        5    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       29    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1        1    165
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0      356    706
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1        0    706
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0      312    706
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1        0    706
6-24 months   ki1135781-COHORTS          INDIA                          High                  0       38    706
6-24 months   ki1135781-COHORTS          INDIA                          High                  1        0    706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      190    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      179    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      153    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      157    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      123    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      135    937
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       26     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        2     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       22     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       10     73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12     73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        1     73
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1057   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      896   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0      879   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1        0   2832
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      524    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1       92    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       13    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        2    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       25    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1        2    658


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/f2c7e275-9536-487d-8550-354c885657a3/51e83b8d-f7ed-4d0d-8722-aa7c422e6839/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2c7e275-9536-487d-8550-354c885657a3/51e83b8d-f7ed-4d0d-8722-aa7c422e6839/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f2c7e275-9536-487d-8550-354c885657a3/51e83b8d-f7ed-4d0d-8722-aa7c422e6839/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2c7e275-9536-487d-8550-354c885657a3/51e83b8d-f7ed-4d0d-8722-aa7c422e6839/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6875000   0.5204085   0.8545915
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7777778   0.5988250   0.9567305
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7407407   0.6174221   0.8640594
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6666667   0.5355167   0.7978166
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5762712   0.4501854   0.7023569
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6129032   0.3954653   0.8303412
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6237624   0.5277090   0.7198157
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5922330   0.4907750   0.6936910
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6721311   0.5787637   0.7654986
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5869565   0.4931739   0.6807391
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.5153846   0.4237477   0.6070216
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6692913   0.5896499   0.7489328
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3477218   0.2996925   0.3957511
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4163424   0.3547950   0.4778898
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4142857   0.3239783   0.5045931
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4893617   0.4177406   0.5609828
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5766423   0.4855823   0.6677024
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.5000000   0.3889094   0.6110906
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5238095   0.4275372   0.6200819
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.6000000   0.5000805   0.6999195
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6304348   0.5350979   0.7257717
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5800000   0.4828515   0.6771485
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.6181818   0.5319613   0.7044024
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6732673   0.5764549   0.7700798
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6666667   0.4628279   0.8705055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6254902   0.5809696   0.6700108
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6235955   0.5481204   0.6990706
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5336538   0.4821759   0.5851318
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4943820   0.3763605   0.6124036
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4716981   0.3209500   0.6224462
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8516449   0.8344293   0.8688606
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8650943   0.8506965   0.8794922
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8714286   0.8466341   0.8962231
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4793814   0.4440227   0.5147402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5079702   0.4759470   0.5399935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5890929   0.5664235   0.6117622
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4198895   0.3454911   0.4942879
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4615385   0.3739109   0.5491661
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4545455   0.3266883   0.5824027
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1944444   0.1688299   0.2200590
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2650143   0.2378943   0.2921343
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3009709   0.2344732   0.3674685
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.5588235   0.5176247   0.6000224
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6086957   0.5652393   0.6521520
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6529210   0.6106166   0.6952253
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4072553   0.3894585   0.4250521
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4210295   0.4006426   0.4414164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4430380   0.4231288   0.4629471
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2579882   0.2283316   0.2876447
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3043478   0.0746304   0.5340653
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1515152   0.0148040   0.2882263
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6969697   0.5387947   0.8551447
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.7916667   0.6194767   0.9638566
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.6250000   0.3721939   0.8778061
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6363636   0.5036790   0.7690482
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6825397   0.5684214   0.7966579
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6941176   0.5940245   0.7942108
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.6219512   0.5115625   0.7323399
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5512821   0.4382808   0.6642833
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.7375000   0.6422683   0.8327317
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4751381   0.4024728   0.5478034
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5416667   0.4392845   0.6440489
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5781250   0.4560553   0.7001947
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6666667   0.5669393   0.7663941
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7820513   0.6898095   0.8742931
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.6896552   0.5724038   0.8069065
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7627119   0.6581252   0.8672985
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7808219   0.6840825   0.8775613
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8269231   0.7264728   0.9273734
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8644068   0.7759319   0.9528817
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8805970   0.8019601   0.9592340
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9305556   0.8711487   0.9899624
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6201550   0.5361404   0.7041697
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4687500   0.2934010   0.6440990
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5000000   0.2657434   0.7342566
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8787289   0.8623410   0.8951168
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8919450   0.8783522   0.9055377
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8817518   0.8573384   0.9061653
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6856582   0.6452745   0.7260419
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7319422   0.6971036   0.7667809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7695652   0.7474112   0.7917193
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7400000   0.6534164   0.8265836
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7236842   0.6242822   0.8230862
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8055556   0.6753507   0.9357605
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3307087   0.2897826   0.3716348
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.3772049   0.3421999   0.4122098
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3690476   0.2960537   0.4420415
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6889952   0.6260954   0.7518950
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7534247   0.6967772   0.8100721
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7561728   0.7089074   0.8034383
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6380697   0.6162482   0.6598912
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6949891   0.6706583   0.7193200
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7042254   0.6810879   0.7273628
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6333333   0.4225524   0.8441142
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4285714   0.2479229   0.6092200
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3314261   0.8685739
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6086957   0.4653431   0.7520482
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.4500000   0.2740346   0.6259654
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6216216   0.4611766   0.7820666
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5357143   0.3966184   0.6748102
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4615385   0.3153270   0.6077499
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5531915   0.4050577   0.7013253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2500000   0.1918425   0.3081575
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3416149   0.2682685   0.4149613
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2763158   0.1754623   0.3771692
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3366337   0.2406100   0.4326573
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3050847   0.1875637   0.4226058
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2105263   0.0841686   0.3368840
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2173913   0.0880742   0.3467084
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2432432   0.0907435   0.3957430
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3750000   0.2362295   0.5137705
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6875000   0.4523318   0.9226682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5555556   0.4941981   0.6169130
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5348837   0.4257515   0.6440159
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4947735   0.4312404   0.5583066
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5087719   0.3735970   0.6439468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4571429   0.2777153   0.6365704
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2463768   0.1460750   0.3466786
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2142857   0.1257468   0.3028247
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.4000000   0.1498474   0.6501526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0861423   0.0531362   0.1191485
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0691824   0.0408335   0.0975313
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0614407   0.0402084   0.0826730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4850949   0.4311031   0.5390866
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5064516   0.4466304   0.5662729
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5232558   0.4603242   0.5861875


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4226041   0.4114768   0.4337314
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2552719   0.2263808   0.2841631
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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.1313131   0.8095986   1.580869
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               1.0774411   0.8022294   1.447067
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.8644068   0.6441083   1.160052
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9193548   0.6126719   1.379553
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.9494529   0.7540914   1.195426
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0775436   0.8757298   1.325866
0-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.8780627   0.6914014   1.115118
0-24 months   ki1000108-IRC              INDIA                          High                 Low               1.1402741   0.9342404   1.391746
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.1973434   0.9780022   1.465877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.1914286   0.9204342   1.542209
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.1783561   0.9500736   1.461490
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               1.0217391   0.7830137   1.333247
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1454545   0.8938031   1.467959
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.2035573   0.9486009   1.527039
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0658307   0.8569582   1.325613
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.1608057   0.9307744   1.447687
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.9382353   0.6854372   1.284269
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9353933   0.6732620   1.299584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.9264096   0.7160376   1.198589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8839028   0.6331214   1.234019
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0157923   0.9895390   1.042742
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0232299   0.9881326   1.059574
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0596369   0.9616474   1.167611
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.2288604   1.1307544   1.335478
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0991903   0.8477236   1.425251
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0825359   0.7763190   1.509539
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               1.3629307   1.1535270   1.610348
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               1.5478502   1.1967840   2.001899
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0892449   0.9829871   1.206989
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1683849   1.0591428   1.288894
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0338220   0.9685428   1.103501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.0878630   1.0217665   1.158235
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1796968   0.5497923   2.531292
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.5872950   0.2365070   1.458373
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               1.1358696   0.8294560   1.555477
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.8967391   0.5639458   1.425919
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               1.0725624   0.8210179   1.401175
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0907563   0.8465080   1.405479
0-6 months    ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Medium               Low               0.8863751   0.6758508   1.162477
0-6 months    ki1000108-IRC              INDIA                          High                 Low               1.1857843   0.9520967   1.476829
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.1400194   0.8939553   1.453813
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.2167514   0.9374994   1.579184
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               1.1730769   0.9696040   1.419249
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 Low               1.0344828   0.8248493   1.297394
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.0237443   0.8510039   1.231548
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.0841880   0.9026943   1.302172
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.0187299   0.8893393   1.166945
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0765251   0.9541901   1.214544
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.7558594   0.5077565   1.125192
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8062500   0.4950641   1.313040
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0150400   0.9908856   1.039783
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               1.0034401   0.9704955   1.037503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0675031   0.9896500   1.151481
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.1223745   1.0511553   1.198419
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9779516   0.8164989   1.171330
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0885886   0.8916724   1.328992
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.1405957   0.9771335   1.331403
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.1159297   0.8837098   1.409172
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0935122   0.9715394   1.230798
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0975009   0.9825492   1.225901
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0892056   1.0371823   1.143838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               1.1036809   1.0525615   1.157283
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.6766917   0.3953941   1.158114
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9473684   0.5422331   1.655205
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               Low               0.7392857   0.4684562   1.166690
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 Low               1.0212355   0.7200776   1.448347
6-24 months   ki1000108-IRC              INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Medium               Low               0.8615385   0.5718736   1.297924
6-24 months   ki1000108-IRC              INDIA                          High                 Low               1.0326241   0.7111508   1.499418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               1.3664596   0.9956489   1.875372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               1.1052632   0.7169720   1.703842
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               Low               0.9062812   0.5609331   1.464249
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 Low               0.6253870   0.3217195   1.215683
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               1.1189189   0.4717211   2.654068
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               1.7250000   0.8558651   3.476745
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8080808   0.5640895   1.157608
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7780127   0.5224119   1.158672
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0282926   0.7654459   1.381398
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9239437   0.6113922   1.396275
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8697479   0.4869471   1.553478
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.6235294   0.7698083   3.424031
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8031173   0.4582884   1.407405
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7132461   0.4257468   1.194889
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0440260   0.8876296   1.227979
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.0786670   0.9156342   1.270728


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0450581   -0.0807144   0.1708307
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0457516   -0.1475102   0.0560069
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0081395   -0.0733735   0.0896524
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0029169   -0.0703908   0.0762246
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0331136   -0.0011008   0.0673279
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0308283   -0.0250179   0.0866746
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0592524   -0.0192933   0.1377980
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0437942   -0.0356607   0.1232491
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0402622   -0.2407242   0.1601998
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0121485   -0.0392758   0.0149789
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0095602   -0.0039658   0.0230862
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0644684    0.0331619   0.0957748
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0204288   -0.0336574   0.0745150
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.0452913    0.0239712   0.0666114
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0480444    0.0142624   0.0818265
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0153488    0.0013552   0.0293424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0027162   -0.0107579   0.0053254
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0153591   -0.1028535   0.1335717
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0385132   -0.0727493   0.1497757
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0155488   -0.0724408   0.1035383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0380584   -0.0122671   0.0883839
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0463378   -0.0292634   0.1219391
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0253316   -0.0604071   0.1110703
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0295326   -0.0415117   0.1005769
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0391495   -0.0858139   0.0075150
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0067977   -0.0061242   0.0197196
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0575743    0.0220588   0.0930899
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0052830   -0.0568847   0.0674507
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0288101   -0.0043117   0.0619319
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0477069   -0.0047897   0.1002035
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0374004    0.0207021   0.0540987
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0958333   -0.2607934   0.0691267
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0477200   -0.1653312   0.0698911
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0195853   -0.1310988   0.0919283
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0354123   -0.0064932   0.0773178
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.0336034   -0.0977457   0.0305390
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0590315   -0.0446381   0.1627010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1310484   -0.3618537   0.0997569
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0013698   -0.0318098   0.0290701
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0023292   -0.0798751   0.0752167
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0161329   -0.0439137   0.0116480
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0175732   -0.0244327   0.0595791


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0615079   -0.1285089   0.2195300
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0736842   -0.2513728   0.0787735
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0128809   -0.1248506   0.1337479
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                 0.0049450   -0.1274724   0.1218104
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0869498   -0.0075074   0.1725513
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0592636   -0.0540033   0.1603584
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.1016228   -0.0439743   0.2269143
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0702062   -0.0666422   0.1894971
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0642750   -0.4376675   0.2121396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0232950   -0.0767994   0.0275508
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0111010   -0.0047364   0.0266887
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1185408    0.0589412   0.1743657
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0463955   -0.0847501   0.1616858
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                 0.1889217    0.0963813   0.2719849
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0791679    0.0217780   0.1331908
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0363196    0.0026263   0.0688746
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0106406   -0.0427157   0.0204479
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                 0.0215618   -0.1592495   0.1741714
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                 0.0570670   -0.1236120   0.2086925
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                 0.0243902   -0.1240358   0.1532170
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0741594   -0.0294354   0.1673293
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                 0.0649895   -0.0479143   0.1657289
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.0321449   -0.0830800   0.1351115
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0330365   -0.0500643   0.1095607
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0673822   -0.1518170   0.0108630
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0076764   -0.0070270   0.0221652
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0774648    0.0282650   0.1241735
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0070886   -0.0799483   0.0871109
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0801352   -0.0167704   0.1678050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0647574   -0.0095285   0.1335770
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                 0.0553694    0.0302484   0.0798397
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1782946   -0.5303439   0.0927673
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.0850662   -0.3183762   0.1069555
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.0379464   -0.2782939   0.1572104
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.1240741   -0.0363671   0.2596771
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.1108911   -0.3427621   0.0809399
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                 0.2135550   -0.2716168   0.5136147
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.2355072   -0.7301277   0.1177078
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0027763   -0.0663975   0.0570493
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0095440   -0.3830568   0.2630967
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.2304383   -0.6961304   0.1073927
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0349599   -0.0523724   0.1150449
