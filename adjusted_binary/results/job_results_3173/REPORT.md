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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        feducyrs    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                0       37     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                1        1     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             0       52     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               0       49     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               1        3     144
Birth       ki0047075b-MAL-ED          INDIA                          Low                0       48     123
Birth       ki0047075b-MAL-ED          INDIA                          Low                1        2     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium             0       34     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium             1        1     123
Birth       ki0047075b-MAL-ED          INDIA                          High               0       38     123
Birth       ki0047075b-MAL-ED          INDIA                          High               1        0     123
Birth       ki0047075b-MAL-ED          NEPAL                          Low                0       18      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low                1        1      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             0       18      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             1        3      67
Birth       ki0047075b-MAL-ED          NEPAL                          High               0       27      67
Birth       ki0047075b-MAL-ED          NEPAL                          High               1        0      67
Birth       ki0047075b-MAL-ED          PERU                           Low                0       63     236
Birth       ki0047075b-MAL-ED          PERU                           Low                1        2     236
Birth       ki0047075b-MAL-ED          PERU                           Medium             0       54     236
Birth       ki0047075b-MAL-ED          PERU                           Medium             1        1     236
Birth       ki0047075b-MAL-ED          PERU                           High               0      113     236
Birth       ki0047075b-MAL-ED          PERU                           High               1        3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       26      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       27     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0        6     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        1     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       62     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        3     101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                0       73     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                1        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             0       69     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               0       34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               1        0     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                0       12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               0        8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               1        0      27
Birth       ki1119695-PROBIT           BELARUS                        Low                0     5315   13416
Birth       ki1119695-PROBIT           BELARUS                        Low                1        1   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium             0     6038   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium             1        4   13416
Birth       ki1119695-PROBIT           BELARUS                        High               0     2058   13416
Birth       ki1119695-PROBIT           BELARUS                        High               1        0   13416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     2183   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       93   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     9903   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      305   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               0      946   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               1       30   13460
Birth       ki1135781-COHORTS          GUATEMALA                      Low                0      348     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low                1        7     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             0      293     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             1        1     804
Birth       ki1135781-COHORTS          GUATEMALA                      High               0      152     804
Birth       ki1135781-COHORTS          GUATEMALA                      High               1        3     804
Birth       ki1135781-COHORTS          INDIA                          Low                0      431    1354
Birth       ki1135781-COHORTS          INDIA                          Low                1        8    1354
Birth       ki1135781-COHORTS          INDIA                          Medium             0      379    1354
Birth       ki1135781-COHORTS          INDIA                          Medium             1        9    1354
Birth       ki1135781-COHORTS          INDIA                          High               0      516    1354
Birth       ki1135781-COHORTS          INDIA                          High               1       11    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                0      810    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                1       17    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             0     1000    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             1       19    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    High               0     1020    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    High               1        7    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0    15050   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1     1886   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0    11674   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1     1428   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     7136   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      552   37726
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      612     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1       54     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      120     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       10     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0       96     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1       10     902
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                0       34     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                1        2     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             0       45     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               0       49     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               1        1     132
6 months    ki0047075b-MAL-ED          INDIA                          Low                0       52     138
6 months    ki0047075b-MAL-ED          INDIA                          Low                1        2     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium             0       40     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium             1        1     138
6 months    ki0047075b-MAL-ED          INDIA                          High               0       43     138
6 months    ki0047075b-MAL-ED          INDIA                          High               1        0     138
6 months    ki0047075b-MAL-ED          NEPAL                          Low                0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low                1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             1        1      95
6 months    ki0047075b-MAL-ED          NEPAL                          High               0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High               1        0      95
6 months    ki0047075b-MAL-ED          PERU                           Low                0       56     224
6 months    ki0047075b-MAL-ED          PERU                           Low                1        4     224
6 months    ki0047075b-MAL-ED          PERU                           Medium             0       55     224
6 months    ki0047075b-MAL-ED          PERU                           Medium             1        2     224
6 months    ki0047075b-MAL-ED          PERU                           High               0      104     224
6 months    ki0047075b-MAL-ED          PERU                           High               1        3     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       53     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       17     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        2     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0      119     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        8     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                0      481    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                1       69    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             0      398    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             1       37    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               0      326    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               1       22    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                0      113     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                1       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             0      120     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             1       27     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               0       93     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               1        8     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                0      192     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                1        9     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             0      176     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             1        3     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               0      201     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               1        2     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      216     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      204     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        9     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               0      272     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               1        7     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1074    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        9    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      559    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        5    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      366    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        5    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      454    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       32    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0      362    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        4    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0      268    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        4    1124
6 months    ki1119695-PROBIT           BELARUS                        Low                0     5849   15211
6 months    ki1119695-PROBIT           BELARUS                        Low                1      113   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium             0     6646   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium             1       90   15211
6 months    ki1119695-PROBIT           BELARUS                        High               0     2490   15211
6 months    ki1119695-PROBIT           BELARUS                        High               1       23   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     1338    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       66    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     5853    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      250    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               0      542    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               1       14    8063
6 months    ki1135781-COHORTS          GUATEMALA                      Low                0      352     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low                1       54     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             0      294     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             1       39     904
6 months    ki1135781-COHORTS          GUATEMALA                      High               0      140     904
6 months    ki1135781-COHORTS          GUATEMALA                      High               1       25     904
6 months    ki1135781-COHORTS          INDIA                          Low                0      428    1385
6 months    ki1135781-COHORTS          INDIA                          Low                1       22    1385
6 months    ki1135781-COHORTS          INDIA                          Medium             0      380    1385
6 months    ki1135781-COHORTS          INDIA                          Medium             1       11    1385
6 months    ki1135781-COHORTS          INDIA                          High               0      533    1385
6 months    ki1135781-COHORTS          INDIA                          High               1       11    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                0      699    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                1       47    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             0      879    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             1       48    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    High               0      862    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    High               1       29    2564
6 months    ki1148112-LCNI-5           MALAWI                         Low                0      264     812
6 months    ki1148112-LCNI-5           MALAWI                         Low                1       26     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium             0      257     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium             1       14     812
6 months    ki1148112-LCNI-5           MALAWI                         High               0      226     812
6 months    ki1148112-LCNI-5           MALAWI                         High               1       25     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0    11699   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      898   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0    10366   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      720   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0     8244   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      295   32222
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     3694    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      209    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      734    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       63    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0      646    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1       25    5371
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                0       32     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                1        3     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             0       36     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             1        6     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               0       39     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               1        1     117
24 months   ki0047075b-MAL-ED          INDIA                          Low                0       42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low                1        9     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium             0       36     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium             1        3     132
24 months   ki0047075b-MAL-ED          INDIA                          High               0       38     132
24 months   ki0047075b-MAL-ED          INDIA                          High               1        4     132
24 months   ki0047075b-MAL-ED          NEPAL                          Low                0       27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low                1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             0       25      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             1        1      91
24 months   ki0047075b-MAL-ED          NEPAL                          High               0       38      91
24 months   ki0047075b-MAL-ED          NEPAL                          High               1        0      91
24 months   ki0047075b-MAL-ED          PERU                           Low                0       41     164
24 months   ki0047075b-MAL-ED          PERU                           Low                1        3     164
24 months   ki0047075b-MAL-ED          PERU                           Medium             0       40     164
24 months   ki0047075b-MAL-ED          PERU                           Medium             1        3     164
24 months   ki0047075b-MAL-ED          PERU                           High               0       73     164
24 months   ki0047075b-MAL-ED          PERU                           High               1        4     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       30      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        4      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       20      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        3      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       32      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       30     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1       17     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       11     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        5     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       82     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1       32     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                0      170     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                1       26     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             0      163     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             1       16     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               0      195     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               1        7     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      134     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                1       10     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      149     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1       10     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               0      196     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               1       15     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      388     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       54     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0      282     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1       40     996
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0      218     996
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1       14     996
24 months   ki1119695-PROBIT           BELARUS                        Low                0     1484    3913
24 months   ki1119695-PROBIT           BELARUS                        Low                1       32    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium             0     1745    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium             1       25    3913
24 months   ki1119695-PROBIT           BELARUS                        High               0      621    3913
24 months   ki1119695-PROBIT           BELARUS                        High               1        6    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                0       72     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       33     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0      223     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1       87     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               0       18     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               1        1     434
24 months   ki1135781-COHORTS          GUATEMALA                      Low                0      257     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low                1      207     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             0      212     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             1      142     995
24 months   ki1135781-COHORTS          GUATEMALA                      High               0      101     995
24 months   ki1135781-COHORTS          GUATEMALA                      High               1       76     995
24 months   ki1135781-COHORTS          INDIA                          Low                0      325    1380
24 months   ki1135781-COHORTS          INDIA                          Low                1      125    1380
24 months   ki1135781-COHORTS          INDIA                          Medium             0      333    1380
24 months   ki1135781-COHORTS          INDIA                          Medium             1       58    1380
24 months   ki1135781-COHORTS          INDIA                          High               0      482    1380
24 months   ki1135781-COHORTS          INDIA                          High               1       57    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                0      416    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                1      276    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             0      566    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             1      258    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High               0      674    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High               1      124    2314
24 months   ki1148112-LCNI-5           MALAWI                         Low                0      180     571
24 months   ki1148112-LCNI-5           MALAWI                         Low                1       23     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium             0      170     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium             1       25     571
24 months   ki1148112-LCNI-5           MALAWI                         High               0      156     571
24 months   ki1148112-LCNI-5           MALAWI                         High               1       17     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     5458   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1     1284   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     4792   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      888   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     3760   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      367   16549
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     3522    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      315    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      695    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       80    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0      601    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1       46    5259


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
![](/tmp/1d249cff-749d-4d17-842f-cf1fc2b1c964/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d249cff-749d-4d17-842f-cf1fc2b1c964/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d249cff-749d-4d17-842f-cf1fc2b1c964/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d249cff-749d-4d17-842f-cf1fc2b1c964/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0321097    0.0287489   0.0354704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0315019    0.0285062   0.0344976
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0356623    0.0321047   0.0392198
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.0182232    0.0057064   0.0307401
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0231959    0.0082128   0.0381790
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0208729    0.0086629   0.0330828
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0205562    0.0108839   0.0302286
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0186457    0.0103388   0.0269526
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0068160    0.0017831   0.0118489
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1028438    0.0979082   0.1077794
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1037753    0.0987193   0.1088312
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1018341    0.0964891   0.1071791
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0802031    0.0478945   0.1125117
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0758825   -0.0037029   0.1554679
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0957949    0.0362855   0.1553044
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1219082    0.1012024   0.1426140
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0846667    0.0556780   0.1136553
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0620704    0.0372288   0.0869121
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1439394    0.0839775   0.2039013
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1836735    0.1209952   0.2463517
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0792079    0.0264698   0.1319460
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0313901    0.0084883   0.0542920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0422535    0.0152190   0.0692881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0250896    0.0067251   0.0434541
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0083102    0.0029023   0.0137182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0088652    0.0011273   0.0166032
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0134771    0.0017411   0.0252131
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0190405    0.0109959   0.0270851
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0134926    0.0083908   0.0185945
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0094997    0.0054428   0.0135567
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0481705    0.0372529   0.0590881
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0411888    0.0362215   0.0461560
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0273126    0.0146326   0.0399926
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1243247    0.0946272   0.1540222
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1217294    0.0912562   0.1522025
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1461237    0.1054574   0.1867900
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0402007    0.0224749   0.0579266
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0244279    0.0096463   0.0392095
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0185015    0.0073423   0.0296608
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0584930    0.0419665   0.0750195
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0516410    0.0376968   0.0655853
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0323609    0.0209038   0.0438180
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0891849    0.0563341   0.1220358
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0519480    0.0255885   0.0783076
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.0996347    0.0626040   0.1366655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0637493    0.0581420   0.0693566
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0580462    0.0524251   0.0636673
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0458586    0.0401559   0.0515613
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0548256    0.0455255   0.0641258
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0678700    0.0437452   0.0919947
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0322091    0.0158505   0.0485677
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3617021    0.2239442   0.4994601
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3125000    0.0847388   0.5402612
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2807018    0.1979832   0.3634203
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1326531    0.0851248   0.1801813
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0893855    0.0475544   0.1312165
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0346535    0.0094091   0.0598978
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0722234    0.0303086   0.1141381
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0608592    0.0239783   0.0977401
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0692586    0.0352027   0.1033145
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1258427    0.0831529   0.1685326
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1289538    0.0782545   0.1796531
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0633728    0.0204935   0.1062521
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0211082    0.0002353   0.0419810
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0141243    0.0011297   0.0271189
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0095694   -0.0042112   0.0233499
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4207965    0.3831893   0.4584036
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4145031    0.3741629   0.4548433
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4046826    0.3565917   0.4527734
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2109469    0.1786042   0.2432896
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1185036    0.0899913   0.1470160
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0933624    0.0712009   0.1155239
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3523346    0.3236214   0.3810478
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3156585    0.2885399   0.3427770
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1765212    0.1554044   0.1976381
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.1132909    0.0696521   0.1569297
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1282062    0.0812417   0.1751706
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0982749    0.0538787   0.1426711
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1673766    0.1557215   0.1790318
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1531319    0.1405468   0.1657170
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1263780    0.1143705   0.1383855
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0837143    0.0686029   0.0988256
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1076997    0.0735746   0.1418247
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0751778    0.0468114   0.1035442


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0317979   0.0288336   0.0347622
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0206795   0.0130966   0.0282623
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0149669   0.0105263   0.0194076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1024757   0.0976627   0.1072888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0820399   0.0540196   0.1100602
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0960240   0.0777684   0.1142796
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0094153   0.0052007   0.0136299
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0148577   0.0096205   0.0200949
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0409277   0.0366029   0.0452524
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1305310   0.1085580   0.1525039
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0317690   0.0225290   0.0410089
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0483619   0.0400565   0.0566674
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0800493   0.0613726   0.0987259
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0593694   0.0553537   0.0633851
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0552970   0.0470416   0.0635524
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3050847   0.2370598   0.3731096
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1084337   0.0810981   0.1357694
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0161002   0.0033894   0.0288110
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4271357   0.3963844   0.4578870
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1739130   0.1539078   0.1939183
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2843561   0.2659721   0.3027401
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1138354   0.0877614   0.1399093
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1534232   0.1444997   0.1623466
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0838562   0.0709293   0.0967832


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9810723   0.9196431   1.0466048
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.1106404   1.0277813   1.2001795
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               1.2728737   0.4957916   3.2679204
Birth       ki1135781-COHORTS          INDIA                          High                 Low               1.1453985   0.4646603   2.8234341
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9070600   0.4744831   1.7340087
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.3315768   0.1381425   0.7958680
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0090571   0.9851401   1.0335548
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9901822   0.9613637   1.0198646
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9461289   0.3076472   2.9096967
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1944042   0.5673478   2.5145093
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.6945115   0.4828115   0.9990363
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.5091571   0.3524284   0.7355849
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.2760473   0.7447272   2.1864336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.5502866   0.2508965   1.2069336
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.3460765   0.5100738   3.5522739
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.7992832   0.2843614   2.2466251
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0667849   0.3591237   3.1689079
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               1.6217430   0.5468357   4.8095809
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.7086280   0.5230967   0.9599635
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.4989222   0.2838208   0.8770442
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8550614   0.6616575   1.1049976
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.5669981   0.3383388   0.9501921
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9791247   0.6958446   1.3777289
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1753394   0.8165542   1.6917708
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.6076481   0.2872515   1.2854108
6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.4602287   0.2178998   0.9720542
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8828584   0.5978780   1.3036757
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5532440   0.3519649   0.8696291
6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               0.5824757   0.3112320   1.0901125
6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               1.1171699   0.6622426   1.8846095
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9105385   0.8080483   1.0260283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7193588   0.6263751   0.8261457
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.2379242   0.8391758   1.8261444
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.5874833   0.3442234   1.0026528
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8639706   0.3796276   1.9662564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7760578   0.4794663   1.2561169
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.6738290   0.3737493   1.2148395
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.2612338   0.1160005   0.5883002
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.8426524   0.3645965   1.9475315
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.9589503   0.4473338   2.0557035
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0247217   0.6093537   1.7232268
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.5035871   0.2362709   1.0733442
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.6691384   0.2962476   1.5113919
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.4533493   0.0694725   2.9583719
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9850442   0.8693821   1.1160939
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9617062   0.8333675   1.1098091
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.5617699   0.4240870   0.7441525
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.4425872   0.3350473   0.5846441
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8959055   0.7982502   1.0055076
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5010046   0.4348964   0.5771618
24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1316545   0.6650578   1.9256101
24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.8674564   0.4790904   1.5706441
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9148942   0.8300180   1.0084498
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7550515   0.6770650   0.8420207
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.2865151   0.8943408   1.8506604
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8980281   0.5928582   1.3602823


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0003117   -0.0019871    0.0013636
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.0024562   -0.0081540    0.0130665
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0055893   -0.0132974    0.0021188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0003681   -0.0016115    0.0008753
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0018368   -0.0146699    0.0183435
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0258842   -0.0405030   -0.0112654
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0018341   -0.0501375    0.0464693
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0007777   -0.0183228    0.0198782
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0011050   -0.0028469    0.0050570
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0041828   -0.0076819   -0.0006838
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0072428   -0.0170259    0.0025403
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0062063   -0.0158983    0.0283108
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0084318   -0.0217537    0.0048901
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0101311   -0.0233435    0.0030814
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0091357   -0.0347367    0.0164654
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0043799   -0.0081581   -0.0006018
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0004713   -0.0045107    0.0054534
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0566174   -0.1729201    0.0596854
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0477311   -0.0829806   -0.0124815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0041300   -0.0396513    0.0313913
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0174090   -0.0480588    0.0132408
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0050080   -0.0158396    0.0058236
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0063392   -0.0200745    0.0327529
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0370339   -0.0607645   -0.0133033
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0679785   -0.0909933   -0.0449637
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0005445   -0.0345283    0.0356173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0139535   -0.0217667   -0.0061402
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0001420   -0.0075878    0.0078718


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0098035   -0.0639280    0.0415676
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.1187764   -0.5742366    0.5067101
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3734428   -0.9815609    0.0480509
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0035917   -0.0158051    0.0084749
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0223890   -0.2010548    0.2042634
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.2695597   -0.4526758   -0.1095263
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0129068   -0.4167931    0.2758433
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0241763   -0.7930856    0.4689423
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1173640   -0.4148639    0.4493843
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2815272   -0.4778645   -0.1112737
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1769665   -0.4416052    0.0390919
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0475465   -0.1371288    0.2022297
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.2654091   -0.7499583    0.0849724
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2094845   -0.5128801    0.0330677
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1141255   -0.4832657    0.1631469
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0737743   -0.1393613   -0.0119627
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0085239   -0.0856930    0.0945646
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1855792   -0.6353420    0.1404868
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.5620575   -1.0117300   -0.2128982
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0606515   -0.7346648    0.3514703
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1605497   -0.4801165    0.0900205
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.3110525   -1.0248763    0.1511291
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0148412   -0.0488292    0.0746465
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.2129448   -0.3574397   -0.0838310
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2390611   -0.3250865   -0.1586204
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0047830   -0.3563345    0.2697547
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0909475   -0.1435590   -0.0407565
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0016933   -0.0948783    0.0897469
