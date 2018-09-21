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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi                   wasted   n_cell       n
----------  -------------------------  -----------------------------  --------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      123     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       26     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       21     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        7     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese         0       50     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese         1        6     233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight               0       66     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        1     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        8     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        1     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese         0       96     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese         1        4     176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight               0       96     195
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight               1       19     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                 0       29     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight                 1        9     195
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese         0       38     195
Birth       ki0047075b-MAL-ED          INDIA                          Overweight or Obese         1        4     195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight               0       83     167
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight               1       12     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese         0       64     167
Birth       ki0047075b-MAL-ED          NEPAL                          Overweight or Obese         1        8     167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight               0      142     269
Birth       ki0047075b-MAL-ED          PERU                           Normal weight               1        3     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight                 0        5     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight                 1        0     269
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese         0      116     269
Birth       ki0047075b-MAL-ED          PERU                           Overweight or Obese         1        3     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0       88     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        6     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        5     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese         0      120     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese         1        7     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0       75     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        2     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0        7     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        0     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         0       32     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         1        0     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0       69     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1        3     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0       31     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1        2     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese         0        4     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese         1        1     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0       16      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese         0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese         1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0       11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese         0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese         1        1      23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight               0     6369   13664
Birth       ki1119695-PROBIT           BELARUS                        Normal weight               1     1742   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight                 0      386   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight                 1      135   13664
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese         0     4056   13664
Birth       ki1119695-PROBIT           BELARUS                        Overweight or Obese         1      976   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     5184    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      981    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      360    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       96    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese         0     2092    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese         1      316    9029
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      150     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       27     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese         0       56     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese         1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese         0      117     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese         1        1     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               0      128     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight               1        9     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight                 1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese         0       48     235
6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese         1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               0      129     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight               1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese         0      103     236
6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese         1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight               0      149     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight               1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                 0        5     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight                 1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese         0      118     272
6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese         1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0       94     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese         0      141     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese         1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      169     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               0      768    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight               1       86    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 0      253    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                 1       51    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese         0       58    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese         1        9    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      353     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       20     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       81     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       12     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese         0       68     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese         1        2     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      358     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       12     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       93     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1        8     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese         0      106     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese         1        4     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      440     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       13     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       61     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese         0      193     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese         1        2     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0      988    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       46    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       30    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        3    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         0      879    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         1       36    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight               0     7668   13024
6 months    ki1119695-PROBIT           BELARUS                        Normal weight               1       62   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight                 0      500   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight                 1        5   13024
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese         0     4753   13024
6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese         1       36   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0     4680    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1      156    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0      336    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1       25    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese         0     1848    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese         1       42    7087
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               0      638     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight               1       13     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 0      144     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight                 1        1     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese         0       40     836
6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese         1        0     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               0      120     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight               1       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 0       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                 1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese         0       49     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese         1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight               1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 0        6     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese         0       98     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese         1        2     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               0      118     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight               1       15     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 0       38     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight                 1        8     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese         0       43     226
24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese         1        4     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               0      124     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight               1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese         0       99     228
24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese         1        2     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight               0      104     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight               1        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                 0        3     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight                 1        1     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese         0       91     201
24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese         1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               0       92     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight               1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 0        7     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese         0      134     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese         1        1     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               0      146     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight               1        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 0       10     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                 1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         0       54     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         1        1     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               0      259     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight               1       32     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 0       59     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                 1       21     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese         0       57     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese         1        0     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               0      331     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight               1       33     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 0       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                 1       25     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese         0      106     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese         1        7     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               0      292     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight               1       31     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 0       39     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                 1        4     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese         0      138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese         1       10     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight               0     2288    3941
24 months   ki1119695-PROBIT           BELARUS                        Normal weight               1       25    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight                 0      136    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight                 1        5    3941
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese         0     1474    3941
24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese         1       13    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               0      218     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight               1       44     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 0       17     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                 1        8     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese         0       60     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese         1       12     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               0      431     561
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight               1        5     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 0       89     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight                 1        5     561
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese         0       31     561
24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese         1        0     561


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/6a46796c-7ff4-4475-8f3b-7423e9220bae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a46796c-7ff4-4475-8f3b-7423e9220bae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a46796c-7ff4-4475-8f3b-7423e9220bae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a46796c-7ff4-4475-8f3b-7423e9220bae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level    baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  --------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight         NA                0.1744966    0.1134247   0.2355686
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight           NA                0.2500000    0.0892675   0.4107325
Birth       ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   NA                0.1071429    0.0259607   0.1883250
Birth       ki1119695-PROBIT          BELARUS      Normal weight         NA                0.2147701    0.1494934   0.2800467
Birth       ki1119695-PROBIT          BELARUS      Underweight           NA                0.2591171    0.1683674   0.3498668
Birth       ki1119695-PROBIT          BELARUS      Overweight or Obese   NA                0.1939587    0.1273787   0.2605386
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.1591241    0.1499926   0.1682555
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.2105263    0.1731056   0.2479470
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.1312292    0.1177423   0.1447161
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight         NA                0.1007026    0.0762430   0.1251622
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight           NA                0.1677632    0.1105003   0.2250260
6 months    ki1000304b-SAS-CompFeed   INDIA        Overweight or Obese   NA                0.1343284    0.0015521   0.2671046
6 months    ki1119695-PROBIT          BELARUS      Normal weight         NA                0.0080207    0.0053399   0.0107015
6 months    ki1119695-PROBIT          BELARUS      Underweight           NA                0.0099010   -0.0006297   0.0204317
6 months    ki1119695-PROBIT          BELARUS      Overweight or Obese   NA                0.0075172    0.0052547   0.0097798
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.0322581    0.0272780   0.0372381
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.0692521    0.0430607   0.0954434
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.0222222    0.0155762   0.0288682
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight         NA                0.0906593    0.0611375   0.1201812
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight           NA                0.2500000    0.1650574   0.3349426
24 months   ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   NA                0.0619469    0.0174624   0.1064314
24 months   ki1119695-PROBIT          BELARUS      Normal weight         NA                0.0108085    0.0054718   0.0161451
24 months   ki1119695-PROBIT          BELARUS      Underweight           NA                0.0354610    0.0131895   0.0577325
24 months   ki1119695-PROBIT          BELARUS      Overweight or Obese   NA                0.0087424   -0.0050408   0.0225257
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         NA                0.1679389    0.1226120   0.2132659
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight           NA                0.3200000    0.1368895   0.5031105
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   NA                0.1666667    0.0804639   0.2528695


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1673820   0.1193444   0.2154196
Birth       ki1119695-PROBIT          BELARUS      NA                   NA                0.2087968   0.1432289   0.2743648
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1542807   0.1468295   0.1617318
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1191837   0.0947144   0.1436529
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0079085   0.0059160   0.0099010
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0314661   0.0274014   0.0355307
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0109109   0.0040853   0.0177366
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1782730   0.1386257   0.2179202


