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

unadjusted

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0     7525   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1      943   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5837   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      714   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     3568   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      276   18863
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      306     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1       27     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0       60     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        5     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0       48     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1        5     451
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      227     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       16     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0      181     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        2     562
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0      134     562
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        2     562
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0     5855   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      449   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5188   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      361   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0     4131   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      148   16132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1886    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      108    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      374    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       32    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0      333    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1       13    2746
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
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      194     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       27     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0      141     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1       20     498
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0      109     498
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        7     498
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     2735    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1      644    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     2399    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      445    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     1886    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      184    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1802    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      161    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      357    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       41    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0      309    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1       24    2694


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
```




# Results Detail

## Results Plots
![](/tmp/b85d2cc2-d0ea-4404-8492-f1b1f0a291af/55317946-aa71-40e8-ae59-1dbadfa3e061/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b85d2cc2-d0ea-4404-8492-f1b1f0a291af/55317946-aa71-40e8-ae59-1dbadfa3e061/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b85d2cc2-d0ea-4404-8492-f1b1f0a291af/55317946-aa71-40e8-ae59-1dbadfa3e061/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b85d2cc2-d0ea-4404-8492-f1b1f0a291af/55317946-aa71-40e8-ae59-1dbadfa3e061/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0408612    0.0327277   0.0489946
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0298785    0.0265757   0.0331814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0307377    0.0199085   0.0415669
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.0182232    0.0057064   0.0307401
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0231959    0.0082128   0.0381790
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0208729    0.0086629   0.0330828
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0205562    0.0108839   0.0302286
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0186457    0.0103388   0.0269526
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0068160    0.0017831   0.0118489
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1113604    0.1041675   0.1185533
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1089910    0.1007805   0.1172015
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0718002    0.0626002   0.0810002
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0810811    0.0483586   0.1138036
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0769231   -0.0043285   0.1581746
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0943396    0.0339904   0.1546888
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1254545    0.1048049   0.1461041
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0850575    0.0544578   0.1156572
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0632184    0.0371438   0.0892930
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1439394    0.0839775   0.2039013
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1836735    0.1209952   0.2463517
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0792079    0.0264698   0.1319460
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0313901    0.0084883   0.0542920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0422535    0.0152190   0.0692881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0250896    0.0067251   0.0434541
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0083102    0.0029023   0.0137182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0088652    0.0011273   0.0166032
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0134771    0.0017411   0.0252131
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0189534    0.0108867   0.0270200
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0133610    0.0082664   0.0184557
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0091524    0.0049725   0.0133323
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0470085    0.0359366   0.0580805
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0409635    0.0359905   0.0459365
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0251799    0.0121564   0.0382033
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1330049    0.0999552   0.1660546
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1171171    0.0825608   0.1516735
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1515152    0.0967762   0.2062541
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0488889    0.0289583   0.0688194
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0281330    0.0117374   0.0445286
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0202206    0.0083884   0.0320528
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0630027    0.0455641   0.0804413
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0517799    0.0375131   0.0660468
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0325477    0.0208939   0.0442015
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0896552    0.0567543   0.1225560
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0516605    0.0252916   0.0780294
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.0996016    0.0625310   0.1366722
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0712246    0.0644323   0.0780170
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0650568    0.0582270   0.0718865
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0345875    0.0289421   0.0402329
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0541625    0.0444423   0.0638827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0788177    0.0503980   0.1072375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0375723    0.0202677   0.0548768
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3617021    0.2239442   0.4994601
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3125000    0.0847388   0.5402612
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2807018    0.1979832   0.3634203
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1326531    0.0851248   0.1801813
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0893855    0.0475544   0.1312165
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0346535    0.0094091   0.0598978
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0694444    0.0278841   0.1110048
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0628931    0.0251212   0.1006649
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0710900    0.0363827   0.1057974
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1221719    0.0789525   0.1653914
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1242236    0.0732236   0.1752236
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0603448    0.0169678   0.1037219
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0211082    0.0002353   0.0419810
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0141243    0.0011297   0.0271189
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0095694   -0.0042112   0.0233499
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4461207    0.4008683   0.4913730
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4011299    0.3500473   0.4522126
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4293785    0.3564203   0.5023367
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2777778    0.2363794   0.3191762
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1483376    0.1130943   0.1835809
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1057514    0.0797807   0.1317221
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3988439    0.3623531   0.4353348
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3131068    0.2814353   0.3447783
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1553885    0.1302477   0.1805292
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.1133005    0.0696605   0.1569405
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1282051    0.0812405   0.1751698
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0982659    0.0538696   0.1426622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1905889    0.1762049   0.2049730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1564698    0.1416660   0.1712736
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0888889    0.0753943   0.1023835
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0820173    0.0667405   0.0972941
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1030151    0.0662505   0.1397796
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0720721    0.0410694   0.1030748


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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0593851   0.0553716   0.0633986
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0557174   0.0473621   0.0640727
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3050847   0.2370598   0.3731096
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1084337   0.0810981   0.1357694
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0161002   0.0033894   0.0288110
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4271357   0.3963844   0.4578870
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1739130   0.1539078   0.1939183
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2843561   0.2659721   0.3027401
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1138354   0.0877614   0.1399093
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1535030   0.1445839   0.1624220
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0838901   0.0710207   0.0967596


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7312207   0.5823257   0.9181868
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7522475   0.5019064   1.1274539
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               1.2728737   0.4957916   3.2679204
Birth       ki1135781-COHORTS          INDIA                          High                 Low               1.1453985   0.4646603   2.8234341
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9070600   0.4744831   1.7340087
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.3315768   0.1381425   0.7958680
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9787229   0.8876400   1.0791522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.6447552   0.5580007   0.7449977
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9487179   0.3062489   2.9390008
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1635220   0.5448621   2.4846352
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.6779943   0.4621932   0.9945545
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.5039147   0.3486174   0.7283917
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
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.7049429   0.5195169   0.9565513
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.4828907   0.2711969   0.8598308
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8714045   0.6685619   1.1357898
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.5356442   0.3034295   0.9455730
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8805472   0.5987189   1.2950374
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1391695   0.7347817   1.7661125
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.5754476   0.2825694   1.1718886
6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.4136029   0.2027029   0.8439317
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8218688   0.5561457   1.2145528
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5166082   0.3285596   0.8122848
6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               0.5762135   0.3073005   1.0804472
6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               1.1109409   0.6587108   1.8736439
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9134028   0.7948501   1.0496377
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.4856119   0.4032885   0.5847399
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.4552089   0.9682043   2.1871756
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.6936954   0.4212675   1.1422984
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8639706   0.3796276   1.9662564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7760578   0.4794663   1.2561169
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.6738290   0.3737493   1.2148395
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.2612338   0.1160005   0.5883002
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9056604   0.3879251   2.1143794
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               1.0236967   0.4728735   2.2161422
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0167932   0.5913872   1.7482088
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.4939336   0.2216828   1.1005380
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.6691384   0.2962476   1.5113919
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.4533493   0.0694725   2.9583719
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8991512   0.7640578   1.0581304
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9624717   0.7896696   1.1730878
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.5340153   0.4034133   0.7068988
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.3807050   0.2856475   0.5073956
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.7850359   0.6849448   0.8997532
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.3895972   0.3235143   0.4691785
24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1315496   0.6650014   1.9254164
24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.8673034   0.4789954   1.5704014
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.8209803   0.7303612   0.9228430
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.4663907   0.3940728   0.5519800
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.2560161   0.8386959   1.8809875
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8787421   0.5481310   1.4087649


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0090632   -0.0163136   -0.0018129
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.0024562   -0.0081540    0.0130665
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0055893   -0.0132974    0.0021188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0088847   -0.0141295   -0.0036398
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0009588   -0.0157106    0.0176283
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0294305   -0.0443036   -0.0145574
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0018341   -0.0501375    0.0464693
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0007777   -0.0183228    0.0198782
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0011050   -0.0028469    0.0050570
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0040957   -0.0076260   -0.0005654
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0060809   -0.0160106    0.0038489
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0024740   -0.0268455    0.0218976
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0171199   -0.0321025   -0.0021373
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0146407   -0.0286452   -0.0006363
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0096059   -0.0352592    0.0160474
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0118395   -0.0167458   -0.0069333
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0015549   -0.0039895    0.0070993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0566174   -0.1729201    0.0596854
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0477311   -0.0829806   -0.0124815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0013511   -0.0364885    0.0337863
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0137382   -0.0446782    0.0172018
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0050080   -0.0158396    0.0058236
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0189850   -0.0519021    0.0139321
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1038647   -0.1354294   -0.0723001
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1144878   -0.1440367   -0.0849390
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0005349   -0.0345389    0.0356087
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0370860   -0.0473589   -0.0268130
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0018728   -0.0060514    0.0097970


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.2850262   -0.5328241   -0.0772876
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.1187764   -0.5742366    0.5067101
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3734428   -0.9815609    0.0480509
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0867002   -0.1391857   -0.0366329
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0116874   -0.2139834    0.1954076
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.3064915   -0.4970549   -0.1401853
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0129068   -0.4167931    0.2758433
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0241763   -0.7930856    0.4689423
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1173640   -0.4148639    0.4493843
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2756625   -0.4754710   -0.1029122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1485755   -0.4181533    0.0697580
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0189530   -0.2238417    0.1516344
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.5388889   -1.0583609   -0.1505169
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3027329   -0.6219319   -0.0463528
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.1200000   -0.4897099    0.1579569
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1993691   -0.2838862   -0.1204156
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0279073   -0.0766675    0.1223249
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1855792   -0.6353420    0.1404868
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.5620575   -1.0117300   -0.2128982
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0198413   -0.6914616    0.3851021
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1266968   -0.4497416    0.1243641
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.3110525   -1.0248763    0.1511291
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0444473   -0.1244662    0.0298774
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.5972222   -0.7846117   -0.4295092
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.4026214   -0.5108844   -0.3021159
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0046988   -0.3564260    0.2696804
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.2415978   -0.3101474   -0.1766348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0223245   -0.0770084    0.1124959
