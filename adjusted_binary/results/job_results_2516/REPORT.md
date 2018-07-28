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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4                0       44     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4                1        8     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1                0       24     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1                1        5     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2                0        6     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2                1        3     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3                0       44     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3                1       10     144
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                0       44     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                1        6     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                0       24     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                1        5     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                0        5     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                1        2     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                0       39     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                1        7     132
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                0       28     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                1       12     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                0       17     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                1       12     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                0        4     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                1        2     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                0       20     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                1       22     117
Birth       ki0047075b-MAL-ED          INDIA                          Q4                0       32     123
Birth       ki0047075b-MAL-ED          INDIA                          Q4                1        6     123
Birth       ki0047075b-MAL-ED          INDIA                          Q1                0       20     123
Birth       ki0047075b-MAL-ED          INDIA                          Q1                1        1     123
Birth       ki0047075b-MAL-ED          INDIA                          Q2                0       33     123
Birth       ki0047075b-MAL-ED          INDIA                          Q2                1        4     123
Birth       ki0047075b-MAL-ED          INDIA                          Q3                0       23     123
Birth       ki0047075b-MAL-ED          INDIA                          Q3                1        4     123
6 months    ki0047075b-MAL-ED          INDIA                          Q4                0       37     138
6 months    ki0047075b-MAL-ED          INDIA                          Q4                1        6     138
6 months    ki0047075b-MAL-ED          INDIA                          Q1                0       17     138
6 months    ki0047075b-MAL-ED          INDIA                          Q1                1        4     138
6 months    ki0047075b-MAL-ED          INDIA                          Q2                0       35     138
6 months    ki0047075b-MAL-ED          INDIA                          Q2                1        9     138
6 months    ki0047075b-MAL-ED          INDIA                          Q3                0       27     138
6 months    ki0047075b-MAL-ED          INDIA                          Q3                1        3     138
24 months   ki0047075b-MAL-ED          INDIA                          Q4                0       29     132
24 months   ki0047075b-MAL-ED          INDIA                          Q4                1       13     132
24 months   ki0047075b-MAL-ED          INDIA                          Q1                0       11     132
24 months   ki0047075b-MAL-ED          INDIA                          Q1                1        9     132
24 months   ki0047075b-MAL-ED          INDIA                          Q2                0       22     132
24 months   ki0047075b-MAL-ED          INDIA                          Q2                1       19     132
24 months   ki0047075b-MAL-ED          INDIA                          Q3                0       15     132
24 months   ki0047075b-MAL-ED          INDIA                          Q3                1       14     132
6 months    ki0047075b-MAL-ED          NEPAL                          Q4                0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          Q4                1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Q1                0       22      95
6 months    ki0047075b-MAL-ED          NEPAL                          Q1                1        1      95
6 months    ki0047075b-MAL-ED          NEPAL                          Q2                0       21      95
6 months    ki0047075b-MAL-ED          NEPAL                          Q2                1        4      95
6 months    ki0047075b-MAL-ED          NEPAL                          Q3                0        7      95
6 months    ki0047075b-MAL-ED          NEPAL                          Q3                1        0      95
24 months   ki0047075b-MAL-ED          NEPAL                          Q4                0       31      91
24 months   ki0047075b-MAL-ED          NEPAL                          Q4                1        7      91
24 months   ki0047075b-MAL-ED          NEPAL                          Q1                0       17      91
24 months   ki0047075b-MAL-ED          NEPAL                          Q1                1        6      91
24 months   ki0047075b-MAL-ED          NEPAL                          Q2                0       17      91
24 months   ki0047075b-MAL-ED          NEPAL                          Q2                1        6      91
24 months   ki0047075b-MAL-ED          NEPAL                          Q3                0        5      91
24 months   ki0047075b-MAL-ED          NEPAL                          Q3                1        2      91
Birth       ki0047075b-MAL-ED          NEPAL                          Q4                0       26      67
Birth       ki0047075b-MAL-ED          NEPAL                          Q4                1        1      67
Birth       ki0047075b-MAL-ED          NEPAL                          Q1                0       16      67
Birth       ki0047075b-MAL-ED          NEPAL                          Q1                1        2      67
Birth       ki0047075b-MAL-ED          NEPAL                          Q2                0       13      67
Birth       ki0047075b-MAL-ED          NEPAL                          Q2                1        4      67
Birth       ki0047075b-MAL-ED          NEPAL                          Q3                0        4      67
Birth       ki0047075b-MAL-ED          NEPAL                          Q3                1        1      67
Birth       ki0047075b-MAL-ED          PERU                           Q4                0      106     236
Birth       ki0047075b-MAL-ED          PERU                           Q4                1       10     236
Birth       ki0047075b-MAL-ED          PERU                           Q1                0       37     236
Birth       ki0047075b-MAL-ED          PERU                           Q1                1       10     236
Birth       ki0047075b-MAL-ED          PERU                           Q2                0       56     236
Birth       ki0047075b-MAL-ED          PERU                           Q2                1        6     236
Birth       ki0047075b-MAL-ED          PERU                           Q3                0       11     236
Birth       ki0047075b-MAL-ED          PERU                           Q3                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Q4                0       85     224
6 months    ki0047075b-MAL-ED          PERU                           Q4                1       22     224
6 months    ki0047075b-MAL-ED          PERU                           Q1                0       32     224
6 months    ki0047075b-MAL-ED          PERU                           Q1                1       12     224
6 months    ki0047075b-MAL-ED          PERU                           Q2                0       51     224
6 months    ki0047075b-MAL-ED          PERU                           Q2                1       11     224
6 months    ki0047075b-MAL-ED          PERU                           Q3                0       10     224
6 months    ki0047075b-MAL-ED          PERU                           Q3                1        1     224
24 months   ki0047075b-MAL-ED          PERU                           Q4                0       47     164
24 months   ki0047075b-MAL-ED          PERU                           Q4                1       30     164
24 months   ki0047075b-MAL-ED          PERU                           Q1                0       18     164
24 months   ki0047075b-MAL-ED          PERU                           Q1                1       14     164
24 months   ki0047075b-MAL-ED          PERU                           Q2                0       32     164
24 months   ki0047075b-MAL-ED          PERU                           Q2                1       16     164
24 months   ki0047075b-MAL-ED          PERU                           Q3                0        4     164
24 months   ki0047075b-MAL-ED          PERU                           Q3                1        3     164
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                1        5      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                0       15      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                0       22      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                0       16      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                1        3      91
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                0       29      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                1        4      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                0       17      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                1        1      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                0       20      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                1        5      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                0       13      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                1        3      92
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                1       11      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                0       13      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1                1        6      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                0       15      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2                1        8      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                0        6      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3                1        9      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                0        3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                1        0     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                0       18     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                1        2     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                0       11     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                1        5     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                0       54     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                1        8     101
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                0        5     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                1        3     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                0       33     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                1        9     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                0       22     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                1       10     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                0       96     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                1       23     201
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                0        1     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                1        5     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                0        9     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                1       28     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                0        7     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                1       19     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                0       37     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                1       71     177
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                0      273    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4                1       75    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                0      186    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1                1      112    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                0      232    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2                1      105    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                0      264    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3                1       86    1333
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q4                0       31     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q4                1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q1                0       29     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q1                1       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q2                0       35     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q2                1       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q3                0       46     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q3                1       15     187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                0       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                0       82     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                1       67     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                0       44     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                1       43     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                0       77     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                1       48     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                0       13     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                1        3     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                0      204     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                1       57     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                0      205     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                1       26     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                0       67     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                1        8     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                0       17     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                1        0     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                0      144     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                1      113     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                0      163     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                1       65     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                0       63     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                1       12     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4                0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1                0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1                1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2                0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2                1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3                0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3                1        2      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                0      162     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                1       31     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                0      123     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                1       40     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                0      139     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                1       45     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                0      141     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                1       34     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                0      131     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                1       22     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                0       63     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                1       39     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                0       87     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                1       50     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                0      101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                1       21     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                0      164    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4                1       14    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                0       10    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1                1        0    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                0     1576    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                1      176    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                0       73    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3                1        5    2018
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2                1        1       6
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                0      116     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4                1       20     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                0      183     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1                1       60     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                0       68     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2                1       23     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                0       76     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3                1       16     562
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                0       76     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4                1       40     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                0      119     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1                1      102     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                0       34     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2                1       40     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                0       46     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3                1       41     498
Birth       ki1119695-PROBIT           BELARUS                        Q4                0     2055   13416
Birth       ki1119695-PROBIT           BELARUS                        Q4                1        3   13416
Birth       ki1119695-PROBIT           BELARUS                        Q1                0       23   13416
Birth       ki1119695-PROBIT           BELARUS                        Q1                1        0   13416
Birth       ki1119695-PROBIT           BELARUS                        Q2                0      293   13416
Birth       ki1119695-PROBIT           BELARUS                        Q2                1        2   13416
Birth       ki1119695-PROBIT           BELARUS                        Q3                0    11014   13416
Birth       ki1119695-PROBIT           BELARUS                        Q3                1       26   13416
6 months    ki1119695-PROBIT           BELARUS                        Q4                0     2413   15211
6 months    ki1119695-PROBIT           BELARUS                        Q4                1      100   15211
6 months    ki1119695-PROBIT           BELARUS                        Q1                0       18   15211
6 months    ki1119695-PROBIT           BELARUS                        Q1                1        5   15211
6 months    ki1119695-PROBIT           BELARUS                        Q2                0      317   15211
6 months    ki1119695-PROBIT           BELARUS                        Q2                1       23   15211
6 months    ki1119695-PROBIT           BELARUS                        Q3                0    11530   15211
6 months    ki1119695-PROBIT           BELARUS                        Q3                1      805   15211
24 months   ki1119695-PROBIT           BELARUS                        Q4                0      585    3913
24 months   ki1119695-PROBIT           BELARUS                        Q4                1       42    3913
24 months   ki1119695-PROBIT           BELARUS                        Q1                0        1    3913
24 months   ki1119695-PROBIT           BELARUS                        Q1                1        0    3913
24 months   ki1119695-PROBIT           BELARUS                        Q2                0       64    3913
24 months   ki1119695-PROBIT           BELARUS                        Q2                1        6    3913
24 months   ki1119695-PROBIT           BELARUS                        Q3                0     2932    3913
24 months   ki1119695-PROBIT           BELARUS                        Q3                1      283    3913
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4                0    10338   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4                1     1166   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1                0       74   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1                1        8   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2                0       84   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2                1       13   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3                0     1578   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3                1      199   13460
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                0     5776    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4                1     1076    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                0       46    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1                1       11    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                0       52    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2                1       12    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                0      862    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3                1      228    8063
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                0      132     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4                1      212     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                0        1     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1                1        8     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                0        0     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2                1        5     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                0       24     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3                1       52     434
6 months    ki1135781-COHORTS          GUATEMALA                      Q4                0        5     904
6 months    ki1135781-COHORTS          GUATEMALA                      Q4                1        1     904
6 months    ki1135781-COHORTS          GUATEMALA                      Q1                0      438     904
6 months    ki1135781-COHORTS          GUATEMALA                      Q1                1      301     904
6 months    ki1135781-COHORTS          GUATEMALA                      Q2                0       92     904
6 months    ki1135781-COHORTS          GUATEMALA                      Q2                1       65     904
6 months    ki1135781-COHORTS          GUATEMALA                      Q3                0        2     904
6 months    ki1135781-COHORTS          GUATEMALA                      Q3                1        0     904
24 months   ki1135781-COHORTS          GUATEMALA                      Q4                0        2     995
24 months   ki1135781-COHORTS          GUATEMALA                      Q4                1        4     995
24 months   ki1135781-COHORTS          GUATEMALA                      Q1                0      176     995
24 months   ki1135781-COHORTS          GUATEMALA                      Q1                1      642     995
24 months   ki1135781-COHORTS          GUATEMALA                      Q2                0       33     995
24 months   ki1135781-COHORTS          GUATEMALA                      Q2                1      136     995
24 months   ki1135781-COHORTS          GUATEMALA                      Q3                0        0     995
24 months   ki1135781-COHORTS          GUATEMALA                      Q3                1        2     995
Birth       ki1135781-COHORTS          GUATEMALA                      Q4                0        5     804
Birth       ki1135781-COHORTS          GUATEMALA                      Q4                1        0     804
Birth       ki1135781-COHORTS          GUATEMALA                      Q1                0      610     804
Birth       ki1135781-COHORTS          GUATEMALA                      Q1                1       39     804
Birth       ki1135781-COHORTS          GUATEMALA                      Q2                0      137     804
Birth       ki1135781-COHORTS          GUATEMALA                      Q2                1        9     804
Birth       ki1135781-COHORTS          GUATEMALA                      Q3                0        4     804
Birth       ki1135781-COHORTS          GUATEMALA                      Q3                1        0     804
Birth       ki1135781-COHORTS          INDIA                          Q4                0      348    1354
Birth       ki1135781-COHORTS          INDIA                          Q4                1       32    1354
Birth       ki1135781-COHORTS          INDIA                          Q1                0      220    1354
Birth       ki1135781-COHORTS          INDIA                          Q1                1       22    1354
Birth       ki1135781-COHORTS          INDIA                          Q2                0      172    1354
Birth       ki1135781-COHORTS          INDIA                          Q2                1       25    1354
Birth       ki1135781-COHORTS          INDIA                          Q3                0      485    1354
Birth       ki1135781-COHORTS          INDIA                          Q3                1       50    1354
6 months    ki1135781-COHORTS          INDIA                          Q4                0      356    1385
6 months    ki1135781-COHORTS          INDIA                          Q4                1       36    1385
6 months    ki1135781-COHORTS          INDIA                          Q1                0      173    1385
6 months    ki1135781-COHORTS          INDIA                          Q1                1       74    1385
6 months    ki1135781-COHORTS          INDIA                          Q2                0      161    1385
6 months    ki1135781-COHORTS          INDIA                          Q2                1       42    1385
6 months    ki1135781-COHORTS          INDIA                          Q3                0      455    1385
6 months    ki1135781-COHORTS          INDIA                          Q3                1       88    1385
24 months   ki1135781-COHORTS          INDIA                          Q4                0      286    1380
24 months   ki1135781-COHORTS          INDIA                          Q4                1      102    1380
24 months   ki1135781-COHORTS          INDIA                          Q1                0       79    1380
24 months   ki1135781-COHORTS          INDIA                          Q1                1      164    1380
24 months   ki1135781-COHORTS          INDIA                          Q2                0       84    1380
24 months   ki1135781-COHORTS          INDIA                          Q2                1      123    1380
24 months   ki1135781-COHORTS          INDIA                          Q3                0      295    1380
24 months   ki1135781-COHORTS          INDIA                          Q3                1      247    1380
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4                0      802    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4                1       28    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1                0      567    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1                1       56    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2                0      191    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2                1       13    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3                0     1140    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3                1       76    2873
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                0      609    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4                1      106    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                0      407    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1                1      160    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                0      137    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2                1       42    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                0      869    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3                1      234    2564
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                0      359    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4                1      281    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                0      118    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1                1      401    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                0       48    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2                1      125    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                0      351    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3                1      631    2314
6 months    ki1148112-LCNI-5           MALAWI                         Q4                0       43     812
6 months    ki1148112-LCNI-5           MALAWI                         Q4                1       14     812
6 months    ki1148112-LCNI-5           MALAWI                         Q1                0      227     812
6 months    ki1148112-LCNI-5           MALAWI                         Q1                1      145     812
6 months    ki1148112-LCNI-5           MALAWI                         Q2                0      161     812
6 months    ki1148112-LCNI-5           MALAWI                         Q2                1       96     812
6 months    ki1148112-LCNI-5           MALAWI                         Q3                0       86     812
6 months    ki1148112-LCNI-5           MALAWI                         Q3                1       40     812
24 months   ki1148112-LCNI-5           MALAWI                         Q4                0       27     571
24 months   ki1148112-LCNI-5           MALAWI                         Q4                1       14     571
24 months   ki1148112-LCNI-5           MALAWI                         Q1                0      157     571
24 months   ki1148112-LCNI-5           MALAWI                         Q1                1      111     571
24 months   ki1148112-LCNI-5           MALAWI                         Q2                0       91     571
24 months   ki1148112-LCNI-5           MALAWI                         Q2                1       85     571
24 months   ki1148112-LCNI-5           MALAWI                         Q3                0       47     571
24 months   ki1148112-LCNI-5           MALAWI                         Q3                1       39     571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q4                0     1161   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q4                1      329   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q1                0     6583   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q1                1     3358   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q2                0     2353   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q2                1     1215   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q3                0     2695   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q3                1     1169   18863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                0     1650   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4                1      235   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                0     5322   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1                1     2141   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                0     2212   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2                1      786   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                0     2928   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3                1      858   16132
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                0      647    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4                1      228    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                0     1802    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1                1     2204    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                0      757    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2                1      783    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                0     1035    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3                1      837    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                0       19    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                1        8    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                0     1223    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                1      754    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                0      137    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                1      105    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                0      272    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                1      176    2694
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                0       30    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                1        3    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                0     1502    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                1      507    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                0      186    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                1       69    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                0      343    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                1      106    2746
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q4                0        1     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q4                1        3     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1                0      237     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1                1      100     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2                0       29     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2                1       15     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3                0       50     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3                1       16     451


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/73106eea-f988-43a4-88a9-82c3d78e0f18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73106eea-f988-43a4-88a9-82c3d78e0f18/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73106eea-f988-43a4-88a9-82c3d78e0f18/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73106eea-f988-43a4-88a9-82c3d78e0f18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1029647    0.0978307   0.1080987
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1013925    0.0963387   0.1064462
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1031212    0.0979962   0.1082461
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1029451    0.0978143   0.1080758
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.0942859    0.0787890   0.1097827
Birth       ki1135781-COHORTS          INDIA          Q1                   NA                0.0942987    0.0788074   0.1097900
Birth       ki1135781-COHORTS          INDIA          Q2                   NA                0.0945640    0.0790258   0.1101022
Birth       ki1135781-COHORTS          INDIA          Q3                   NA                0.0949634    0.0793677   0.1105591
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0593848    0.0507999   0.0679698
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0599774    0.0513069   0.0686479
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0590090    0.0504706   0.0675473
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0600342    0.0513579   0.0687104
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.3216940    0.3139217   0.3294663
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3218497    0.3140729   0.3296266
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3218275    0.3140511   0.3296039
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.3218151    0.3140393   0.3295909
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2567166    0.2144023   0.2990308
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.3481894    0.3235672   0.3728117
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.3093082    0.2610628   0.3575536
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2391545    0.1981717   0.2801373
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.2729241    0.0898699   0.4559783
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.4475815    0.3705156   0.5246474
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.4964532    0.3980818   0.5948246
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.3825662    0.3031313   0.4620010
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2046333    0.1585327   0.2507339
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2293118    0.1731305   0.2854931
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2310663    0.1749081   0.2872246
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1834697    0.1352877   0.2316516
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.1450918    0.0870865   0.2030971
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.2463655    0.1932981   0.2994328
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.2591915    0.1728650   0.3455181
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.1635530    0.0913844   0.2357216
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.0431570    0.0324898   0.0538241
6 months    ki1119695-PROBIT           BELARUS        Q1                   NA                0.0200009    0.0126415   0.0273604
6 months    ki1119695-PROBIT           BELARUS        Q2                   NA                0.0562199    0.0345024   0.0779373
6 months    ki1119695-PROBIT           BELARUS        Q3                   NA                0.0645480    0.0507601   0.0783358
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1588361    0.1504067   0.1672654
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1557446    0.1289964   0.1824928
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1565373    0.1361107   0.1769639
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.2131316    0.1940621   0.2322011
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0943282    0.0711788   0.1174776
6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.2411343    0.2030559   0.2792127
6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.1602711    0.1210111   0.1995311
6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1515620    0.1254226   0.1777015
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1862623    0.1634537   0.2090710
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.2391771    0.2102622   0.2680919
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.2385299    0.2000832   0.2769766
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.2097874    0.1884801   0.2310948
6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.1969891    0.1142314   0.2797467
6 months    ki1148112-LCNI-5           MALAWI         Q1                   NA                0.3777508    0.3302149   0.4252867
6 months    ki1148112-LCNI-5           MALAWI         Q2                   NA                0.3798046    0.3240078   0.4356014
6 months    ki1148112-LCNI-5           MALAWI         Q3                   NA                0.3007010    0.2273544   0.3740476
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1831593    0.1677715   0.1985471
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2632681    0.2532101   0.2733261
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.2507447    0.2375691   0.2639204
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.2412556    0.2291823   0.2533289
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.2958064    0.1616765   0.4299363
24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.4567301    0.2689707   0.6444894
24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4804543    0.3351370   0.6257716
24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4736331    0.2999716   0.6472946
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.2157461    0.0708152   0.3606769
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.1089949   -0.0518962   0.2698859
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.1646391   -0.0049113   0.3341895
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.2330177    0.0436729   0.4223624
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2016933    0.1564458   0.2469408
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.4261337    0.3544953   0.4977721
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3797667    0.3158819   0.4436516
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.2003206    0.1471814   0.2534598
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3525078    0.2695690   0.4354466
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4678980    0.4044372   0.5313587
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.5277044    0.4211432   0.6342656
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.4737647    0.3745870   0.5729424
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.2874310    0.2504332   0.3244289
24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.6332849    0.5919070   0.6746628
24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.5426734    0.4921402   0.5932065
24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.4506531    0.4140315   0.4872746
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.5005661    0.4680950   0.5330372
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7479192    0.7170729   0.7787655
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.7307263    0.6862745   0.7751781
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6427446    0.6159556   0.6695335
24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.3507407    0.2172650   0.4842164
24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.4068248    0.3507707   0.4628789
24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.4891236    0.4190176   0.5592296
24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.4561099    0.3572038   0.5550161
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.3616378    0.3391379   0.3841378
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.5211499    0.5042536   0.5380462
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.5010546    0.4793614   0.5227477
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4705478    0.4497926   0.4913029
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.2424900    0.1288297   0.3561503
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.3824451    0.3562882   0.4086020
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.3941125    0.3359525   0.4522725
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.3817573    0.3343790   0.4291357


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1029718   0.0978372   0.1081063
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.0952733   0.0796294   0.1109171
Birth       ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0602158   0.0515157   0.0689159
Birth       kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.3218470   0.3140700   0.3296240
6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2117438   0.1779368   0.2455507
6 months    ki1119695-PROBIT           BELARUS        NA                   NA                0.0613372   0.0479409   0.0747335
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1645789   0.1564849   0.1726730
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1732852   0.1533446   0.1932258
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2113885   0.1955816   0.2271953
6 months    ki1148112-LCNI-5           MALAWI         NA                   NA                0.3633005   0.3301997   0.3964012
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2491941   0.2409375   0.2574508
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4166667   0.3322428   0.5010905
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3736264   0.2736811   0.4735717
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4477912   0.4040733   0.4915091
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.4608696   0.4345607   0.4871784
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6214347   0.6016683   0.6412012
24 months   ki1148112-LCNI-5           MALAWI         NA                   NA                0.4360771   0.3953670   0.4767872
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.4886048   0.4753517   0.5018580
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.3871566   0.3638029   0.4105104


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                0.9847306   0.9841638   0.9852978
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.0015197   1.0005016   1.0025390
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                0.9998096   0.9992658   1.0003536
Birth       ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA          Q1                   Q4                1.0001365   0.9941910   1.0061175
Birth       ki1135781-COHORTS          INDIA          Q2                   Q4                1.0029501   0.9997025   1.0062082
Birth       ki1135781-COHORTS          INDIA          Q3                   Q4                1.0071858   1.0020186   1.0123796
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.0099781   1.0076754   1.0122862
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                0.9936705   0.9903872   0.9969648
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.0109344   1.0086037   1.0132706
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.0004841   1.0003897   1.0005785
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.0004150   1.0003503   1.0004798
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.0003764   1.0003090   1.0004439
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.3563187   1.1378680   1.6167080
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.2048627   0.9312016   1.5589471
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                0.9315899   0.7133684   1.2165659
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.6399487   0.8232230   3.2669543
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.8190158   0.9066750   3.6493987
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.4017311   0.6981789   2.8142504
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.1205984   0.8156450   1.5395679
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.1291726   0.8212890   1.5524751
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                0.8965777   0.6450880   1.2461113
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.6979972   1.0780829   2.6743718
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.7863967   1.0621302   3.0045407
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.1272382   0.6216003   2.0441850
6 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                0.4634462   0.3055297   0.7029835
6 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                1.3026839   0.8758699   1.9374857
6 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                1.4956563   1.2480534   1.7923815
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                0.9805371   0.8211882   1.1708070
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                0.9855273   0.8585440   1.1312920
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.3418337   1.2137932   1.4833810
6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                2.5563334   1.9260098   3.3929424
6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                1.6990793   1.2146816   2.3766478
6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.6067522   1.2063714   2.1400149
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.2840871   1.0879402   1.5155976
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.2806127   1.0518334   1.5591527
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.1263009   0.9681393   1.3103009
6 months    ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.9176234   1.2390132   2.9679099
6 months    ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.9280494   1.2372598   3.0045221
6 months    ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.5264858   0.9407132   2.4770132
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.4373723   1.3196157   1.5656370
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.3689982   1.2482959   1.5013715
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.3171902   1.1999826   1.4458461
24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                1.5440167   0.8512216   2.8006662
24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.6242186   0.9523858   2.7699762
24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.6011590   0.9033826   2.8379006
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                0.5051999   0.0993169   2.5698233
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                0.7631151   0.2231173   2.6100384
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.0800552   0.3738938   3.1199218
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                2.1127808   1.6148066   2.7643203
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.8828922   1.4445532   2.4542420
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                0.9931943   0.7139948   1.3815715
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.3273406   1.0123132   1.7404030
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.4970005   1.0993790   2.0384330
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3439835   0.9825667   1.8383400
24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.2032584   1.9136757   2.5366616
24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                1.8880124   1.6174773   2.2037967
24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.5678650   1.3527490   1.8171891
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.4941468   1.3858669   1.6108868
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.4597998   1.3376174   1.5931428
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.2840354   1.1918732   1.3833240
24 months   ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.1599018   0.7770707   1.7313382
24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.3945446   0.9314286   2.0879265
24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.3004191   0.8417560   2.0090024
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.4410823   1.3483601   1.5401808
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.3855147   1.2872996   1.4912232
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.3011574   1.2090823   1.4002443
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.5771583   0.9819538   2.5331420
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.6252734   0.9937052   2.6582466
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.5743221   0.9667896   2.5636293


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0000071   -0.0000019   0.0000160
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.0009874    0.0004671   0.0015077
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0008310    0.0006682   0.0009938
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.0001530    0.0001287   0.0001773
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.0268543   -0.0150683   0.0687770
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.1560233   -0.0229747   0.3350213
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.0051569   -0.0337926   0.0441064
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.0666520    0.0132818   0.1200221
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.0181802    0.0097419   0.0266186
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0057429    0.0023505   0.0091353
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0789570    0.0564462   0.1014678
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0251261    0.0054565   0.0447957
6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.1663114    0.0846394   0.2479835
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.0660349    0.0516722   0.0803975
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.1208602    0.0093809   0.2323396
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1578803    0.0381682   0.2775924
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.0551160    0.0137311   0.0965010
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.0952833    0.0217037   0.1688629
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.1734385    0.1409686   0.2059084
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1208686    0.0943863   0.1473510
24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.0853363   -0.0430325   0.2137052
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1269670    0.1049536   0.1489804
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.1446667    0.0303481   0.2589852


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0000689   -0.0000179   0.0001557
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.0103639    0.0051362   0.0155640
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0137998    0.0118989   0.0156971
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.0004754    0.0004014   0.0005494
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.0947006   -0.0646757   0.2302191
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.3637353   -0.2254379   0.6696424
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.0245812   -0.1794467   0.1933151
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3147766    0.0155170   0.5230683
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.2963982    0.1760981   0.3991329
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0348944    0.0141782   0.0551753
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.4556477    0.3233058   0.5621074
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1188623    0.0221094   0.2060424
6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.4577793    0.1840770   0.6396679
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2649936    0.2058270   0.3197523
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.2900646   -0.0371651   0.5140520
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.4225620   -0.0131687   0.6708992
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2146185    0.0457121   0.3536290
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.2127852    0.0302191   0.3609823
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.3763289    0.3034064   0.4416175
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1944993    0.1504987   0.2362209
24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.1956910   -0.1597808   0.4422110
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2598562    0.2148137   0.3023149
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.3736644   -0.0002418   0.6077986
