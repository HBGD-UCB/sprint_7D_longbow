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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        feducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       30     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        8     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       44     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1       10     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       44     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        8     144
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       46     123
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        4     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       30     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        5     123
Birth       ki0047075b-MAL-ED          INDIA                          High              0       32     123
Birth       ki0047075b-MAL-ED          INDIA                          High              1        6     123
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       17      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        2      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0       16      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        5      67
Birth       ki0047075b-MAL-ED          NEPAL                          High              0       26      67
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1      67
Birth       ki0047075b-MAL-ED          PERU                           Low               0       52     236
Birth       ki0047075b-MAL-ED          PERU                           Low               1       13     236
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       52     236
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        3     236
Birth       ki0047075b-MAL-ED          PERU                           High              0      106     236
Birth       ki0047075b-MAL-ED          PERU                           High              1       10     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       23      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        5      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       26     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        4     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       57     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        8     101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0       55     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1       24     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0       55     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0       31     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        3     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1      27
Birth       ki1119695-PROBIT           BELARUS                        Low               0     5299   13416
Birth       ki1119695-PROBIT           BELARUS                        Low               1       17   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6031   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium            1       11   13416
Birth       ki1119695-PROBIT           BELARUS                        High              0     2055   13416
Birth       ki1119695-PROBIT           BELARUS                        High              1        3   13416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2015   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      261   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     9179   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1     1029   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0      880   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1       96   13460
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      330     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       25     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      280     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       14     804
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      146     804
Birth       ki1135781-COHORTS          GUATEMALA                      High              1        9     804
Birth       ki1135781-COHORTS          INDIA                          Low               0      392    1354
Birth       ki1135781-COHORTS          INDIA                          Low               1       47    1354
Birth       ki1135781-COHORTS          INDIA                          Medium            0      354    1354
Birth       ki1135781-COHORTS          INDIA                          Medium            1       34    1354
Birth       ki1135781-COHORTS          INDIA                          High              0      479    1354
Birth       ki1135781-COHORTS          INDIA                          High              1       48    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      758    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       69    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      952    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       67    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0      990    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       37    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0    11176   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     5760   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8698   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     4404   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     5710   37726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1     1978   37726
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      468     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1      198     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       96     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       34     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0       70     902
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1       36     902
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       29     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        7     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       39     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        7     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       44     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        6     132
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       43     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               1       11     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       36     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        5     138
6 months    ki0047075b-MAL-ED          INDIA                          High              0       37     138
6 months    ki0047075b-MAL-ED          INDIA                          High              1        6     138
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       26      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        1      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       24      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        4      95
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0      95
6 months    ki0047075b-MAL-ED          PERU                           Low               0       46     224
6 months    ki0047075b-MAL-ED          PERU                           Low               1       14     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       47     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            1       10     224
6 months    ki0047075b-MAL-ED          PERU                           High              0       85     224
6 months    ki0047075b-MAL-ED          PERU                           High              1       22     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       30      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        5      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       20      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        4      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       29      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        4      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       44     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       11     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       11     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        8     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      101     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       26     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      356    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1      194    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      326    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1      109    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      273    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1       75    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0       72     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       60     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       78     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       69     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       67     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1       34     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      156     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       45     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      151     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       28     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      182     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1       21     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      172     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       51     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      158     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       55     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      235     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1       44     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0      963    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1      120    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      514    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       50    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      346    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      366    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1      120    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      288    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       78    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      232    1124
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       40    1124
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5505   15211
6 months    ki1119695-PROBIT           BELARUS                        Low               1      457   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     6360   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium            1      376   15211
6 months    ki1119695-PROBIT           BELARUS                        High              0     2413   15211
6 months    ki1119695-PROBIT           BELARUS                        High              1      100   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1109    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      295    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     5152    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      951    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      475    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       81    8063
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      239     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1      167     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      199     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1      134     904
6 months    ki1135781-COHORTS          GUATEMALA                      High              0       99     904
6 months    ki1135781-COHORTS          GUATEMALA                      High              1       66     904
6 months    ki1135781-COHORTS          INDIA                          Low               0      334    1385
6 months    ki1135781-COHORTS          INDIA                          Low               1      116    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            0      327    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            1       64    1385
6 months    ki1135781-COHORTS          INDIA                          High              0      484    1385
6 months    ki1135781-COHORTS          INDIA                          High              1       60    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      544    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1      202    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      725    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1      202    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0      753    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1      138    2564
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      183     812
6 months    ki1148112-LCNI-5           MALAWI                         Low               1      107     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      168     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1      103     812
6 months    ki1148112-LCNI-5           MALAWI                         High              0      166     812
6 months    ki1148112-LCNI-5           MALAWI                         High              1       85     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     8971   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1     3626   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8143   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2943   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     7076   32222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1     1463   32222
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     2923    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      980    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      588    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      209    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0      522    5371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1      149    5371
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       21     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1       14     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       20     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1       22     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       28     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1       12     117
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       28     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               1       23     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       20     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       19     132
24 months   ki0047075b-MAL-ED          INDIA                          High              0       29     132
24 months   ki0047075b-MAL-ED          INDIA                          High              1       13     132
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       20      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        7      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       19      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        7      91
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       31      91
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        7      91
24 months   ki0047075b-MAL-ED          PERU                           Low               0       26     164
24 months   ki0047075b-MAL-ED          PERU                           Low               1       18     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       28     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            1       15     164
24 months   ki0047075b-MAL-ED          PERU                           High              0       47     164
24 months   ki0047075b-MAL-ED          PERU                           High              1       30     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       11      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       11      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       12      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1       11      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       12     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       35     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        4     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       12     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       38     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       76     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      106     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       90     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      112     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       67     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      169     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       33     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       91     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       53     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      112     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       47     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      179     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       32     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      238     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      204     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      160     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1      162     996
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      152     996
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       80     996
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1371    3913
24 months   ki1119695-PROBIT           BELARUS                        Low               1      145    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1626    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium            1      144    3913
24 months   ki1119695-PROBIT           BELARUS                        High              0      585    3913
24 months   ki1119695-PROBIT           BELARUS                        High              1       42    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0       27     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       78     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      117     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      193     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       13     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1        6     434
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      100     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1      364     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0       76     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1      278     995
24 months   ki1135781-COHORTS          GUATEMALA                      High              0       35     995
24 months   ki1135781-COHORTS          GUATEMALA                      High              1      142     995
24 months   ki1135781-COHORTS          INDIA                          Low               0      163    1380
24 months   ki1135781-COHORTS          INDIA                          Low               1      287    1380
24 months   ki1135781-COHORTS          INDIA                          Medium            0      208    1380
24 months   ki1135781-COHORTS          INDIA                          Medium            1      183    1380
24 months   ki1135781-COHORTS          INDIA                          High              0      373    1380
24 months   ki1135781-COHORTS          INDIA                          High              1      166    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      166    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      526    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      285    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      539    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      425    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      373    2314
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      122     571
24 months   ki1148112-LCNI-5           MALAWI                         Low               1       81     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      104     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       91     571
24 months   ki1148112-LCNI-5           MALAWI                         High              0       96     571
24 months   ki1148112-LCNI-5           MALAWI                         High              1       77     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     3019   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     3723   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     2817   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2863   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     2627   16549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1     1500   16549
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     2371    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1     1466    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      439    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      336    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      408    5259
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      239    5259


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ad94b7f3-341c-4e05-84ea-44bc447195aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad94b7f3-341c-4e05-84ea-44bc447195aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad94b7f3-341c-4e05-84ea-44bc447195aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad94b7f3-341c-4e05-84ea-44bc447195aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2105263   0.0804520   0.3406006
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1851852   0.0812178   0.2891525
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1538462   0.0554388   0.2522535
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1146749   0.1015841   0.1277656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1008033   0.0949627   0.1066439
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0983607   0.0796768   0.1170445
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0704225   0.0437906   0.0970545
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0476190   0.0232611   0.0719770
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0580645   0.0212246   0.0949044
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1070615   0.0781278   0.1359952
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0876289   0.0594838   0.1157739
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0910816   0.0665073   0.1156559
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0834341   0.0645835   0.1022847
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0657507   0.0505306   0.0809709
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0360273   0.0246277   0.0474268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3401039   0.3293332   0.3508747
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3361319   0.3235616   0.3487022
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2572841   0.2423793   0.2721889
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2972973   0.2435140   0.3510806
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2615385   0.1492990   0.3737780
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3396226   0.1961323   0.4831129
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1944444   0.0646687   0.3242202
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1521739   0.0479796   0.2563682
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1200000   0.0295838   0.2104162
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2037037   0.0958917   0.3115157
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1219512   0.0214230   0.2224794
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1395349   0.0355905   0.2434793
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2333333   0.1260738   0.3405928
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1754386   0.0764794   0.2743978
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2056075   0.1288599   0.2823551
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2000000   0.0940235   0.3059765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4210526   0.1984952   0.6436100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2047244   0.1343730   0.2750758
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3527273   0.3170926   0.3883619
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2505747   0.1962864   0.3048630
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2155172   0.1572413   0.2737932
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4545455   0.3694902   0.5396007
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4693878   0.3886055   0.5501700
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3366337   0.2443521   0.4289153
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2238806   0.1662046   0.2815566
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1564246   0.1031636   0.2096855
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1034483   0.0615185   0.1453780
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2286996   0.1735370   0.2838621
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2582160   0.1994004   0.3170316
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1577061   0.1149098   0.2005024
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1108033   0.0921044   0.1295023
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0886525   0.0651884   0.1121166
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0673854   0.0418700   0.0929009
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2469136   0.1926477   0.3011794
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2131148   0.1537304   0.2724991
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1470588   0.0874829   0.2066347
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0766521   0.0599425   0.0933617
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0558195   0.0425396   0.0690994
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0397931   0.0287446   0.0508416
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2101140   0.1888031   0.2314248
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1558250   0.1467251   0.1649249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1456835   0.1163575   0.1750094
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4113300   0.3634388   0.4592213
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4024024   0.3497036   0.4551012
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4000000   0.3252085   0.4747915
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2577778   0.2173492   0.2982063
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1636829   0.1269966   0.2003691
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1102941   0.0839608   0.1366274
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2707775   0.2388842   0.3026708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2179072   0.1913270   0.2444874
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1548822   0.1311218   0.1786425
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3689655   0.3133961   0.4245350
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3800738   0.3222462   0.4379014
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3386454   0.2800628   0.3972280
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2878463   0.2751394   0.3005532
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2654700   0.2528077   0.2781323
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1713315   0.1586574   0.1840057
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2510889   0.2282589   0.2739189
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2622334   0.2171115   0.3073553
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2220566   0.1671086   0.2770047
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4000000   0.2370015   0.5629985
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.5238095   0.3721169   0.6755021
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3000000   0.1573763   0.4426237
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4509804   0.3138963   0.5880645
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4871795   0.3297108   0.6446482
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3095238   0.1691791   0.4498686
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2592593   0.0930459   0.4254726
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2692308   0.0977903   0.4406712
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1842105   0.0602732   0.3081478
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4090909   0.2633706   0.5548112
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3488372   0.2059484   0.4917260
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3896104   0.2803533   0.4988675
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3235294   0.1654085   0.4816504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5217391   0.3164610   0.7270173
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3235294   0.1654085   0.4816504
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4591837   0.3893580   0.5290093
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3743017   0.3033453   0.4452581
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1633663   0.1123396   0.2143931
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3680556   0.2892084   0.4469027
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2955975   0.2246016   0.3665934
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1516588   0.1032138   0.2001037
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4615385   0.3957470   0.5273300
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5031056   0.4257960   0.5804152
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3448276   0.2582442   0.4314109
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0956464   0.0579684   0.1333245
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0813559   0.0465173   0.1161945
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0669856   0.0381010   0.0958703
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7428571   0.6591632   0.8265511
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6225806   0.5685577   0.6766036
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3157895   0.1065393   0.5250397
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7844828   0.7470510   0.8219145
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7853107   0.7425160   0.8281055
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8022599   0.7435536   0.8609662
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.6377778   0.5933534   0.6822022
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.4680307   0.4185543   0.5175070
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3079777   0.2689897   0.3469657
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7601156   0.7282934   0.7919378
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6541262   0.6216423   0.6866101
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.4674185   0.4327938   0.5020433
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3990148   0.3315919   0.4664376
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4666667   0.3965834   0.5367499
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4450867   0.3709658   0.5192076
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5522100   0.5327307   0.5716894
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5040493   0.4834805   0.5246181
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3634601   0.3385840   0.3883363
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3820693   0.3550701   0.4090686
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4335484   0.3716019   0.4954948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3693972   0.3088069   0.4299875


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1805556   0.1175113   0.2435998
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1029718   0.0978372   0.1081063
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0597015   0.0433139   0.0760891
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0952733   0.0796294   0.1109171
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0602158   0.0515157   0.0689159
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3218470   0.3140700   0.3296240
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2971175   0.2506806   0.3435544
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1515152   0.0901160   0.2129143
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1594203   0.0981219   0.2207187
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2053571   0.1523375   0.2583768
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2238806   0.1661102   0.2816510
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0966303   0.0837364   0.1095242
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2117438   0.1779368   0.2455507
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0613372   0.0479409   0.0747335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1645789   0.1564849   0.1726730
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4059735   0.3739435   0.4380034
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1732852   0.1533446   0.1932258
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113885   0.1955816   0.2271953
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3633005   0.3301997   0.3964012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2492707   0.2410138   0.2575276
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2491156   0.2297596   0.2684716
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4102564   0.3207450   0.4997678
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4166667   0.3322428   0.5010905
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2307692   0.1437242   0.3178143
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3841463   0.3094772   0.4588155
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3736264   0.2736811   0.4735717
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4477912   0.4040733   0.4915091
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0845898   0.0544909   0.1146887
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6382488   0.5929899   0.6835078
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7879397   0.7625282   0.8133512
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4608696   0.4345607   0.4871784
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6214347   0.6016683   0.6412012
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4360771   0.3953670   0.4767872
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4886096   0.4753690   0.5018502
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3880966   0.3646676   0.4115256


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8796296   0.3817142   2.0270354
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7307692   0.3002984   1.7783099
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8790356   0.7734088   0.9990882
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8577351   0.6872375   1.0705316
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.6761905   0.3579318   1.2774321
Birth       ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8245161   0.3939310   1.7257513
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               0.8184909   0.5379173   1.2454094
Birth       ki1135781-COHORTS          INDIA                          High                 Low               0.8507408   0.5806967   1.2463648
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.7880559   0.5702663   1.0890214
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.4318050   0.2927083   0.6370014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9883211   0.9443516   1.0343378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7564867   0.7082512   0.8080073
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.8797203   0.5527134   1.4001973
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.1423671   0.7231340   1.8046483
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.7826087   0.3008040   2.0361313
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6171429   0.2255498   1.6886084
6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.5986696   0.2247749   1.5945080
6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.6849894   0.2746771   1.7082256
6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               0.7518797   0.3631884   1.5565560
6 months    ki0047075b-MAL-ED          PERU                           High                 Low               0.8811749   0.4874104   1.5930502
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               2.1052632   0.9960061   4.4499056
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               1.0236220   0.5443247   1.9249579
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7103922   0.5379542   0.9381042
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.6110025   0.4586408   0.8139791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0326531   0.8008355   1.3315747
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7405941   0.5314164   1.0321088
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.6986965   0.4558889   1.0708239
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.4620690   0.2858453   0.7469345
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               1.1290620   0.8102877   1.5732447
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6895776   0.4796285   0.9914285
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8000887   0.5845396   1.0951215
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.6081536   0.4017679   0.9205586
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8631148   0.6052594   1.2308229
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.5955882   0.3756502   0.9442970
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.7282182   0.6133547   0.8645923
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.5191386   0.4198967   0.6418362
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7416214   0.6597115   0.8337011
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6933545   0.5534294   0.8686572
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9782957   0.8210456   1.1656628
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.9724551   0.7802060   1.2120759
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.6349766   0.4830087   0.8347579
6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.4278651   0.3215486   0.5693340
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8047465   0.6792321   0.9534545
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5719905   0.4714024   0.6940422
6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0301066   0.8315847   1.2760210
6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.9178240   0.7297043   1.1544415
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9222629   0.8685763   0.9792677
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.5952188   0.5463712   0.6484336
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0443846   0.8592568   1.2693983
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8843745   0.6814608   1.1477084
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.3095238   0.7943311   2.1588637
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.7500000   0.4009827   1.4028038
24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               1.0802676   0.6931606   1.6835608
24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.6863354   0.3976147   1.1847054
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.0384615   0.4206863   2.5634357
24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.7105263   0.2805243   1.7996576
24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.8527132   0.4955120   1.4674110
24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.9523810   0.6052373   1.4986344
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.6126482   0.8610943   3.0201504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.0000000   0.5009850   1.9960679
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8151459   0.6392806   1.0393915
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.3557756   0.2513647   0.5035562
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.8031328   0.5821246   1.1080485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4120540   0.2804895   0.6053292
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0900621   0.8839393   1.3442501
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7471264   0.5597560   0.9972166
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8505903   0.6169079   1.1727908
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.7003465   0.4401740   1.1142984
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8380893   0.7269935   0.9661623
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.4251012   0.2170639   0.8325246
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0010554   0.9311110   1.0762540
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0226610   0.9371139   1.1160174
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7338460   0.6465835   0.8328855
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.4828919   0.4179248   0.5579583
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8605615   0.8064428   0.9183120
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6149309   0.5647717   0.6695448
24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1695473   0.9329081   1.4662118
24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               1.1154642   0.8798769   1.4141300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9127855   0.8669602   0.9610330
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.6581919   0.6104876   0.7096238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1347375   0.9688843   1.3289813
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9668330   0.8108583   1.1528106


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0299708   -0.1393520    0.0794105
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0117031   -0.0235258    0.0001196
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0107210   -0.0294688    0.0080267
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.0117882   -0.0350053    0.0114289
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0232183   -0.0382670   -0.0081696
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0182569   -0.0259101   -0.0106038
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0001798   -0.0274730    0.0271135
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0429293   -0.1498180    0.0639594
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0442834   -0.1235572    0.0349903
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0279762   -0.1182674    0.0623150
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0238806   -0.0678915    0.1156527
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0691564   -0.1010932   -0.0372195
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0255981   -0.0940902    0.0428940
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0626456   -0.1065249   -0.0187663
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0189093   -0.0640395    0.0262208
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0141730   -0.0260309   -0.0023151
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0351698   -0.0744271    0.0040875
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0153149   -0.0215575   -0.0090723
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0455350   -0.0645483   -0.0265217
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0053566   -0.0408437    0.0301305
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0844926   -0.1156372   -0.0533480
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0593890   -0.0853725   -0.0334056
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0056650   -0.0501390    0.0388090
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0385756   -0.0477244   -0.0294268
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0019733   -0.0133123    0.0093657
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0102564   -0.1264371    0.1469499
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0343137   -0.1410766    0.0724491
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0284900   -0.1656387    0.1086586
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0249446   -0.1491050    0.0992159
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0500970   -0.0776070    0.1778009
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.1298942   -0.1849958   -0.0747927
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1112462   -0.1757650   -0.0467274
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0137473   -0.0627166    0.0352220
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0110566   -0.0278573    0.0057441
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1046083   -0.1798658   -0.0293508
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0034569   -0.0237477    0.0306616
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1769082   -0.2140377   -0.1397787
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1386809   -0.1669244   -0.1104373
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0370623   -0.0174438    0.0915683
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0636004   -0.0779604   -0.0492405
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0060273   -0.0076634    0.0197180


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1659919   -0.9581021    0.3056863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1136535   -0.2344805   -0.0046526
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1795775   -0.5350620    0.0935852
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.1237308   -0.3950576    0.0948252
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3855848   -0.6532850   -0.1612306
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0567255   -0.0808500   -0.0331394
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0006051   -0.0968143    0.0871649
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2833333   -1.2149204    0.2564318
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.2777778   -0.8769170    0.1301075
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1362319   -0.6722471    0.2279712
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1066667   -0.4127857    0.4351270
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.2438769   -0.3639690   -0.1343583
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0596765   -0.2321127    0.0886270
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3885360   -0.6837452   -0.1450855
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0901345   -0.3277517    0.1049582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1466723   -0.2748767   -0.0313605
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1660961   -0.3662160    0.0047108
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2496844   -0.3499301   -0.1568829
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.2766759   -0.3971543   -0.1665864
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0131945   -0.1044909    0.0705555
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.4875926   -0.6748810   -0.3212471
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2809473   -0.4093357   -0.1642550
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0155932   -0.1456947    0.0997343
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1547540   -0.1920795   -0.1185972
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0079212   -0.0544596    0.0365633
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0250000   -0.3722233    0.3072374
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0823529   -0.3718311    0.1460407
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1234568   -0.9057635    0.3377168
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0649351   -0.4426666    0.2138955
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1340830   -0.2850876    0.4165284
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3944683   -0.5748707   -0.2347312
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.4331860   -0.7076917   -0.2028062
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0307002   -0.1461006    0.0730805
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1307085   -0.3415706    0.0470112
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1638989   -0.2899473   -0.0501675
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0043873   -0.0307466    0.0383237
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.3838574   -0.4710295   -0.3018511
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2231624   -0.2711716   -0.1769664
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0849902   -0.0490608    0.2019119
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1301662   -0.1601773   -0.1009314
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0155303   -0.0203876    0.0501840