### Parameter: RR


agecat      studyid                   country      intervention_level    baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  --------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight           Normal weight     1.4326923   0.6890349   2.9789598
Birth       ki0047075b-MAL-ED         BANGLADESH   Overweight or Obese   Normal weight     0.6140110   0.2665031   1.4146533
Birth       ki1119695-PROBIT          BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT          BELARUS      Underweight           Normal weight     1.2064860   0.9778584   1.4885678
Birth       ki1119695-PROBIT          BELARUS      Overweight or Obese   Normal weight     0.9030992   0.8283196   0.9846297
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     1.3230324   1.0976200   1.5947364
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.8246975   0.7331184   0.9277164
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight           Normal weight     1.6659272   1.1556173   2.4015851
6 months    ki1000304b-SAS-CompFeed   INDIA        Overweight or Obese   Normal weight     1.3339118   0.4953386   3.5921303
6 months    ki1119695-PROBIT          BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT          BELARUS      Underweight           Normal weight     1.2344299   0.3846571   3.9614953
6 months    ki1119695-PROBIT          BELARUS      Overweight or Obese   Normal weight     0.9372285   0.6460018   1.3597443
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     2.1468144   1.4268746   3.2300050
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.6888889   0.4920170   0.9645356
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight           Normal weight     2.7575758   1.7224250   4.4148360
24 months   ki1017093b-PROVIDE        BANGLADESH   Overweight or Obese   Normal weight     0.6832931   0.3105776   1.5032939
24 months   ki1119695-PROBIT          BELARUS      Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT          BELARUS      Underweight           Normal weight     3.2808511   1.6636537   6.4700868
24 months   ki1119695-PROBIT          BELARUS      Overweight or Obese   Normal weight     0.8088500   0.1723322   3.7963787
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight           Normal weight     1.9054545   1.0121143   3.5872994
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Overweight or Obese   Normal weight     0.9924242   0.5537686   1.7785512


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0071147   -0.0427112   0.0284819
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0059732   -0.0123556   0.0004092
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0048434   -0.0098469   0.0001600
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0184811    0.0077445   0.0292177
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0001122   -0.0013735   0.0011490
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0007920   -0.0035261   0.0019421
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0219923    0.0010500   0.0429346
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0001025   -0.0051318   0.0053368
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0103340   -0.0147183   0.0353864


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0425056   -0.2781677   0.1497063
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0286078   -0.0617942   0.0035413
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0313937   -0.0643167   0.0005110
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.1550640    0.0615562   0.2392546
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                -0.0141901   -0.1855851   0.1324271
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                -0.0251700   -0.1157877   0.0580883
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.1952240   -0.0084577   0.3577674
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0093908   -0.6017331   0.3873470
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0579676   -0.0931772   0.1882148
