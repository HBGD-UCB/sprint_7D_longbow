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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c10171df-9148-48f3-ad2b-cd6459316e1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c10171df-9148-48f3-ad2b-cd6459316e1e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c10171df-9148-48f3-ad2b-cd6459316e1e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c10171df-9148-48f3-ad2b-cd6459316e1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2105263   0.0804520   0.3406006
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1851852   0.0812178   0.2891525
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1538462   0.0554388   0.2522535
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0996349   0.0935737   0.1056962
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1032356   0.0980245   0.1084468
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0992058   0.0924215   0.1059900
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0704225   0.0437906   0.0970545
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0476190   0.0232611   0.0719770
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0580645   0.0212246   0.0949044
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1028919   0.0770805   0.1287034
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0815864   0.0570025   0.1061703
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0855333   0.0635266   0.1075400
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0744955   0.0587374   0.0902536
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0680638   0.0539563   0.0821713
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0427056   0.0320297   0.0533815
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3222195   0.3141595   0.3302795
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3237088   0.3153019   0.3321157
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3196284   0.3110046   0.3282523
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2956521   0.2487026   0.3426016
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2895151   0.2369052   0.3421250
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3108330   0.2574755   0.3641906
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1944444   0.0646687   0.3242202
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1521739   0.0479796   0.2563682
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1200000   0.0295838   0.2104162
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2037037   0.0958917   0.3115157
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1219512   0.0214230   0.2224794
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1395349   0.0355905   0.2434793
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2210544   0.1172268   0.3248820
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1482170   0.0595848   0.2368492
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.1957977   0.1214798   0.2701156
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2000000   0.0940235   0.3059765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4210526   0.1984952   0.6436100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2047244   0.1343730   0.2750758
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3288892   0.2989784   0.3588000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2465307   0.2070590   0.2860024
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2612328   0.2145057   0.3079599
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4507506   0.3672844   0.5342168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4780948   0.3997993   0.5563904
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3304996   0.2419868   0.4190123
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2035130   0.1531683   0.2538578
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1436938   0.0967344   0.1906532
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1012330   0.0640913   0.1383746
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2044658   0.1587764   0.2501552
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2018244   0.1560118   0.2476370
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1665457   0.1293514   0.2037400
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1108865   0.0925951   0.1291778
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0950448   0.0726617   0.1174280
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0750424   0.0511715   0.0989132
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2677343   0.2181189   0.3173498
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2165998   0.1645106   0.2686889
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1481109   0.0978958   0.1983261
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0716743   0.0558938   0.0874547
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0552089   0.0427849   0.0676329
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0403249   0.0302776   0.0503722
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1998755   0.1825264   0.2172246
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1577028   0.1489147   0.1664909
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1482680   0.1286775   0.1678585
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3989672   0.3629486   0.4349857
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4396397   0.4016134   0.4776660
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3355095   0.2981301   0.3728888
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2153707   0.1837549   0.2469866
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1546115   0.1252719   0.1839511
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1161120   0.0935250   0.1386991
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2399668   0.2151692   0.2647645
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2108785   0.1885667   0.2331904
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1768250   0.1567347   0.1969153
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3345890   0.2829850   0.3861930
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3569738   0.3031302   0.4108173
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3011167   0.2473986   0.3548348
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2656416   0.2546825   0.2766007
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2487519   0.2376946   0.2598091
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2253771   0.2128025   0.2379516
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2511437   0.2292282   0.2730591
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2349474   0.1997473   0.2701475
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2025080   0.1578764   0.2471396
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3728510   0.2278213   0.5178807
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.5215269   0.3810852   0.6619686
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3250280   0.1959765   0.4540795
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4704489   0.3371346   0.6037632
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4831056   0.3295894   0.6366217
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2926222   0.1549870   0.4302573
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2592593   0.0930459   0.4254726
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2692308   0.0977903   0.4406712
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1842105   0.0602732   0.3081478
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4384223   0.3064464   0.5703982
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3619664   0.2328677   0.4910651
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3946413   0.2915720   0.4977107
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3608049   0.2157906   0.5058192
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.6344478   0.4608860   0.8080096
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3631076   0.2196293   0.5065859
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4283714   0.3661884   0.4905543
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3474816   0.2852933   0.4096698
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1722024   0.1253553   0.2190494
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3768548   0.3057568   0.4479528
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2870137   0.2237581   0.3502693
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1557882   0.1110585   0.2005179
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4619769   0.4027809   0.5211728
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4837740   0.4168645   0.5506835
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3281547   0.2583440   0.3979654
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0932775   0.0593796   0.1271755
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0815307   0.0474919   0.1155696
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0696578   0.0441389   0.0951766
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7428571   0.6591632   0.8265511
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6225806   0.5685577   0.6766036
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3157895   0.1065393   0.5250397
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7753612   0.7410308   0.8096917
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7957859   0.7588821   0.8326898
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7805155   0.7339290   0.8271019
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.5893142   0.5551246   0.6235037
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.4633040   0.4249132   0.5016947
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3400169   0.3075200   0.3725138
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7363184   0.7097570   0.7628797
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6572276   0.6301094   0.6843458
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5182496   0.4900309   0.5464683
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3948949   0.3328603   0.4569295
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4623360   0.3978347   0.5268374
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4523548   0.3840538   0.5206559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5138792   0.4970022   0.5307563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4958687   0.4784592   0.5132783
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4487963   0.4295407   0.4680518
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3826621   0.3563599   0.4089644
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3829260   0.3300028   0.4358493
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3340191   0.2806779   0.3873603


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0361391   0.9940896   1.0799672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9956928   0.9365622   1.0585567
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.6761905   0.3579318   1.2774321
Birth       ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8245161   0.3939310   1.7257513
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               0.7929332   0.5389942   1.1665118
Birth       ki1135781-COHORTS          INDIA                          High                 Low               0.8312924   0.5836498   1.1840096
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9136639   0.6849898   1.2186776
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.5732641   0.4159383   0.7900975
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0046219   0.9908005   1.0186361
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9919586   0.9752700   1.0089328
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9792426   0.8760757   1.0945583
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0513473   0.9455022   1.1690413
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.7826087   0.3008040   2.0361313
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6171429   0.2255498   1.6886084
6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.5986696   0.2247749   1.5945080
6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.6849894   0.2746771   1.7082256
6 months    ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Medium               Low               0.6705001   0.3134241   1.4343838
6 months    ki0047075b-MAL-ED          PERU                           High                 Low               0.8857443   0.4839700   1.6210573
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               Low               2.1052632   0.9960061   4.4499056
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 Low               1.0236220   0.5443247   1.9249579
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7495859   0.6220704   0.9032403
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.7942882   0.6439645   0.9797025
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0606638   0.8312939   1.3533214
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.7332205   0.5317877   1.0109529
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.7060670   0.4710478   1.0583441
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.4974274   0.3204557   0.7721318
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.9870813   0.7285335   1.3373847
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8145405   0.6025478   1.1011180
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               0.8571364   0.6444843   1.1399545
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.6767494   0.4739689   0.9662865
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8090101   0.5974979   1.0953969
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.5532011   0.3760144   0.8138822
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.7702754   0.6507711   0.9117250
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.5626134   0.4629804   0.6836874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7890051   0.7140428   0.8718372
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.7418018   0.6347056   0.8669687
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.1019446   0.9894227   1.2272630
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               0.8409450   0.7405205   0.9549885
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               0.7178855   0.5697115   0.9045973
6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.5391264   0.4261853   0.6819973
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8787820   0.7626150   1.0126445
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7368728   0.6358954   0.8538850
6 months    ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0669022   0.8610368   1.3219880
6 months    ki1148112-LCNI-5           MALAWI                         High                 Low               0.8999599   0.7121271   1.1373360
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9364191   0.8904507   0.9847605
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8484252   0.7973408   0.9027825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9355097   0.7910476   1.1063537
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8063432   0.6431453   1.0109524
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               1.3987542   0.8870172   2.2057219
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.8717370   0.5150616   1.4754068
24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               1.0269034   0.6750406   1.5621736
24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.6220063   0.3615340   1.0701395
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               1.0384615   0.4206863   2.5634357
24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.7105263   0.2805243   1.7996576
24 months   ki0047075b-MAL-ED          PERU                           Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Medium               Low               0.8256113   0.5188010   1.3138642
24 months   ki0047075b-MAL-ED          PERU                           High                 Low               0.9001398   0.6061568   1.3367030
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.7584233   1.0801845   2.8625228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               1.0063821   0.5726724   1.7685589
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8111690   0.6462857   1.0181181
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.4019932   0.2957874   0.5463333
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.7616029   0.5709619   1.0158979
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4133905   0.2940774   0.5811114
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0471824   0.8685384   1.2625704
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7103272   0.5548078   0.9094405
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8740662   0.6493032   1.1766332
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.7467797   0.5078056   1.0982153
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.8380893   0.7269935   0.9661623
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.4251012   0.2170639   0.8325246
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0263422   0.9645733   1.0920666
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0066475   0.9362881   1.0822942
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.7861749   0.7143096   0.8652704
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.5769706   0.5185482   0.6419751
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8925862   0.8466658   0.9409972
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7038390   0.6606652   0.7498342
24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1707825   0.9562913   1.4333831
24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               1.1455070   0.9284328   1.4133345
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9649519   0.9261483   1.0053814
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8733497   0.8318847   0.9168815
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0006896   0.8628446   1.1605562
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8728825   0.7388648   1.0312087


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0299708   -0.1393520    0.0794105
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0033368   -0.0001599    0.0068336
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0107210   -0.0294688    0.0080267
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.0076187   -0.0279951    0.0127577
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0142797   -0.0265606   -0.0019988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0003725   -0.0027128    0.0019677
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0014654   -0.0061808    0.0091117
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0429293   -0.1498180    0.0639594
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0442834   -0.1235572    0.0349903
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0156973   -0.1033223    0.0719277
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0238806   -0.0678915    0.1156527
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0453183   -0.0696525   -0.0209841
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0218032   -0.0878393    0.0442329
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0422780   -0.0797359   -0.0048202
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0053244   -0.0301754    0.0408242
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0142562   -0.0256700   -0.0028423
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0559905   -0.0923985   -0.0195826
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0103371   -0.0159626   -0.0047116
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0352966   -0.0508661   -0.0197270
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0070063   -0.0172964    0.0313090
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.0420855   -0.0651017   -0.0190694
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0285784   -0.0484218   -0.0087349
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0287115   -0.0123574    0.0697804
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0163709   -0.0236781   -0.0090637
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0020281   -0.0117267    0.0076706
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0374054   -0.0791870    0.1539979
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0537822   -0.1564475    0.0488830
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0284900   -0.1656387    0.1086586
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0542759   -0.1661750    0.0576231
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0128215   -0.1051062    0.1307492
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0990819   -0.1471191   -0.0510448
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1200455   -0.1776303   -0.0624606
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0141857   -0.0585529    0.0301815
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0086877   -0.0224115    0.0050361
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1046083   -0.1798658   -0.0293508
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0125785   -0.0115975    0.0367544
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.1284446   -0.1561159   -0.1007733
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1148836   -0.1384775   -0.0912897
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0411822   -0.0072863    0.0896506
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0252696   -0.0365076   -0.0140317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0054345   -0.0066969    0.0175658


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1659919   -0.9581021    0.3056863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0324054   -0.0021093    0.0657313
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1795775   -0.5350620    0.0935852
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.0799665   -0.3168202    0.1142848
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2371415   -0.4581338   -0.0496424
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0011575   -0.0084560    0.0060882
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0049321   -0.0211384    0.0303371
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2833333   -1.2149204    0.2564318
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.2777778   -0.8769170    0.1301075
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0764389   -0.5998402    0.2757272
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1066667   -0.4127857    0.4351270
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1598130   -0.2497693   -0.0763316
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0508296   -0.2166305    0.0923762
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2622137   -0.5171608   -0.0501085
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                 0.0253797   -0.1593290    0.1806599
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.1475330   -0.2709399   -0.0361089
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.2644259   -0.4546011   -0.0991143
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1685288   -0.2618924   -0.0820728
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.2144659   -0.3137955   -0.1226461
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0172580   -0.0441848    0.0750853
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.2428686   -0.3838719   -0.1162321
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1351936   -0.2341443   -0.0441765
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0790296   -0.0411467    0.1853342
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0656753   -0.0955066   -0.0366564
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0081411   -0.0478200    0.0300353
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                 0.0911757   -0.2426763    0.3353365
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1290774   -0.4059528    0.0932727
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1234568   -0.9057635    0.3377168
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -0.1412897   -0.4762337    0.1176585
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0343163   -0.3376413    0.3028437
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3008962   -0.4590315   -0.1599002
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.4674497   -0.7162502   -0.2547173
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0316793   -0.1360553    0.0631071
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1027040   -0.2794376    0.0496168
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.1638989   -0.2899473   -0.0501675
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0159637   -0.0151842    0.0461560
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.2787005   -0.3454798   -0.2152357
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1848684   -0.2254456   -0.1456347
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.0944379   -0.0238131    0.1990308
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0517174   -0.0750946   -0.0288486
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0140028   -0.0177618    0.0447761
