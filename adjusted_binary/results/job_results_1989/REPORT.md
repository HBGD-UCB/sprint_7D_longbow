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
      W: []
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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/b3b6124d-d40a-48e5-be41-92c7abcbc47f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3b6124d-d40a-48e5-be41-92c7abcbc47f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3b6124d-d40a-48e5-be41-92c7abcbc47f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3b6124d-d40a-48e5-be41-92c7abcbc47f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1013561    0.0958409   0.1068712
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.0975610    0.0333360   0.1617860
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1340206    0.0662225   0.2018188
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1119865    0.0973238   0.1266492
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.0842105    0.0562788   0.1121423
Birth       ki1135781-COHORTS          INDIA          Q1                   NA                0.0909091    0.0546758   0.1271424
Birth       ki1135781-COHORTS          INDIA          Q2                   NA                0.1269036    0.0804046   0.1734025
Birth       ki1135781-COHORTS          INDIA          Q3                   NA                0.0934579    0.0687843   0.1181316
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0337349    0.0214500   0.0460199
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0898876    0.0674242   0.1123511
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0637255    0.0302006   0.0972503
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0625000    0.0488924   0.0761076
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2208054    0.1973568   0.2442539
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.3377930    0.3277891   0.3477969
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.3405269    0.3235513   0.3575025
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.3025362    0.2865720   0.3185005
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2155172    0.1572413   0.2737932
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   NA                0.3758389    0.3373352   0.4143427
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   NA                0.3115727    0.2577831   0.3653623
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   NA                0.2457143    0.1878494   0.3035792
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.2631579    0.0648962   0.4614196
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   NA                0.4496644    0.3696837   0.5296451
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   NA                0.4942529    0.3890562   0.5994495
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   NA                0.3840000    0.2986269   0.4693731
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1606218    0.1087830   0.2124605
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2453988    0.1792909   0.3115066
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2445652    0.1824155   0.3067149
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1942857    0.1356255   0.2529460
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.1470588    0.0874829   0.2066347
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.2469136    0.1926477   0.3011794
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.2527473    0.1633774   0.3421171
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.1739130    0.0963920   0.2514341
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.0397931    0.0287446   0.0508416
6 months    ki1119695-PROBIT           BELARUS        Q1                   NA                0.2173913   -0.0203765   0.4551592
6 months    ki1119695-PROBIT           BELARUS        Q2                   NA                0.0676471    0.0352580   0.1000361
6 months    ki1119695-PROBIT           BELARUS        Q3                   NA                0.0652615    0.0511239   0.0793990
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1570344    0.1484192   0.1656497
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1929825    0.0905263   0.2954386
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1875000    0.0918693   0.2831307
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.2091743    0.1850277   0.2333209
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0918367    0.0632377   0.1204358
6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.2995951    0.2424475   0.3567428
6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.2068966    0.1511525   0.2626406
6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1620626    0.1310562   0.1930691
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1482517    0.1222001   0.1743034
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.2821869    0.2451346   0.3192393
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.2346369    0.1725445   0.2967292
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.2121487    0.1880170   0.2362804
6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.2456140    0.1337986   0.3574294
6 months    ki1148112-LCNI-5           MALAWI         Q1                   NA                0.3897849    0.3401945   0.4393754
6 months    ki1148112-LCNI-5           MALAWI         Q2                   NA                0.3735409    0.3143623   0.4327194
6 months    ki1148112-LCNI-5           MALAWI         Q3                   NA                0.3174603    0.2361325   0.3987881
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1246684    0.1079335   0.1414034
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.2868820    0.2755017   0.2982622
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.2621748    0.2461128   0.2782367
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.2266244    0.2130193   0.2402295
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.3095238    0.1691791   0.4498686
24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.4500000    0.2311372   0.6688628
24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4634146    0.3101959   0.6166333
24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4827586    0.3001959   0.6653213
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.3235294    0.1654085   0.4816504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.3157895    0.1056225   0.5259564
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3478261    0.1521010   0.5435511
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.6000000    0.3507085   0.8492915
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1437908    0.0881388   0.1994429
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3823529    0.2879527   0.4767532
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3649635    0.2842707   0.4456563
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.1721311    0.1050807   0.2391816
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3448276    0.2582442   0.4314109
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4615385    0.3957470   0.5273300
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.5405405    0.4268809   0.6542002
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.4712644    0.3662675   0.5762613
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.2628866    0.2190698   0.3067034
24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.6748971    0.6159813   0.7338129
24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.5942029    0.5272850   0.6611208
24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.4557196    0.4137759   0.4976632
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4390625    0.4006058   0.4775192
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7726397    0.7365732   0.8087062
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.7225434    0.6558092   0.7892775
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6425662    0.6125854   0.6725470
24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.3414634    0.1961858   0.4867411
24 months   ki1148112-LCNI-5           MALAWI         Q1                   NA                0.4141791    0.3551539   0.4732044
24 months   ki1148112-LCNI-5           MALAWI         Q2                   NA                0.4829545    0.4090638   0.5568453
24 months   ki1148112-LCNI-5           MALAWI         Q3                   NA                0.4534884    0.3481802   0.5587966
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2605714    0.2268095   0.2943334
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   NA                0.5501747    0.5316733   0.5686762
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   NA                0.5084416    0.4819684   0.5349148
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   NA                0.4471154    0.4207063   0.4735244
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.2962963    0.0960773   0.4965153
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   NA                0.3813859    0.3545572   0.4082147
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   NA                0.4338843    0.3577930   0.5099756
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   NA                0.3928571    0.3373225   0.4483918


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                0.9625570   0.4972246    1.863375
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.3222755   0.7949766    2.199326
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1048822   0.9588214    1.273193
Birth       ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA          Q1                   Q4                1.0795455   0.6427563    1.813157
Birth       ki1135781-COHORTS          INDIA          Q2                   Q4                1.5069797   0.9193073    2.470325
Birth       ki1135781-COHORTS          INDIA          Q3                   Q4                1.1098131   0.7263378    1.695747
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                2.6645265   1.7132011    4.144114
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.8890056   0.9962332    3.581834
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.8526786   1.2120945    2.831807
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                1.5298223   1.3687579    1.709839
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.5422039   1.3751555    1.729545
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.3701489   1.2164030    1.543327
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Q1                   Q4                1.7438926   1.3091899    2.322934
6 months    ki1000304b-SAS-CompFeed    INDIA          Q2                   Q4                1.4456973   1.0339661    2.021382
6 months    ki1000304b-SAS-CompFeed    INDIA          Q3                   Q4                1.1401143   0.7394564    1.757860
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q1                   Q4                1.7087248   0.7879200    3.705631
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q2                   Q4                1.8781609   0.8584826    4.108981
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q3                   Q4                1.4592000   0.6652279    3.200805
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.5278053   1.0034449    2.326176
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.5226157   1.0096987    2.296089
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.2095853   0.7774990    1.881798
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.6790123   1.0589888    2.662051
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.7186813   1.0038403    2.942565
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.1826087   0.6475150    2.159893
6 months    ki1119695-PROBIT           BELARUS        Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS        Q1                   Q4                5.4630426   1.7989136   16.590477
6 months    ki1119695-PROBIT           BELARUS        Q2                   Q4                1.6999703   1.0811370    2.673018
6 months    ki1119695-PROBIT           BELARUS        Q3                   Q4                1.6400200   1.3279435    2.025437
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.2289180   0.7206497    2.095664
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1940056   0.7148669    1.994286
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.3320282   1.1722106    1.513635
6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                3.2622580   2.2642207    4.700216
6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                2.2528734   1.4924482    3.400747
6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.7646817   1.2244369    2.543293
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.9034308   1.5285117    2.370312
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5826921   1.1519598    2.174481
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4310029   1.1607278    1.764212
6 months    ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.5869816   0.9892009    2.546005
6 months    ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.5208449   0.9391680    2.462785
6 months    ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.2925170   0.7666014    2.179229
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.3011595   2.0009391    2.646425
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                2.1029765   1.8205850    2.429170
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.8178170   1.5753424    2.097613
24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                1.4538462   0.7477230    2.826807
24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.4971857   0.8542096    2.624140
24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.5596817   0.8642078    2.814840
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                0.9760766   0.4274484    2.228867
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.0750988   0.5102215    2.265364
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.8545455   0.9764444    3.522309
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                2.6590909   1.6801905    4.208311
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                2.5381553   1.6253158    3.963680
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.1970939   0.6912728    2.073036
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.3384615   1.0027912    1.786493
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.5675676   1.1297748    2.175007
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3666667   0.9769568    1.911833
24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.5672557   2.1269412    3.098723
24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                2.2603012   1.8484406    2.763931
24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.7335215   1.4329792    2.097097
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7597488   1.5934801    1.943366
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.6456503   1.4489631    1.869037
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4634960   1.3252321    1.616185
24 months   ki1148112-LCNI-5           MALAWI         Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI         Q1                   Q4                1.2129531   0.7744272    1.899798
24 months   ki1148112-LCNI-5           MALAWI         Q2                   Q4                1.4143669   0.8999218    2.222897
24 months   ki1148112-LCNI-5           MALAWI         Q3                   Q4                1.3280731   0.8179329    2.156385
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q1                   Q4                2.1114162   1.8463191    2.414576
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q2                   Q4                1.9512560   1.6991312    2.240792
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q3                   Q4                1.7159033   1.4885673    1.977958
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q1                   Q4                1.2871775   0.6518545    2.541711
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q2                   Q4                1.4643595   0.7259174    2.953984
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q3                   Q4                1.3258929   0.6610117    2.659547


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0016157   -0.0005722   0.0038037
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.0110627   -0.0131653   0.0352907
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0264809    0.0146736   0.0382881
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1010416    0.0781524   0.1239309
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.0680537    0.0132381   0.1228693
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.1657895   -0.0287863   0.3603652
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.0491684    0.0030335   0.0953034
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.0646849    0.0101470   0.1192229
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.0215441    0.0125064   0.0305818
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0075445    0.0038585   0.0112305
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0814485    0.0540159   0.1088810
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0631367    0.0396841   0.0865893
6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.1176865    0.0088607   0.2265122
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.1245257    0.1082856   0.1407658
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.1071429   -0.0123971   0.2266828
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.0500970   -0.0776070   0.1778009
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1130185    0.0612255   0.1648114
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.1029636    0.0260513   0.1798759
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.1979830    0.1588362   0.2371297
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1823722    0.1499445   0.2148000
24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.0946136   -0.0458569   0.2350842
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.2280334    0.1954177   0.2606491
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.0908603   -0.1093585   0.2910792


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0156909   -0.0057768   0.0367003
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.1161159   -0.1777657   0.3366668
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4397660    0.2187758   0.5982432
Birth       kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.3139431    0.2393766   0.3811995
6 months    ki1000304b-SAS-CompFeed    INDIA          Q4                   NA                0.2399881    0.0184242   0.4115401
6 months    ki1000304b-SAS-FoodSuppl   INDIA          Q4                   NA                0.3865031   -0.2846984   0.7070297
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.2343696   -0.0183695   0.4243839
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3054869   -0.0021242   0.5186740
6 months    ki1119695-PROBIT           BELARUS        Q4                   NA                0.3512406    0.2183681   0.4615255
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0458412    0.0232525   0.0679075
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.4700255    0.2953820   0.6013826
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.2986762    0.1801255   0.4000850
6 months    ki1148112-LCNI-5           MALAWI         Q4                   NA                0.3239370   -0.0524446   0.5657147
6 months    kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.4997136    0.4313683   0.5598444
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.2571429   -0.0934570   0.4953284
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1340830   -0.2850876   0.4165284
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.4400871    0.2065435   0.6048902
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.2299366    0.0370589   0.3841808
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.4295857    0.3380962   0.5084293
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.2934697    0.2381374   0.3447833
24 months   ki1148112-LCNI-5           MALAWI         Q4                   NA                0.2169654   -0.1817203   0.4811436
24 months   kiGH5241-JiVitA-3          BANGLADESH     Q4                   NA                0.4667031    0.3958852   0.5292194
24 months   kiGH5241-JiVitA-4          BANGLADESH     Q4                   NA                0.2346863   -0.5029701   0.6103016
